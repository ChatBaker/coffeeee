class BeansController < ApplicationController
  # require 'csv'
  def index
  @beans = Bean.all
  # beanscsvファイルのデータをインポート
  #   CSV.foreach("test.csv") do |csv|
  #     next if csv[0] == "id"
  #     next if csv[0] == "1"
  #    Bean.create!(name: csv[1], taste: csv[2], acidity: csv[3].to_i, sweetness: csv[4].to_i, bitter: csv[5].to_i, richness: csv[6].to_i, aroma: csv[7].to_i, place: csv[8], feature: csv[9], geography_history: csv[10])
  #   end

  # @chart = LazyHighCharts::HighChart.new('graph') do |f|
  # f.title(text: "豆のバランスを見てみよう！")
  # f.xAxis(categories: ["酸味", "甘味", "苦味", "コク", "香り"])
  # f.series(name: "豆のバランス", yAxis: 0, data: [4, 4, 4, 4, 4])
  # f.yAxis [
  #   title: {text: "豆のバランス"},
  #   lineWidth:0,min:0,max:5
  # ]
  # f.chart(polar: true,type:'line')
  # end


  end


end
