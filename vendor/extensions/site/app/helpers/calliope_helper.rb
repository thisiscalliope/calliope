module CalliopeHelper
  # Overrides original implementation in BaseHelper
  # So that option_values are sorted alphabeticly.
  def variant_options(v, allow_back_orders = Spree::Config[:allow_backorders], include_style = true)
    sorted = v.option_values.sort { |a, b| a.presentation <=> b.presentation }
    list = sorted.map { |ov| "#{ov.option_type.presentation}: #{ov.presentation}" }.to_sentence({:words_connector => ", ", :two_words_connector => ", "})
    list = include_style ? "<span class =\"out-of-stock\">(" + t("out_of_stock") + ") #{list}</span>" : "#{t("out_of_stock")} #{list}" unless (allow_back_orders || v.in_stock?)
    list
  end
end