remote_file "/usr/local/src/redis-2.2.4.tar.gz" do
source "http://redis.googlecode.com/files/redis-2.2.4.tar.gz"
end

bash "Extract and Install Redis" do
user "root"
cwd "/usr/local/src"
code <<-EOH
tar xvzf redis-2.2.4.tar.gz
cd redis-2.2.4
./configure
make
make install
EOH
end


