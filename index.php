<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
    <title>Leksion Sunda Kuna</title>
  </head>
  

  <body>    
<div class="container">
    <br>
  <center>
    <h2>Leksikon Bahasa Sunda Kuna</h2>
    <hr>
        <?php.
  include "koneksi.php";
	$data_lema = mysqli_query($conn,"SELECT * FROM tabel_entri");
 	$jumlah_lema = mysqli_num_rows($data_lema);
	?>
 
	
    <a href="https://kairaga.com/leksikon">Beranda</a> · Tentang · Korpus · Bibliografi | Statistik: <b><?php echo $jumlah_lema; ?></b> (entri terdaftar)
  
    <hr>
    <img src="fancy_head.png" width="30%" ><br><br>


    <form action="<?php echo $_SERVER["PHP_SELF"];?>" method="post">
    <div class="form-group">
        <?php
        $kata_kunci="";
        if (isset($_POST['kata_kunci'])) {
            $kata_kunci=$_POST['kata_kunci'];
        }
        ?>
        <input type="text" name="kata_kunci" value="<?php echo $kata_kunci;?>" class="form-control"  required/>
    </div>
    <div class="form-group">
        <input type="submit" class="btn btn-info" value="Cari Kata">
    </div>
      <b>A · B · C · D · D · E · G · H · I · J · K · L · M · N · Ñ · Ṅ · O · P · R · S · T · W · Y</b>
    </form>
  </center>
  <hr>
    <table class="table table-bordered table-hover">

        <?php
        include "koneksi.php";
        if (isset($_POST['kata_kunci'])) {
            $kata_kunci=trim($_POST['kata_kunci']);
            $sql="select * from tabel_entri where lema like '%".$kata_kunci."%' or sublema like '%".$kata_kunci."%' or definisi_lema like '%".$kata_kunci."%' order by lema asc";

        }else {
            $sql="select * from tabel_entri order by lema asc";
        }
        $hasil=mysqli_query($conn,$sql);
        $no=0;
        while ($data = mysqli_fetch_array($hasil)) {


            ?>
            <tbody>
              <b><?php echo $data["lema"];?></b> <?php echo $data["korpus_sumber"];?> <i><?php echo $data["kelas_kata"];?></i> <?php echo $data["definisi_lema"];?><br>
              <b><?php echo $data["sublema"];?></b> <?php echo $data["korpus_sumber_sublema"];?> <i><?php echo $data["kelas_kata_sublema"];?></i> <?php echo $data["definisi_sublema"];?> 
				<br><i><?php echo $data["padanan_sunda_moderen"];?></i> <?php echo $data["arti_sunda_modern"];?> <i><?php echo $data["padanan_jawa_kuna"];?></i> <?php echo $data["arti_jawa_kuna"];?>		
              <hr>
            </tbody>
            <?php
        }
        ?>
    </table>
</div>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="//cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script>
      $(document).ready( function () {
          $('#myTable').DataTable();
      } );
    </script>
 <hr>
    <center>
    <p>Korpus dan glosarium teks Sunda kuna ini merupakan proyek yang dikembangkan oleh Kairaga.com <br>
     (©2022)
      </p>
    </center>
  </body>
</html>
