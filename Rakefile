ZSH_FILES = File.expand_path(File.dirname(__FILE__))

task :default => [:link_dotfiles, :link_bin]

task :link_dotfiles do
  %w(zshrc zshenv).each do |script|
    ln_zshfile_with_backup script, ".#{script}"
  end
end

task :link_bin do
  Dir.glob(File.join("bin", "*")).each do |script|
    ln_zshfile_with_backup script, script, true
  end
end

def ln_zshfile_with_backup(source_file, target_file, make_executable = false)
  source_file = File.join(ZSH_FILES, source_file)
  target_file = File.join(ENV["HOME"], target_file)

  if File.exist?(target_file)
    mv(target_file, "#{target_file}.#{Time.now.to_i}") 
  else
    mkdir_p File.dirname(target_file)
  end

  ln_s source_file, target_file
  chmod(0755, target_file) if make_executable
end
