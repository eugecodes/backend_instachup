class Image < ActiveRecord::Base
	belongs_to :article

  def to_s
    name
  end

	def set_url upload 
    if !!upload
      random_prefix = Array.new(16){[*"a".."z", *"0".."9"].sample}.join + "_"
      name = random_prefix + upload.original_filename
      directory = "public/images"
      dir = File.join(directory, name)
      File.open(dir, "wb") { |f| f.write(upload.read) }
      self.path = name
    end
  end
end
