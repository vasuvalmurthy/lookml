- dashboard: travel_and_hospitality__daily_heartbeat
  title: Travel and Hospitality - Daily Heartbeat
  layout: newspaper
  elements:
  - name: YTD Booking
    title: YTD Booking
    model: travel_hospitality
    explore: travelhospitalitylob
    type: single_value
    fields:
    - travelhospitalitylob.totaltripcnt
    filters:
      travelhospitalitylob.traveldate_year: after 2018/01/01
      travelhospitalitylob.lineofbusiness: ''
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Mixed Pastels'
    series_colors: {}
    hidden_series: []
    listen:
      Select Date Range: travelhospitalitylob.traveldate_date

    refresh: 1 day
    row: 2
    col: 5
    width: 4
    height: 2
  - name: YTD Booking GB$
    title: YTD Booking GB$
    model: travel_hospitality
    explore: travelhospitalitylob
    type: single_value
    fields:
    - travelhospitalitylob.grossbooking
    filters:
      travelhospitalitylob.traveldate_year: after 2018/01/01
      travelhospitalitylob.lineofbusiness: ''
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Mixed Pastels'
    series_colors: {}
    hidden_series: []
    listen:
      Select Date Range: travelhospitalitylob.traveldate_date

    refresh: 1 day
    row: 0
    col: 5
    width: 4
    height: 2
  - name: YoY Booking
    title: YoY Booking
    model: travel_hospitality
    explore: travelhospitalitylob
    type: looker_column
    fields:
    - travelhospitalitylob.lineofbusiness
    - travelhospitalitylob.totaltripcnt
    - travelhospitalitylob.traveldate_year
    pivots:
    - travelhospitalitylob.lineofbusiness
    fill_fields:
    - travelhospitalitylob.traveldate_year
    sorts:
    - travelhospitalitylob.lineofbusiness
    - travelhospitalitylob.traveldate_year
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Looker Classic'
    series_colors: {}
    hidden_series: []
    listen:

    refresh: 1 day
    row: 5
    col: 0
    width: 12
    height: 7
  - name: Top Companies by Booking
    title: Top Companies by Booking
    model: travel_hospitality
    explore: travelhospitalitylob
    type: looker_column
    fields:
    - travelhospitalitylob.groupaccountname
    - travelhospitalitylob.totaltripcnt
    filters:
      travelhospitalitylob.groupaccountname: ''
      travelhospitalitylob.totaltripcnt: ">10000"
    sorts:
    - travelhospitalitylob.totaltripcnt desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    colors:
    - 'palette: Mixed Pastels'
    series_colors: {}
    listen:
      Select Date Range: travelhospitalitylob.traveldate_date
    row: 12
    col: 0
    width: 24
    height: 10
  - name: Booking Trend MoM
    title: Booking Trend MoM
    model: travel_hospitality
    explore: travelhospitalitylob
    type: looker_line
    fields:
    - travelhospitalitylob.traveldate_month
    - travelhospitalitylob.totaltripcnt
    - travelhospitalitylob.attachitemcnt
    fill_fields:
    - travelhospitalitylob.traveldate_month
    filters:
      travelhospitalitylob.traveldate_year: after 2017/06/01
      travelhospitalitylob.lineofbusiness: ''
    sorts:
    - travelhospitalitylob.traveldate_month desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: circle
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    colors:
    - 'palette: Green to Red'
    series_colors:
      travelhospitalitylob.totaltripcnt: "#ad69e0"
      travelhospitalitylob.attachitemcnt: "#78bad3"
    hidden_series: []
    series_labels:
      travelhospitalitylob.totaltripcnt: Total Bookings
      travelhospitalitylob.attachitemcnt: Attached Bookings
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: travelhospitalitylob.totaltripcnt
        name: Total Bookings
        axisId: travelhospitalitylob.totaltripcnt
      - id: travelhospitalitylob.attachitemcnt
        name: Attached Bookings
        axisId: travelhospitalitylob.attachitemcnt
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    reference_lines: []
    trend_lines: []
    listen:

    refresh: 1 day
    row: 5
    col: 12
    width: 12
    height: 7
  - name: Booking Collapsible Tree
    title: Booking Collapsible Tree
    model: travelhospitality
    explore: travelhospitalitylob
    type: collapsibletree
    fields:
    - travelhospitalitylob.traveldate_year
    - travelhospitalitylob.traveldate_month
    - travelhospitalitylob.lineofbusiness
    - travelhospitalitylob.totaltripcnt
    sorts:
    - travelhospitalitylob.traveldate_year desc
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    row: 22
    col: 0
    width: 24
    height: 11
  - name: HAR Eligibility for Car
    title: HAR Eligibility for Car
    model: travelhospitality
    explore: travelhospitalityhotelelig
    type: Liquidfill
    fields:
    - travelhospitalityhotelelig.careligibility
    filters:
      travelhospitalityhotelelig.traveldate_year: after 2018/01/01
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 0
    col: 19
    width: 5
    height: 5
  - name: HAR Eligibility for Air
    title: HAR Eligibility for Air
    model: travelhospitality
    explore: travelhospitalityhotelelig
    type: Liquidfill
    fields:
    - travelhospitalityhotelelig.aireligibility
    filters:
      travelhospitalityhotelelig.traveldate_year: after 2018/01/01
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 0
    col: 9
    width: 5
    height: 5
  - name: Booking % by LOB
    title: Booking % by LOB
    model: travelhospitality
    explore: travelhospitalitylob
    type: looker_donut_multiples
    fields:
    - travelhospitalitylob.lineofbusiness
    - travelhospitalitylob.totaltripcnt
    pivots:
    - travelhospitalitylob.lineofbusiness
    filters:
      travelhospitalitylob.traveldate_date: after 2018/01/01
    sorts:
    - travelhospitalitylob.totaltripcnt desc 0
    - travelhospitalitylob.lineofbusiness
    limit: 500
    query_timezone: America/Los_Angeles
    show_value_labels: true
    font_size: 13
    value_labels: legend
    label_type: labPer
    stacking: ''
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hide_legend: false
    series_colors: {}
    colors:
    - 'palette: Looker Classic'
    listen: {}
    row: 0
    col: 0
    width: 5
    height: 5
  - name: HAR Eligibility for Rail
    title: HAR Eligibility for Rail
    model: travelhospitality
    explore: travelhospitalityhotelelig
    type: Liquidfill
    fields:
    - travelhospitalityhotelelig.raileligibility
    filters:
      travelhospitalityhotelelig.traveldate_year: after 2018/01/01
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 0
    col: 14
    width: 5
    height: 5
  filters:
  - name: Select Date Range
    title: Select Date Range
    type: date_filter
    default_value: after 2018/01/01
    allow_multiple_values: true
    required: false
  - name: Select Company ID
    title: Select Company ID
    type: string_filter
    default_value: ''
    allow_multiple_values: true
    required: false
