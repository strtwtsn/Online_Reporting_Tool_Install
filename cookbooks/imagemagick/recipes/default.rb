remote_file "/usr/local/src/ImageMagick.tar.gz" do
source "http://www.imagemagick.org/download/ImageMagick.tar.gz"
end

bash "Extract and Install ImageMagick" do
user "root"
cwd "/usr/local/src"
code <<-EOH
#tar xvzf ImageMagick.tar.gz
cd ImageMagick-6.8.1-9
./configure
make
make install
EOH
end
