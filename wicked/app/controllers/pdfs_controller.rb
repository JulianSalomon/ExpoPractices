class  PdfsController  <  ActionController::Base
	def  show
		get_model
		respond_to do |format|
			format.pdf do
				render pdf: "template", template: "../views/pdfs/template"  
			end
		end
	end

	def get_model
		@posts = Post.all
	end
end