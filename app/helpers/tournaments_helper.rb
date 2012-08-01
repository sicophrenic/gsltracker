module TournamentsHelper
	def race_stats
		javascript_tag "var pie;
			$(function () {
				pie = new Highcharts.Chart({
					chart: {
						renderTo: 'player_races',
						backgroundColor: null,
						borderWidth: null
					},
					colors: ['#489abc', '#559758', '#c7605a'],
					title: {
						floating: true,
						y: 35,
						text: 'Races',
						style: {
							font: '30px Lobster',
							color: '#ffffff'
						}
					},
					tooltip: {
						formatter: function() {
							return '<b>'+ this.point.name +'</b>: '+ this.y +' players';
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
			});"
	end
	def team_stats
		javascript_tag "var bar;
			$(function () {
				bar = new Highcharts.Chart({
					chart: {
						renderTo: 'player_teams',
						type: 'column',
						backgroundColor: null,
					},
					colors: ['#ecbb13'],
					title: {
						floating: true,
						y: 35,
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
						opposite: true,
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
			});"
	end
	def race_matchup_stats
		javascript_tag "var terran;
			var protoss;
			var zerg;
			$( function() {
				terran = new Highcharts.Chart({
					chart: {
						renderTo: 'terran_stats',
						backgroundColor: null,
						borderWidth: null
					},
					colors: ['#559758', '#c7605a'],
					title: {
						floating: true,
						y: 50,
						text: 'Terran Win Rates',
						style: {
							font: '25px Lobster',
							color: '#ffffff'
						}
					},
					tooltip: {
						formatter: function() {
							return '<b>'+ this.point.name +'</b>: '+ this.y +' games';
						}
					},
					plotOptions: {
						pie: {
							size: '50%',
							allowPointSelect: true,
							cursor: 'pointer',
							dataLabels: {
								distance: 5,
								enabled: true,
								color: '#ffffff',
								connectorColor: '#ffffff',
								formatter: function() {
									return '<b>'+ this.point.name +'</b>: '+ Math.round(this.y/#{@terran["total"]}*1000)/10 +'%';
								}
							}
						}
					},
					series: [{
						type: 'pie',
						name: 'Protoss/Zerg',
						data: [
							['VS Protoss', #{@terran["Protoss"]}],
							['VS Zerg', #{@terran["Zerg"]}]
						]
					}]
				});
				protoss = new Highcharts.Chart({
					chart: {
						renderTo: 'protoss_stats',
						backgroundColor: null,
						borderWidth: null
					},
					colors: ['#489abc', '#c7605a'],
					title: {
						floating: true,
						y: 50,
						text: 'Protoss Win Rates',
						style: {
							font: '25px Lobster',
							color: '#ffffff'
						}
					},
					tooltip: {
						formatter: function() {
							return '<b>'+ this.point.name +'</b>: '+ this.y +' games';
						}
					},
					plotOptions: {
						pie: {
							size: '50%',
							allowPointSelect: true,
							cursor: 'pointer',
							dataLabels: {
								distance: 5,
								enabled: true,
								color: '#ffffff',
								connectorColor: '#ffffff',
								formatter: function() {
									return '<b>'+ this.point.name +'</b>: '+ Math.round(this.y/#{@protoss["total"]}*1000)/10 +'%';
								}
							}
						}
					},
					series: [{
						type: 'pie',
						name: 'Terran/Zerg',
						data: [
							['VS Terran', #{@protoss["Terran"]}],
							['VS Zerg', #{@protoss["Zerg"]}]
						]
					}]
				});
				zerg = new Highcharts.Chart({
					chart: {
						renderTo: 'zerg_stats',
						backgroundColor: null,
						borderWidth: null
					},
					colors: ['#489abc', '#559758'],
					title: {
						floating: true,
						y: 50,
						text: 'Zerg Win Rates',
						style: {
							font: '25px Lobster',
							color: '#ffffff'
						}
					},
					tooltip: {
						formatter: function() {
							return '<b>'+ this.point.name +'</b>: '+ this.y +' games';
						}
					},
					plotOptions: {
						pie: {
							size: '50%',
							allowPointSelect: true,
							cursor: 'pointer',
							dataLabels: {
								distance: 5,
								enabled: true,
								color: '#ffffff',
								connectorColor: '#ffffff',
								formatter: function() {
									return '<b>'+ this.point.name +'</b>: '+ Math.round(this.y/#{@zerg["total"]}*1000)/10 +'%';
								}
							}
						}
					},
					series: [{
						type: 'pie',
						name: 'Terran/Protoss',
						data: [
							['VS Terran', #{@zerg["Terran"]}],
							['VS Protoss', #{@zerg["Protoss"]}]
						]
					}]
				});
			});"
	end
	def map_stats(map)
		javascript_tag "var pie;
			$( function() {
				pie = new Highcharts.Chart({
					chart: {
						renderTo: '#{map.name.gsub(' ','_')}',
						backgroundColor: null,
						borderWidth: null
					},
					colors: ['#489abc', '#559758', '#c7605a'],
					title: {
						floating: true,
						y: 50,
						text: '#{map.name}',
						style: {
							font: '30px Lobster',
							color: '#ffffff'
						}
					},
					tooltip: {
						formatter: function() {
							return '<b>'+ this.point.name +'</b>: '+ this.y +' wins';
						}
					},
					plotOptions: {
						pie: {
							size: '50%',
							allowPointSelect: true,
							cursor: 'pointer',
							dataLabels: {
								distance: 10,
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
							['Terran', #{@maps[map]["Terran"]}],
							['Protoss', #{@maps[map]["Protoss"]}],
							['Zerg', #{@maps[map]["Zerg"]}]
						]
					}]
				});
			});"
	end
end
