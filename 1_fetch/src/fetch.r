library(sbtools)
download_data <-function(item_num='5d925066e4b0c4f70d0d0599',item_names='me_RMSE.csv',out_filepath='model_RMSEs.csv'){

	# Get the data from ScienceBase
	item_file_download(item_num, names = item_names, destinations = out_filepath, overwrite_file = TRUE)
	
	return (out_filepath)
	}