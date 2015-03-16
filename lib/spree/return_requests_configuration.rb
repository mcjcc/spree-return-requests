class Spree::ReturnRequestsConfiguration < Spree::Preferences::Configuration
  preference :return_request_intro_text, :text, default: 'This text is customizable via the configuration page.'
  preference :return_request_max_order_age_in_days, :integer, default: 90
  preference :return_request_past_return_window_text, :text, default: 'This order is beyond the allowed return window.'
  preference :return_request_reasons, :text, default: [
    'Arrived Too Late',
    'Bought 2 Kept 1',
    'Changed Mind',
    'Defective Item',
    'Didn’t Fit',
    'Disliked',
    'Not as Pictured',
    'Wrong Item',
    'Other',
  ].join('\n')
  preference :return_request_success_text, :text, default: 'Thank you for submitting your return request. We will get back to you soon.'
end
