class PublicFiles
  attr_reader :list

  def initialize
    @list = Dir.children("public").select { |fname| File.ftype("public/#{fname}") == "file" }
  end

  def sort(order)
    list.sort_by! { |name| name.downcase }
    list.reverse! if order == "descending"
    list
  end

  def self.list(sort_order = "ascending")
    PublicFiles.new.sort(sort_order)
  end
end