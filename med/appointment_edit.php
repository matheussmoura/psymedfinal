<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Editar solicitacao</title>
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

<div style="padding:10px">

  <h1>Editar campo de solicitacao</h1>

  <div class="space">
    <button id="delete" id="delete">Deletar</button>
  </div>

  <div class="space">
    <div>Inicio:</div>
    <div><input type="text" id="start" name="start" disabled
                value="<?php print (new DateTime($event['appointment_start']))->format('d/M/y g:i A') ?>"/></div>
  </div>

  <div class="space">
    <div>Fim:</div>
    <div><input type="text" id="end" name="end" disabled
                value="<?php print (new DateTime($event['appointment_end']))->format('d/M/y g:i A') ?>"/></div>
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
          echo "<option value='" . $item["doctor_id"] . "'" . $selected . ">" . $item["doctor_name"] . "</option>";
        }
        ?>
      </select>
    </div>
  </div>

  <div class="space">
    <div>Status:</div>
    <div>
      <select id="status" name="status">
        <?php
        $status_items = array(
            array("value" => "free", "name" => "Livre"),
            array("value" => "waiting", "name" => "Espera"),
            array("value" => "confirmed", "name" => "Confirmado")
        );
        foreach ($status_items as $item) {
          $selected = "";
          if ($event['appointment_status'] == $item["value"]) {
            $selected = " selected";
          }
          echo "<option value='" . $item["value"] . "'" . $selected . ">" . $item["name"] . "</option>";
        }
        ?>
      </select>
    </div>
  </div>

  <div>Nome:</div>
  <div><input type="text" id="name" name="name" value="<?php echo $event['appointment_patient_name'] ?>"/></div>

  <div class="space"><input type="submit" value="Salvar" id="save"/> <a href="" id="cancel">Cancelar</a></div>

</div>

<script type="text/javascript">
  var appointment = {
    id: '<?php echo $event['appointment_id'] ?>'
  }

  $(document).ready(function () {
    $("#delete").click(function () {
      $.post("backend_delete.php", JSON.stringify(appointment), function (data) {
        DayPilot.Modal.close(data);
      });
    });

    $("#save").click(function () {
      appointment.name = $("#name").val();
      appointment.status = $("#status").val();

      $.post("backend_update.php", JSON.stringify(appointment), function (data) {
        DayPilot.Modal.close(data);
      });
    });

    $("#cancel").click(function () {
      DayPilot.Modal.close();
    });

    $("#name").focus();
  });

</script>
</body>
</html>
