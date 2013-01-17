package "libpq-dev"

bash "Install pg gem" do
user "root"
code <<-EOH
gem install  --no-rdoc --no-ri  pg
EOH
end

