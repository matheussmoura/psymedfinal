<!DOCTYPE html>
<html lang=”pt-br”>
<head>
  <meta charset="UTF-8">
  <title>Solicite uma consulta</title>
  <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
  <script src="js/daypilot/daypilot-all.min.js" type="text/javascript"></script>
  <link type="text/css" rel="stylesheet" href="css/layout.css"/>

</head>
<body>
<?php
// check the input
is_numeric($_GET['id']) or die("invalid URL");

require_once '_db.php';

$stmt = $db->prepare('SELECT * FROM appointment WHERE appointment_id = :id');
$stmt->bindParam(':id', $_GET['id']);
$stmt->execute();
$event = $stmt->fetch();

?>
<form id="f" action="backend_request_save.php" style="padding:20px;">
  <input type="hidden" name="id" id="id" value="<?php print $_GET['id'] ?>"/>
  <h1>Solicite uma consulta</h1>

  <div class="space">
    <div>Inicio:</div>
    <div><input type="text" id="start" name="start"
                value="<?php print (new DateTime($event['appointment_start']))->format('d/M/y g:i A') ?>" disabled/>
    </div>
  </div>

  <div class="space">
    <div>Fim:</div>
    <div><input type="text" id="end" name="end"
                value="<?php print (new DateTime($event['appointment_end']))->format('d/M/y g:i A') ?>" disabled/></div>
  </div>

  <div class="space">
    <div>Doutor:</div>
    <div>
      <select id="resource" name="resource" disabled ng-model="appointment.doctor">
        <?php
        foreach ($db->query('SELECT * FROM doctor d INNER JOIN cadlugar cl ON d.id_cadlugar = cl.id  ORDER BY doctor_name') as $item) {
          $selected = "";
          if ($event["doctor_id"] == $item["doctor_id"]) {
            $selected = " selected";
          }
          echo "<option value='" . $item["doctor_id"] . "'" . $selected . ">"   .  $item["doctor_name"] . "</option>";
        }
        ?>
      </select>
    </div>
  </div>

  <div class="space">
    <div>Local:</div>
    <div>
      <select id="resource" name="resource" disabled ng-model="appointment.doctor">
        <?php
        foreach ($db->query('SELECT * FROM doctor d INNER JOIN cadlugar cl ON d.id_cadlugar = cl.id  ORDER BY doctor_name') as $item) {
          $selected = "";
          if ($event["doctor_id"] == $item["doctor_id"]) {
            $selected = " selected";
          }
          echo "<option value='" . $item["doctor_id"] . "'" . $selected . ">"   .  $item["namelugar"] . "</option>";
        }
        ?>
      </select>
    </div>
  </div>

  <div class="space">
    <div>Endereço:</div>
    <div>
      <select id="resource" name="resource" disabled ng-model="appointment.doctor">
        <?php
        foreach ($db->query('SELECT * FROM doctor d INNER JOIN cadlugar cl ON d.id_cadlugar = cl.id  ORDER BY doctor_name') as $item) {
          $selected = "";
          if ($event["doctor_id"] == $item["doctor_id"]) {
            $selected = " selected";
          }
          echo "<option value='" . $item["doctor_id"] . "'" . $selected . ">"   .  $item["addresslugar"] . "</option>";
        }
        ?>
      </select>
    </div>
  </div>

  <div class="space">
    <div>Crp:</div>
    <div>
      <select id="resource" name="resource" disabled ng-model="appointment.doctor">
        <?php
        foreach ($db->query('SELECT * FROM doctor d INNER JOIN cadlugar cl ON d.id_cadlugar = cl.id  ORDER BY doctor_name') as $item) {
          $selected = "";
          if ($event["doctor_id"] == $item["doctor_id"]) {
            $selected = " selected";
          }
          echo "<option value='" . $item["doctor_id"] . "'" . $selected . ">"   .  $item["crp"] . "</option>";
        }
        ?>
      </select>
    </div>
  </div>

  <div class="space">
    <div>Telefone:</div>
    <div>
      <select id="resource" name="resource" disabled ng-model="appointment.doctor">
        <?php
        foreach ($db->query('SELECT * FROM doctor d INNER JOIN cadlugar cl ON d.id_cadlugar = cl.id  ORDER BY doctor_name') as $item) {
          $selected = "";
          if ($event["doctor_id"] == $item["doctor_id"]) {
            $selected = " selected";
          }
          echo "<option value='" . $item["doctor_id"] . "'" . $selected . ">"   .  $item["telefone"] . "</option>";
        }
        ?>
      </select>
    </div>
  </div>

  <div class="space">
    <div>Seu nome:</div>
    <div><input type="text" id="name" name="name" value=""/></div>
  </div>

  <div class="space"><input type="submit" value="Salvar"/> <a href="#" id="cancel">Cancelar</a></div>
</form>

<script type="text/javascript">

  $("#f").submit(function () {
    var f = $("#f");
    $.post(f.attr("action"), f.serialize(), function (result) {
      DayPilot.Modal.close(result);
    });
    return false;
  });

  $("#cancel").click(function () {
    DayPilot.Modal.close();
    return false;
  });

  $(document).ready(function () {
    $("#name").focus();
  });

</script>
</body>
</html>
