library(targets)source("1_fetch/src/fetch.r")source("2_process/src/process.r")source("3_visualize/src/plot.r")
tar_option_set(packages = c("tidyverse", "stringr", "sbtools", "whisker"))

list(
  # Get the data from ScienceBase
  tar_target(
    model_RMSEs_csv,
    download_data(out_filepath = "1_fetch/out/model_RMSEs.csv"),
    format = "file"
  ), 
  # Prepare the data for plotting
  tar_target(
    eval_data,
    process_data(in_filepath = model_RMSEs_csv),
  ),
  # Create a plot
  tar_target(
    figure_1_png,
    make_plot(out_filepath = "3_visualize/out/figure_1.png", eval_data), 
    format = "file"
  ),
  # Save the processed data
  tar_target(
    model_summary_results_csv,
    write_csv(out_filepath = "2_process/out/model_summary_results.csv", eval_data), 
    format = "file"
  ),
  # Save the model diagnostics
  tar_target(
    model_diagnostic_text_txt,
    generate_model_diagnostics(out_filepath = "model_diagnostic_text.txt", eval_data), 
    format = "file"
  )
)

