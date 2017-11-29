class Bean < ApplicationRecord
  def chart_data
    [acidity, sweetness, bitter, richness, aroma]
  end

  def self.init_chart(chart_data)
    chart = LazyHighCharts::HighChart.new('graph') do |f|
      f.title(text: "豆のバランスを見てみよう！")
      f.xAxis(categories: ["酸味", "甘味", "苦味", "コク", "香り"])
      f.series(name: "豆のバランス", yAxis: 0, data: chart_data)
      f.yAxis [title: {text: "豆のバランス"},lineWidth:0,min:0,max:5]
      f.chart(polar: true,type:'line')
    end
    chart
  end

  def self.average_taste(beans_ids)
    # binding.pry
    tastes = where(id: beans_ids)
    divide_num = tastes.length
    data = tastes.pluck(:acidity, :sweetness, :bitter, :richness, :aroma)

    data.transpose.map { |n| n.inject(:+) / divide_num.to_f}

  end

end
