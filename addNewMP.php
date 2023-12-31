<?php
require 'functions.php';
$monitoring = query("SELECT * FROM monitoring");
$leader = query("SELECT * FROM leader");

// tombol submit sudah ditekan?
if (isset($_POST["submit"])) {
    if (addNewMP($_POST) > 0) {
        echo "
   <script>
   alert('Data berhasil ditambahkan');
   document.location.href= 'index.php';
   </script>
   ";
    } else {
        echo "
    <script>
    alert('Data Gagal ditambahkan');
    </script>
    ";
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Tambahkan Kursus Baru</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">

</head>
<style>
    li {
        list-style-type: none;
    }
</style>

<body>
    <div class="con w-50 d-flex flex-column justify-content-center">
        <h1 class="mt-5 mb-2 p-3 w-100 container-form shadow rounded">Tambahkan Kursus Baru</h1>
        <form action="" method="post" class="container-form shadow mt-0 rounded d-flex flex-column ">
            <ul>
                <li>
                    <label for="project_name">Nama Kursus</label>
                    <br>
                    <input class="field" type="text" name="project_name" id="project_name" required placeholder="e.g Web Developer">
                </li>
                <li>
                    <label for="client_name">Penyedia Kursus</label>
                    <br>
                    <input class="field" type="text" name="client_name" id="client_name" required placeholder="e.g Bayu Nugraha">
                </li>
                <li>
                    <label for="leader_id">Nama Peserta</label>
                    <select class="field" style="cursor: pointer;" id="leader_id" name="leader_id" required tabindex="1" required>
                        <option selected disabled>Select one</option>
                        <?php foreach ($leader as $lead) : ?>
                            <!-- foreach tabel kategori as kategori -->
                            <option value="<?= $lead['id'] ?>"><?= $lead['leader_name'] ?></option>
                        <?php endforeach; ?>
                    </select>
                </li>
                <li>
                    <label for="start_date">Waktu Mulai</label>
                    <br>
                    <input class="field" type="date" name="start_date" id="start_date" required>
                </li>
                <li>
                    <label for="end_date">Waktu Berakhir</label>
                    <br>
                    <input class="field" type="date" name="end_date" id="end_date" required>
                </li>
                <li>
                    <label for="progress">Progress</label>
                    <br>
                    <div class="d-flex justify-content-center">
                        <input class="field" type="number" name="progress" id="progress" placeholder="e.g 50">
                        <div class="ms-2 tag-persen">%</div>
                    </div>
                </li>
                <li><button class="w-100 mt-3 p-1 submit rounded" type="submit" name="submit">Submit</button></li>
            </ul>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>

</html>