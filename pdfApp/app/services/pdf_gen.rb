class PdfGen
	def self.generate(msg)
		hash = JSON.parse(msg).with_indifferent_access
		url = hash["file_name"]
		puts "#{hash["file_name"]}"

		# MiniMagick::Tool::Convert.new do |convert|
  # 			convert << "/home/wert/zadanie_cc/drag-drop/public#{url["url"]}"
  # 			convert.merge! ["-resize", "500x500", "-negate"]
  # 			convert << "output.pdf"
		# end
	end