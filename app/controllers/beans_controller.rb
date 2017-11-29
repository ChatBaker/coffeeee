class BeansController < ApplicationController
  # require 'csv'
  def index
    # binding.pry
  # @beans = Bean.all
  # @charts = []
  # # binding.pry
  # @dates = Bean.pluck(:id, :acidity, :sweetness, :bitter, :richness, :aroma)

  # beanscsvファイルのデータをインポート
    CSV.foreach("test.csv") do |csv|
      next if csv[0] == "id"
      # next if csv[0] == "1"
     Bean.create!(name: csv[1], taste: csv[2], acidity: csv[3].to_i, sweetness: csv[4].to_i, bitter: csv[5].to_i, richness: csv[6].to_i, aroma: csv[7].to_i, place: csv[8], feature: csv[9], geography_history: csv[10])
    end
  # paramsにidがあれば計算する
  # if params[:bean]
  #
  #   beans = Bean.average_taste(params[:bean][:id])
  #   @beans = Bean.init_chart(beans)
  #   render :result
  #
  # else
  #   @bean = Bean.new
  #   @beans = Bean.all.order("id").map{|b|
  #     {id: b.id,
  #      name: b.name,
  #      taste: b.taste,
  #      place: b.place,
  #      feature: b.feature,
  #      geography_history: b.geography_history,
  #      acidity: b.acidity,
  #      sweetness: b.sweetness,
  #      bitter: b.bitter,
  #      richness: b.richness,
  #      aroma: b.aroma,
  #      lazy_chart_data: Bean.init_chart(b.chart_data),
  #     }
  #   }
  # end
  # paramsにidがない場合


  #
  # @chart = LazyHighCharts::HighChart.new('graph') do |f|
  # f.title(text: "豆のバランスを見てみよう！")
  # f.xAxis(categories: ["酸味", "甘味", "苦味", "コク", "香り"])
  # f.series(name: "豆のバランス", yAxis: 0, data: [4, 4, 4, 4, 4])
  # f.yAxis [
  #   title: {text: "豆のバランス"},
  #   lineWidth:0,min:0,max:5
  # ]
  # f.chart(polar: true,type:'line')



  end

  def result

  end


end
