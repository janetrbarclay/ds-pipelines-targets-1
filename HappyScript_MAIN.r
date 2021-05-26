
source(file.path("1_fetch","src","fetch.r"))
source(file.path("2_process","src","process.r"))
source(file.path("3_visualize","src","plot.r"))

get_data(item_num='5d925066e4b0c4f70d0d0599',item_names='me_RMSE.csv',out_file='model_RMSEs.csv')

process_data(data_file='model_RMSEs.csv', processed_data_file='model_summary_results.csv', diagnostic_output_file = 'model_diagnostic_text.txt')

plot_data(processed_data = 'model_summary_results.csv',figure_file='figure_1.png')