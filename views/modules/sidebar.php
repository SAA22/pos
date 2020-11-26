<aside class="main-sidebar">

	<section class="sidebar">
		
		<ul class="sidebar-menu">

			<?php

			if ($_SESSION["profile"] == "Administrator") {
				
				echo '
					<li class="active">
						<a href="home">
							<i class="fa fa-home"></i>
							<span>Acasă</span>
						</a>
					</li>
					<li>
						<a href="users">
							<i class="fa fa-user"></i>
							<span>Administrare angajații</span>
						</a>

					</li>';
			}

			if($_SESSION["profile"] == "Administrator" || $_SESSION["profile"] == "Special"){

				echo '

					<li>
						<a href="categories">
							<i class="fa fa-th"></i>
							<span>Categorii</span>
						</a>
					</li>
					<li>
						<a href="products">
							<i class="fa fa-product-hunt"></i>
							<span>Produse</span>
						</a>
					</li>';
			}

			if($_SESSION["profile"] == "Administrator" || $_SESSION["profile"] == "Seller"){

			echo'<li class="treeview">
				<a href="#">
					<i class="fa fa-list-ul"></i>
					<span>V&#226;nzări</span>
					
				</a>
				<ul class="treeview-menu">
					
					<li>
						<a href="sells">
							<i class="fa fa-circle"></i>
							<span>Administrează v&#226;nzări</span>
						</a>
					</li>
					<li>
						<a href="create-sale">
							<i class="fa fa-circle"></i>
							<span>Crează v&#226;nzare</span>
						</a>
					</li>';

				}

				if($_SESSION["profile"] == "Administrator"){
					echo '<li>
						<a href="reports">
							<i class="fa fa-circle"></i>
							<span>Raport v&#226;nzări</span>
						</a>
					</li>';

				}

				echo '</ul>

			</li>';


		?>
			
		</ul>

	</section>
	
</aside>