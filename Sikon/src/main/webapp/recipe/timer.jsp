<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8"/>
    <title>카운트다운 타이머</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content="심플한 카운트다운 타이머로 일의 능률을 높여 보세요!"/>
    <!--
        [외부 라이브러리]
          1. Bootstrap 4 (CSS만, 디자인)
          2. Picker.js (날짜·시간 설정 다이얼로그)
          3. EasyTimer.js (타이머)
     -->
    <link href="https://cdn.jsdelivr.net/combine/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css,npm/pickerjs@1.2.1/dist/picker.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/combine/npm/pickerjs@1.2.1/dist/picker.min.js,npm/easytimer.js@4.3.0/dist/easytimer.min.js"></script>
    <style>
      .time-picker, .values {
        background-color: #937062;
        color: #ffffff;
        text-align: center;
        font-size: 5rem;
        font-weight: bold;
        border: none;
        margin-bottom: 2rem;
        font-family: monospace; /* 고정폭 */
      }
      #ongoing-status, #completed-status, .values, #btn-group-2, #resume-btn {
        display: none;
      }
      #ongoing-status, #completed-status, #btn-group-1, #btn-group-2 {
        text-align: center;
      }
      .btn-light {
        width: 120px;
        margin-right: 10px;
        color: #937062  !important;
      }
      .picker-opened > .picker-dialog {
        top: 13rem;
      }
    </style>
  </head>
  <body style="background-color: #f7f7f7; padding-top: 6.5rem">
    <main role="main">
      <!-- 설정한 카운트다운 시간 표시 -->
      <input type="text" class="form-control time-picker vw-100" value="00:01:00">
      <!-- 카운트다운 '진행 중' 표시 -->
      <div id="ongoing-status">
        <div class="spinner-border text-light" role="status"></div>
      </div>
      <!-- 카운트다운 완료 표시 -->
      <div id="completed-status">
        <div class="spinner-grow text-light" role="status"></div>
      </div>
      <!-- 카운트다운 표시 -->
      <div class="form-control values vw-100"></div>
      <!-- 버튼 그룹 1 -->
      <div id="btn-group-1">
        <button id="set-btn" class="btn btn-light rounded-pill">
          시간 설정
        </button>
        <button id="start-btn" class="btn btn-light rounded-pill">
          시작
        </button>
      </div>
      <!-- 버튼 그룹 2 -->
      <div id="btn-group-2">
        <button id="cancel-btn" class="btn btn-light rounded-pill">
          취소
        </button>
        <button id="pause-btn" class="btn btn-light rounded-pill">
          일시 정지
        </button>
        <button id="resume-btn" class="btn btn-light rounded-pill">
          재개
        </button>
      </div>
    </main>
    <script>
      const timePicker = document.querySelector('.time-picker');
      const values = document.querySelector('.values');
      const btnGroup1 = document.querySelector('#btn-group-1');
      const setBtn = document.querySelector('#set-btn');
      const startBtn = document.querySelector('#start-btn');
      const btnGroup2 = document.querySelector('#btn-group-2');
      const cancelBtn = document.querySelector('#cancel-btn');
      const pauseBtn = document.querySelector('#pause-btn');
      const resumeBtn = document.querySelector('#resume-btn');
      const ongoingStatus = document.querySelector('#ongoing-status');
      const completedStatus = document.querySelector('#completed-status');

      // 시간 설정 다이얼로그 생성
      new Picker(timePicker, {
        format: 'HH:mm:ss', // 시:분:초
        text: {
          title: '시간을 설정하세요',
          confirm: '확인',
          cancel: '취소'
        },
      });

      // 타이머 생성
      const timer = new easytimer.Timer();

      // 타이머 이벤트 리스너 등록
      timer.addEventListener('secondsUpdated', () => {
        values.textContent = timer.getTimeValues().toString();
      });
      timer.addEventListener('started', () => {
        values.textContent = timer.getTimeValues().toString();
      });
      timer.addEventListener('reset', () => {
        values.textContent = timer.getTimeValues().toString();
      });
      timer.addEventListener('targetAchieved', () => {
        values.textContent = '완료!'; // 카운트다운 완료

        ongoingStatus.style.display = 'none';
        completedStatus.style.display = 'block';
        btnGroup2.style.display = 'none';
        btnGroup1.style.display = 'block';
      });

      // 버튼 이벤트 리스너 등록
      /**
       * ['시간 설정' 버튼]
       *   경우1. 초기 화면에서
       *   경우2. 취소 후
       *   경우3. 완료 후
       */
      setBtn.addEventListener('click', () => {
        if (completedStatus.style.display === 'block') {
          values.style.display = 'none';
          timePicker.style.display = 'block';
          completedStatus.style.display = 'none';
        }

        timePicker.click();
      });
      /**
       * [시작 버튼]
       *   경우1. 초기 화면에서
       *   경우2. 취소 후
       *   경우3. 완료 후
       */
      startBtn.addEventListener('click', () => {
        timer.start({countdown: true, startValues: {seconds: toSeconds(timePicker.value)}});

        if (completedStatus.style.display === 'block') {
          completedStatus.style.display = 'none';
        } else {
          timePicker.style.display = 'none';
          values.style.display = 'block';
        }
        ongoingStatus.style.display = 'block';
        btnGroup1.style.display = 'none';
        btnGroup2.style.display = 'block';
      });
      // 취소 버튼
      cancelBtn.addEventListener('click', () => {
        // '일시 정지 > 취소 > 시작'인 경우
        if (timer.isPaused()) {
          resumeBtn.style.display = 'none';
          pauseBtn.style.display = 'inline-block';
        }

        timer.reset();
        timer.stop();

        values.style.display = 'none';
        timePicker.style.display = 'block';
        ongoingStatus.style.display = 'none';
        btnGroup2.style.display = 'none';
        btnGroup1.style.display = 'block';
      });
      // '일시 정지' 버튼
      pauseBtn.addEventListener('click', () => {
        timer.pause();

        ongoingStatus.style.display = 'none';
        pauseBtn.style.display = 'none';
        resumeBtn.style.display = 'inline-block';
      });
      // 재개 버튼
      resumeBtn.addEventListener('click', () => {
        timer.start();

        ongoingStatus.style.display = 'block';
        resumeBtn.style.display = 'none';
        pauseBtn.style.display = 'inline-block';
      });

      // '시:분:초'를 초로 계산하고, 그 결과값을 반환한다.
      function toSeconds(hhmmss) {
        const arr = hhmmss.split(':');
        return (+arr[0]) * 60 * 60 + (+arr[1]) * 60 + (+arr[2]);
      }
    </script>
  </body>
</html>