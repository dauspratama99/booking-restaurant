<?php 
	
	session_start();
	require "admin/includes/functions.php";
	require "admin/includes/db.php";

	if(!isset($_SESSION['email'])) { 
        $_SESSION['error_message'] = 'You need to login first';

        header('Location: login.php');
    }
	
	$msg = "";

	
	if($_SERVER['REQUEST_METHOD'] == 'POST') {
		
		if(isset($_POST['submit'])) {
			
			$guest = preg_replace("#[^0-9]#", "", $_POST['guest']);
			$name = htmlentities($_SESSION['nama'], ENT_QUOTES, 'UTF-8');
			$email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
			$phone = preg_replace("#[^0-9]#", "", $_POST['phone']);
			$date_res = htmlentities($_POST['date_res'], ENT_QUOTES, 'UTF-8');
			$time = htmlentities($_POST['time'], ENT_QUOTES, 'UTF-8');
			$suggestions = htmlentities($_POST['suggestions'], ENT_QUOTES, 'UTF-8');
			$arah = htmlentities($_POST['arah'], ENT_QUOTES, 'UTF-8');
			
			if($guest != "" && $name != "" && $email && $phone != "" && $date_res != "" && $time != "" && $suggestions != "") {
				
				$check = $db->query("SELECT * FROM reservation WHERE no_of_guest='".$guest."' AND name='".$name."' AND email='".$email."' AND phone='".$phone."' AND date_res='".$date_res."' AND time='".$time."' LIMIT 1");
				
				if($check->num_rows) {
					
					$msg = "<p style='padding: 15px; color: red; background: #ffeeee; font-weight: bold; font-size: 13px; border-radius: 4px; text-align: center;'>You have already placed a reservation with the same information</p>";
					
				}else{
					$query = "INSERT INTO reservation(no_of_guest, name, email, phone, date_res, time, suggestions, status) VALUES('".$guest."','".$name."', '".$email."', '".$phone."', '".$date_res."', '".$time."', '".$suggestions."', 'pending')";
					$insert = $db->query($query);
					
					if($insert) {
						
						$ins_id = $db->insert_id;
						
						$reserve_code = "BK$ins_id";
						
						$msg = "<p style='padding: 15px; color: green; background: #eeffee; font-weight: bold; font-size: 13px; border-radius: 4px; text-align: center;'>Booking berhasil dilakukan. Kode Booking Anda adalah  $reserve_code. Harap dicatat </p>";

						$_SESSION['id'] = $ins_id;
						$customer_ids = $_SESSION['customer_ids'];
						$date_made = $date_res.' '.$time;

						if ($arah=="1") {
							header("location: menu.php");
						} else {
							$qo = "INSERT INTO `basket` (`customer_id`, `reserve_id`, `customer_name`, `contact_number`, `address`, `email`, `total`, `status`, `date_made`) VALUES ('$customer_ids', '$ins_id', '$name', '$phone', '$reserve_code', '$email', '50000', 'pending', '$date_made')";
							$db->query($qo);
							header("location: index.php");
						}						
						
					}else{
						
						$msg = "<p style='padding: 15px; color: red; background: #ffeeee; font-weight: bold; font-size: 13px; border-radius: 4px; text-align: center;'>Could not place reservation. Please try again</p>";
						
					}
					
				}
				
			}else{
				
				$msg = "<p style='padding: 15px; color: red; background: #ffeeee; font-weight: bold; font-size: 13px; border-radius: 4px; text-align: center;'>Incomplete form data or Invalid data type</p>";
				
				print_r($_POST);
				
			}
			
		}
		
	}
	
?>

<!Doctype html>

<html lang="en">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<meta name="description" content="" />

<meta name="keywords" content="" />

<head>
	
<title>SARI RAOS</title>

<link rel="stylesheet" href="css/main.css" />

<script src="js/jquery.min.js" ></script>

<script src="js/myscript.js"></script>
<style type="text/css">
	.submit {
		width: 100%;
    background: #1e9500;
    color: #fff;
    padding: 7px;
    height: 40px;
    border: 1px solid #1e9500;
    font-family: verdana;
    font-size: 19px;
    margin-top: 27px;
    border-radius: 4px
	}
	body {
  font-family: Arial, sans-serif;
  background: url(http://www.shukatsu-note.com/wp-content/uploads/2014/12/computer-564136_1280.jpg) no-repeat;
  background-size: cover;
  height: 100vh;
}

h1 {
  text-align: center;
  font-family: Tahoma, Arial, sans-serif;
  color: #06D85F;
  margin: 80px 0;
}

.box {
  width: 40%;
  margin: 0 auto;
  background: rgba(255,255,255,0.2);
  padding: 35px;
  border: 2px solid #fff;
  border-radius: 20px/50px;
  background-clip: padding-box;
  text-align: center;
}

#form_submit {
  cursor: pointer;
  transition: all 0.3s ease-out;
}

.overlay {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.7);
  transition: opacity 500ms;
  visibility: visible;
  opacity: 0;
}
.overlay:target {
  visibility: visible;
  opacity: 1;
}

.popup {
  margin: 70px auto;
  padding: 20px;
  background: #fff;
  border-radius: 5px;
  width: 30%;
  position: relative;
  transition: all 5s ease-in-out;
}

.popup h2 {
  margin-top: 0;
  color: #333;
  font-family: Tahoma, Arial, sans-serif;
}
.popup .close {
  position: absolute;
  top: 20px;
  right: 30px;
  transition: all 200ms;
  font-size: 30px;
  font-weight: bold;
  text-decoration: none;
  color: #333;
}
.popup .close:hover {
  color: #06D85F;
}
.popup .content {
  max-height: 30%;
  overflow: auto;
}

@media screen and (max-width: 700px){
  .box{
    width: 70%;
  }
  .popup{
    width: 70%;
  }
}
</style>


	
</head>

<body>
	
<?php require "includes/header.php"; ?>

<div class="parallax" onclick="remove_class()">
	
	<div class="parallax_head">
		
		<h2>PESANAN</h2>
		<h3>MEJA</h3>
		
	</div>
	
</div>

<div class="content" onclick="remove_class()">
	
	<div class="inner_content">
		
		<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>" class="hr_book_form" id="form_submit">
			
			<h2 class="form_head"><span class=>PESAN MEJA</span></h2>
			<p class="form_slg">Kami menawarkan Anda layanan terbaik</p>
			
			<?php echo "<br/>".$msg; ?>
			
			<div class="left">
				
				<div class="form_group">
					 
					 <label>Jumlah Orang</label>
					<input type="number" placeholder="How many guests" min="1" name="guest" id="guest" required>
					
				</div>
				
				<div class="form_group">
					
					<label>Nama</label>
					<input type="name" name="name" value="<?= $_SESSION['nama'] ?>" readonly >
					
				</div>
				
				<div class="form_group">
					
					<label>Email</label>
					<input type="email" name="email" value="<?= $_SESSION['email'] ?>" placeholder="Enter your email" readonly required>
					
				</div>
				
				<div class="form_group">
					
					<label>Nomer Telepon</label>
					<input type="text" name="phone" value="<?= $_SESSION['contact_number'] ?>"  placeholder="Enter your phone number" required readonly>
					
				</div>
				
				<div class="form_group">
					
					<label>Tanggal</label>
					<input type="date" name="date_res" placeholder="Select date for booking" required>
					
				</div>
				
				<div class="form_group">
					
					<label>Waktu</label>
					<input type="time" name="time" placeholder="Select time for booking" required>
					
				</div>
				
				
			</div>
			
			<div class="left">
				
				<div class="form_group">
					
                    <label>Pesan <small><b>(Bagaimana pengaturan yang Anda inginkan)</b></small></label>
					<textarea name="suggestions" placeholder="your suggestions" required></textarea>
					
				</div>
				
				<div class="form_group">

					<input type="hidden" name="arah" id="arah">

					<input type="button" class="submit" name="submit" value="MAKE YOUR BOOKING" id="form_submit" onclick="popusp(this);">
					<input type="submit" class="submit" name="submit" value="MAKE YOUR BOOKING" id="form_submitxx" style="display:none">
					
				</div>
				
			</div>
			
			<p class="clear"></p>
			
		</form>
		
	</div>
	
</div>


<div id="popup1" class="overlay">
	<div class="popup">
		<h2>Pesan Makanan?</h2>
		<a class="close" href="#" onclick="closex()">&times;</a>
		<div class="content" style="text-align:center;">
			<button style="width: 80px;padding: 4px 6px;background: red;" onclick="pilih('1')">Ya</button>
			<button style="width: 80px;padding: 4px 6px;background: green;" onclick="pilih('0')">Tidak</button>
		</div>
	</div>
</div>

<div class="content" onclick="remove_class()">
	
	<div class="inner_content">
	
		<div class="contact">
			
			<div class="left">
				
				<h3>LOCATION</h3>
				<p>Jl. R.A Kartini Unit 2, Rimbo Bujang, Tebo</p>
				<p>JAMBI</p>
				
			</div>
			
			<div class="left">
				
				<h3>CONTACT</h3>
				<p>08054645432, 07086898709</p>
				<p>Website@gmail.com</p>
				
			</div>

			<p class="left"></p>
			
			<div class="icon_holder">
				
				<a href="#"><img src="image/icons/Facebook.png" alt="image/icons/Facebook.png" /></a>
				<a href="#"><img src="image/icons/Google+.png" alt="image/icons/Google+.png"  /></a>
				<a href="#"><img src="image/icons/Twitter.png" alt="image/icons/Twitter.png"  /></a>
				
			</div>
			
		</div>
		
	</div>
	
</div>

<div class="footer_parallax" onclick="remove_class()">
	
	<div class="on_footer_parallax">
		
		<p>&copy; <?php echo strftime("%Y", time()); ?> <span>SARI RAOS</span>. All Rights Reserved</p>

		
	</div>
	
</div>
<script type="text/javascript">
function popusp(event) {
	document.getElementById("popup1").style.display = "block";
}

function pilih(e) {
	closex();
	// if (e=='1') {
		document.getElementById('arah').value = e
		document.getElementById('form_submitxx').click();
	// }else{
	// 	window.location.href = "index.php";
	// }
}

function closex() {
	document.getElementById('popup1').style.display = "none";
}
</script>
	
</body>

</html>