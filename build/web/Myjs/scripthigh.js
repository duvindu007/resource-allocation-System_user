/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {

	//highlight the current nav
	$("#index a:contains('Home')").parent().addClass('active');
      $("#sports a:contains('Sports clubs at NSBM')").parent().addClass('active');
       $("#faculties a:contains('Faculties at NSBM')").parent().addClass('active');
	$("#activitybased a:contains('Activity based clubs')").parent().addClass('active');
        $("#religous a:contains('Religous societies')").parent().addClass('active');
         $("#international a:contains('International clubs')").parent().addClass('active');
	$("#aboutus a:contains('About us')").parent().addClass('active');
        $("#contactus a:contains('Contact us')").parent().addClass('active');
	
	if($("#activitybased a:contains('Activity based clubs')").parent().hasClass('active')){
	$(".dropdown a:contains('Clubs & societies')").parent().addClass('active');
	}
	
	if($("#religous a:contains('Religous societies')").parent().hasClass('active')){
	$(".dropdown a:contains('Clubs & societies')").parent().addClass('active');
	}
        if($("#international a:contains('International clubs')").parent().hasClass('active')){
	$(".dropdown a:contains('Clubs & societies')").parent().addClass('active');
	}

	//make menus drop automatically
	$('ul.nav li.dropdown').hover(function() {
		$('.dropdown-menu', this).fadeIn();
	}, function() {
		$('.dropdown-menu', this).fadeOut('fast');
	});//hover
	
}); //jQuery is loaded