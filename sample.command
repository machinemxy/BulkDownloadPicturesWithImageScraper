#define the previous part and the the last part of the URL
url1="https://www.aitaotu.com/weimei/33401_"
url2=".html"

#use the loop to visit the series of webpages
lasti=2
for((i=1;i<=$lasti;i++))
do
	#joint the parts of URL to make it a completed URL
	fullurl=${url1}${i}${url2}
	#show the URL
	echo $fullurl
	#call the image scraper to download the jpg file in that webpage
	image-scraper $fullurl --format jpg
done
