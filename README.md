go install -tags extended github.com/gohugoio/hugo@latest
sudo cp ../gopath/bin/hugo /usr/bin/

cd themes/
git clone https://github.com/devcows/hugo-universal-theme

hugo server -D -w -p8000
hugo

docker build -t iniciativeplus/quickstart:v0.0.0 .
docker run -d -p 8080:8080 iniciativeplus/quickstart:v0.0.0
docker push iniciativeplus/quickstart:v0.0.0
