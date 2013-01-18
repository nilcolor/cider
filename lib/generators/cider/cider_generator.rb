class CiderGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def generate_cider
    copy_file 'cider.example', "db/ciders/#{stamp}_#{file_name}.rb"
  end

  private

  def stamp
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end

  def file_name
    "#{name.underscore}"
  end
end
