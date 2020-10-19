Vagrant.configure do |config|
  config.vm.define "rabbitmq" do
    config.vm.provider "docker" do |d|
      d.image = "assignment/rabbitmq"
    end
  end

  config.vm.define "redis" do
    config.vm.provider "docker" do |d|
      d.image = "assignment/redis"
    end
  end
  
  config.vm.define "mysql" do
    config.vm.provider "docker" do |d|
      d.image = "assignment/mysql"
    end
  end 
end