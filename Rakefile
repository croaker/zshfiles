ZSH_FILES = File.expand_path(File.dirname(__FILE__))

task :default => [:update, :link_dotfiles, :link_bin]

task :update do
  `git submodule update --init`
end

task :link_dotfiles do
  %w(zshrc zshenv).each do |script|
    ln_with_backup script, ".#{script}"
  end
end

task :link_bin do
  Dir.glob(File.join("bin", "*")).each do |script|
    target = File.join('/usr', 'local', script)

    ln_with_backup script, target, true
  end
end

def ln_with_backup(source_file, target_file, make_executable = false)
  source_file = File.join(ZSH_FILES, source_file)
  target_file = File.join(ENV["HOME"], target_file) unless target_file =~ /\A\//

  if File.symlink?(target_file)
    puts "#{target_file} already linked, skipping.."
    return
  end

  if File.exist?(target_file)
    puts "#{target_file} exists, backing up and replacing!"
    mv target_file, "#{target_file}.#{Time.now.to_i}"
  else
    mkdir_p File.dirname(target_file)
  end

  ln_s source_file, target_file
  chmod(0755, target_file) if make_executable
end
