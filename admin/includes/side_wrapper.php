<div class="sidebar-wrapper">
            <div class="logo">
                <a href="index.php" class="simple-text">
                    ADMIN<?php 
                        $uri = explode("/", $_SERVER['REQUEST_URI']);
                    ?>
                </a>
            </div>

            <ul class="nav">
                <li class="<?= ($uri[3]=='food_list.php') ? 'active' : ''; ?>">
                    <a href="food_list.php">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                        </a>
                </li>
                <li class="<?= ($uri[3]=='food_add.php') ? 'active' : ''; ?>">
                    <a href="food_add.php">
                        <i class="pe-7s-graph"></i>
                        <p>Tambah Meja</p>
                    </a>
                </li>
				<li class="<?= ($uri[3]=='reservations.php') ? 'active' : ''; ?>">
                    <a href="reservations.php">
                        <i class="pe-7s-note2"></i>
                        <p>Booking Meja</p>
                    </a>
                </li>
                <li class="<?= ($uri[3]=='report.php') ? 'active' : ''; ?>">
                    <a href="report.php">
                        <i class="pe-7s-note2"></i>
                        <p>Laporan Data Booking</p>
                    </a>
                </li>
                <li class="<?= ($uri[3]=='customer.php') ? 'active' : ''; ?>">
                    <a href="customer.php">
                        <i class="pe-7s-users"></i>
                        <p>Data Customer</p>
                    </a>
                </li>
				<!--<li>
                    <a href="#">
                        <i class="pe-7s-news-paper"></i>
                        <p>Gallery</p>
                    </a>
                </li>-->
                
            </ul>
    	</div>
    </div>