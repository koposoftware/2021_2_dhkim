(function ($) {
 "use strict";
	// global options variable
	
var vpn_pie = document.getElementById('mychart').getContext('2d');
var vpnPieChart = new Chart(vpn_pie, {
    type: 'pie',
    data:{
        labels: [ 'Success', 'Failure' ],
        datasets: [{
            data: pie_chart_vpn,
            backgroundColor: [
                "#f7323f",
                "#673ba7"
            ],
            borderWidth: 0
        }]
    }

})

})(jQuery); 
