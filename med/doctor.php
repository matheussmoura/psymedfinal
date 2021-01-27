<?php
require_once '_db.php';
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8"/>
  <title>Agendamento médico</title>

  <link type="text/css" rel="stylesheet" href="css/layout.css"/>

  <!-- DayPilot library -->
  <script src="js/daypilot/daypilot-all.min.js"></script>
</head>
<body>
<?php require_once '_header.php'; ?>

<div class="main">
  <?php require_once '_navigation.php'; ?>

  <div>

    <div class="column-left">
      <div id="nav"></div>
    </div>
    <div class="column-main">
      <div class="space">
        <select id="doctor" name="doctor">
          <?php
          foreach ($db->query('SELECT * FROM doctor ORDER BY doctor_name') as $item) {
			     echo "<option value='" . $item["doctor_id"] . "'>" . $item["doctor_name"] . "</option>";
          }
          ?>
        </select>
      </div>
      <div id="calendar"></div>
    </div>

  </div>
</div>

<script src="js/jquery-1.9.1.min.js"></script>
<script src="js/daypilot/daypilot-all.min.js"></script>

<script>

  var nav = new DayPilot.Navigator("nav");

  DayPilot.Locale.register(
  new DayPilot.Locale('en-us', 
  {
    'dayNames':["domingo","segunda-feira","terça-feira","quarta-feira","quinta-feira","sexta-feira","sábado"],
    'dayNamesShort':["D","S","T","Q","Q","S","S"],
    'monthNames':["janeiro","fevereiro","março","abril","maio","junho","julho","agosto","setembro","outubro","novembro","dezembro",""],
    'monthNamesShort':["jan","fev","mar","abr","mai","jun","jul","ago","set","out","nov","dez",""],
    'timePattern':'HH:mm',
    'datePattern':'dd/MM/yyyy',
    'dateTimePattern':'dd/MM/yyyy HH:mm',
    'timeFormat':'Clock24Hours',
    'weekStarts':0
  }
));
  nav.selectMode = "week";
  nav.showMonths = 3;
  nav.skipMonths = 3;
  nav.onTimeRangeSelected = function (args) {
    loadEvents(args.start.firstDayOfWeek(), args.start.addDays(7));
  };
  nav.init();

  var calendar = new DayPilot.Calendar("calendar");
  calendar.viewType = "Week";
  calendar.timeRangeSelectedHandling = "Disabled";

  calendar.onEventMoved = function (args) {
    $.post("backend_move.php", JSON.stringify(args), function (data) {
      calendar.message(data.message);
    });
  };
  calendar.onEventResized = function (args) {
    $.post("backend_move.php", JSON.stringify(args), function (data) {
      calendar.message(data.message);
    });
  };
  calendar.onBeforeEventRender = function (args) {
    if (!args.data.tags) {
      return;
    }
    switch (args.data.tags.status) {
      case "free":
        args.data.barColor = "red";
        break;
      case "waiting":
        args.data.barColor = "orange";
        break;
      case "confirmed":
        args.data.barColor = "green";  // red
        break;
    }
  };

  calendar.onEventClick = function (args) {
    var modal = new DayPilot.Modal({
      onClosed: function (args) {
        if (args.result) {  // args.result is empty when modal is closed without submitting
          loadEvents();
        }
      }
    });

    modal.showUrl("appointment_edit.php?id=" + args.e.id());
  };
  calendar.init();

  loadEvents();

  function loadEvents(day) {
//                var start = nav.visibleStart() > new DayPilot.Date() ? nav.visibleStart() : new DayPilot.Date();
    var start = nav.visibleStart();

    var params = {
      doctor: $("#doctor").val(),
      start: start.toString(),
      end: nav.visibleEnd().toString()
    };

    $.post("backend_events_doctor.php", JSON.stringify(params), function (data) {
      if (day) {
        calendar.startDate = day;
      }
      calendar.events.list = data;
      calendar.update();

      nav.events.list = data;
      nav.update();
    });
  }

  $(document).ready(function () {
    $("#doctor").change(function () {
      loadEvents();
    });
  });
</script>

</body>
</html>
