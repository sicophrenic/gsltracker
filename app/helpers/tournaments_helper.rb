module TournamentsHelper
	def race_and_teams
		javascript_tag "var pie;
			var bar;
			window.onload = function () {
				pie = new Highcharts.Chart({
					chart: {
						renderTo: 'races',
						backgroundColor: null,
						borderWidth: null
					},
					colors: ['#489abc', '#559758', '#c7605a'],
					title: {
						text: 'Races',
						style: {
							font: '30px Lobster',
							color: '#ffffff'
						}
					},
					tooltip: {
						formatter: function() {
							return '<b>'+ this.point.name +'</b>: '+ this.y;
						}
					},
					plotOptions: {
						pie: {
							allowPointSelect: true,
							cursor: 'pointer',
							dataLabels: {
								enabled: true,
								color: '#ffffff',
								connectorColor: '#ffffff',
								formatter: function() {
									return '<b>'+ this.point.name +'</b>: '+ this.y;
								}
							}
						}
					},
					series: [{
						type: 'pie',
						name: 'Races',
						data: [
							['Terran', #{@races["Terran"].count}],
							['Protoss', #{@races["Protoss"].count}],
							['Zerg', #{@races["Zerg"].count}]
						]
					}]
				});
				bar = new Highcharts.Chart({
					chart: {
						renderTo: 'teams',
						type: 'column',
						backgroundColor: null,
					},
					colors: ['#ecbb13'],
					title: {
						text: 'Teams',
						style: {
							font: '30px Lobster',
							color: '#ffffff'
						}
					},
					xAxis: {
						categories: #{@teamschart.keys},
						labels: {
							rotation: -45,
							align: 'right',
							style: {
								color: '#ffffff'
							}
						}
					},
					yAxis: {
						min: 0,
						title: {
							text: 'Number of Players',
							style: {
								font: '20px Lobster',
								color: '#ffffff'
							}
						}
					},
					legend: {
						enabled: false
					},
					tooltip: {
						formatter: function() {
							return ''+this.x +': '+ this.y +' Players';
						},
						borderColor: '#ff6600'
					},
					plotOptions: {
						column: {
							borderWidth: 0
						}
					},
					series: [{
						name: 'Teams',
						data: #{@teamschart.values}
					}]
				});
			};"
	end
end
