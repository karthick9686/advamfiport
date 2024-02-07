<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<div class="primary-menu">
	   <nav class="navbar navbar-expand-lg align-items-center">
		  <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
			<div class="offcanvas-header border-bottom">
				<div class="d-flex align-items-center">
					<div class="">
						<img src="/images/logo-icon.png" class="logo-icon" alt="logo icon">
					</div>
					<div class="">
						<h4 class="logo-text">Rocker</h4>
					</div>
				</div>
			  <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
			</div>
			<div class="offcanvas-body">
			
				<c:choose>
					<c:when test="${accountMap.typeId eq 1 || accountMap.typeId eq 2}">
					<ul class="navbar-nav align-items-center flex-grow-1">
						<li class="nav-item">
							<a class="nav-link" href="/admin/dashboard">
								<div class="parent-icon"><i class='bx bx-home-alt'></i></div>
								<div class="menu-title d-flex align-items-center">Home</div>
							</a>
						  </li>
						  <li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="javascript:;" data-bs-toggle="dropdown">
								<div class="parent-icon"><i class='bx bx-cube'></i>
								</div>
								<div class="menu-title d-flex align-items-center">Data</div>
								<div class="ms-auto dropy-icon"><i class='bx bx-chevron-down'></i></div>
							</a>
							<ul class="dropdown-menu">
							  <li><a class="dropdown-item" href="/admin/import-data">Import Data</a></li>
							  <li><a class="dropdown-item" href="/admin/export-data">Export Data</a></li>
							</ul>
						  </li>
						  <li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="javascript:;" data-bs-toggle="dropdown">
								<div class="parent-icon"><i class='bx bx-cube'></i>
								</div>
								<div class="menu-title d-flex align-items-center">Global Trade Data</div>
								<div class="ms-auto dropy-icon"><i class='bx bx-chevron-down'></i></div>
							</a>
							<ul class="dropdown-menu" style="width: 17rem;">
							  <li><a class="dropdown-item" href="/admin/china-trade-data">China</a></li>
							  <li><a class="dropdown-item" href="#">Indonesia</a></li>
							  <li><a class="dropdown-item" href="/admin/global-trade-data">Rest of the World- 23 Countries</a></li>
							</ul>
						  </li>
						  <li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="javascript:;" data-bs-toggle="dropdown">
								<div class="parent-icon"><i class='bx bx-message-square-edit'></i>
								</div>
								<div class="menu-title d-flex align-items-center">Trade Resources</div>
								<div class="ms-auto dropy-icon"><i class='bx bx-chevron-down'></i></div>
							</a>
							<ul class="dropdown-menu">
								<li> <a class="dropdown-item" href="/admin/incoterm">Incoterms</a>
								</li>
								<li> <a class="dropdown-item" href="/admin/indian-port-code">Indian Port With Code</a>
								</li>
								<li> <a class="dropdown-item" href="/admin/country-code">Country Code</a>
								</li>
								<li> <a class="dropdown-item" href="/admin/currency-code">Curreny Code</a>
								</li>
								<li> <a class="dropdown-item" href="/admin/unit-code-description">Unit Code Description</a>
								</li>
								<li> <a class="dropdown-item" href="/admin/hs-code-description">HS Code Description</a>
								</li>
								<li> <a class="dropdown-item" href="/admin/global-port-code">Global Port Code</a>
								</li>
								<li> <a class="dropdown-item" href="/admin/iec">IEC</a>
								</li>
								<li> <a class="dropdown-item" href="/admin/custom-duty">Custom Duty</a>
								</li>
							</ul>
						  </li>
						  <li class="nav-item">
							<a class="nav-link" href="/admin/pricing">
								<div class="parent-icon"><i class='bx bx-lock'></i></div>
								<div class="menu-title d-flex align-items-center">Pricing</div>
							</a>
						  </li>
						  <li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="javascript:;" data-bs-toggle="dropdown">
								<div class="parent-icon"><i class='bx bx-lock'></i></div>
								<div class="menu-title d-flex align-items-center">FAQs</div>
							</a>
						  </li>
						  <!-- <li class="nav-item">
							<a class="nav-link" href="/admin/monthly-data">
								<div class="parent-icon"><i class='bx bx-lock'></i></div>
								<div class="menu-title d-flex align-items-center">Monthly Data</div>
							</a>
						  </li> -->
						  <li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="javascript:;" data-bs-toggle="dropdown">
								<div class="parent-icon"><i class='bx bx-cube'></i>
								</div>
								<div class="menu-title d-flex align-items-center">Monthly Data</div>
								<div class="ms-auto dropy-icon"><i class='bx bx-chevron-down'></i></div>
							</a>
							<ul class="dropdown-menu">
							  <li><a class="dropdown-item" href="/admin/monthly-data">Monthly Data</a></li>
							  <li><a class="dropdown-item" href="/admin/monthly-data-download-history">Download History</a></li>
							</ul>
						  </li>
						  <li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="javascript:;" data-bs-toggle="dropdown">
								<div class="parent-icon"><i class='bx bx-user-circle'></i>
								</div>
								<div class="menu-title d-flex align-items-center">Users</div>
								<div class="ms-auto dropy-icon"><i class='bx bx-chevron-down'></i></div>
							</a>
							<ul class="dropdown-menu">
							  <li><a class="dropdown-item" href="/admin/user-list">User List</a></li>
							</ul>
						  </li>
						  <li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="javascript:;" data-bs-toggle="dropdown">
								<div class="parent-icon"><i class='bx bx-lock'></i></div>
								<div class="menu-title d-flex align-items-center">Contact Us</div>
							</a>
						  </li>
					  </ul>
					</c:when>
					<c:when test="${accountMap.typeId eq 2 && accountMap.payment_status eq 'active'}">
							<ul class="navbar-nav align-items-center flex-grow-1">
							  
							  <li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="javascript:;" data-bs-toggle="dropdown">
									<div class="parent-icon"><i class='bx bx-cube'></i>
									</div>
									<div class="menu-title d-flex align-items-center">Data</div>
									<div class="ms-auto dropy-icon"><i class='bx bx-chevron-down'></i></div>
								</a>
								<ul class="dropdown-menu">
								  <li><a class="dropdown-item" href="/user/monthly-data">Monthly Data</a></li>
								  <li><a class="dropdown-item" href="/user/monthly-data-download-history">Download History</a></li>
								</ul>
							  </li>
							 
						  </ul>
					</c:when>
				</c:choose>
			  
			</div>
		  </div>
	  </nav>
</div>