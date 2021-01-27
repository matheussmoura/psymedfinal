<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8"/>
  <title>psymed</title>

  <link type="text/css" rel="stylesheet" href="css/layout.css"/>

  <!-- DayPilot library -->
  <script src="js/daypilot/daypilot-all.min.js"></script>
</head>
<body>
<?php require_once '_header.php'; ?>

<div class="main">
 
<a href="../index.php" class="btn btn-primary" value="Home">Sair</a>
  <div>

    <div class="column-left">
      <div id="nav"></div>
    </div>
    <div class="column-main">
      <div class="toolbar">Horários disponíveis:</div>
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
    loadEvents(args.start.firstDayOfWeek(DayPilot.Locale.find(nav.locale).weekStarts), args.start.addDays(7));
  };
  nav.init();

  var calendar = new DayPilot.Calendar("calendar");
  calendar.viewType = "Week";
  calendar.timeRangeSelectedHandling = "Disabled";
  calendar.eventMoveHandling = "Disabled";
  calendar.eventResizeHandling = "Disabled";
  calendar.onBeforeEventRender = function (args) {
    if (!args.data.tags) {
      return;
    }
    switch (args.data.tags.status) {
      case "free":
        args.data.barColor = "green";
        args.data.html = "Livre<br/>" + args.data.tags.doctor;
        args.data.toolTip = "Clique para solicitar este horario";
        break;
      case "waiting":
        args.data.barColor = "orange";
        args.data.html = "Seu pedido esta aguardando confirmacao";
        break;
      case "confirmed":
        args.data.barColor = "blue";  // red
        args.data.html = "Confirmado";
        break;
    }
  };
  calendar.onEventClick = function (args) {
    if (args.e.tag("status") !== "free") {
      calendar.message("You can only request a new appointment in a free slot.");
      return;
    }

    var modal = new DayPilot.Modal({
      onClosed: function (args) {
        if (args.result) {  // args.result is empty when modal is closed without submitting
          loadEvents();
        }
      }
    });

    modal.showUrl("appointment_request.php?id=" + args.e.id());
  };
  calendar.init();

  loadEvents();

  function loadEvents(day) {
    var start = nav.visibleStart() > new DayPilot.Date() ? nav.visibleStart() : new DayPilot.Date();

    var params = {
      start: start.toString(),
      end: nav.visibleEnd().toString()
    };

    $.post("backend_events_free.php", JSON.stringify(params), function (data) {
      
      if (day) {
        calendar.startDate = day;
      }
      calendar.events.list = data;
      calendar.update();

      nav.events.list = data;
      nav.update();

    });
  }
</script>

</body>
</html>
