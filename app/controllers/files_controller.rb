class FilesController < ApplicationController

    def index
    end

    def upload
        upload = params[:babyfile]
        name =  upload.original_filename
        directory = "public/data"
        # create the file path
        path = File.join(directory, name)
        # write the file
        File.open(path, "wb") { |f| f.write(upload.read) }
        render :text => "File has been uploaded successfully"
        
    end
end
