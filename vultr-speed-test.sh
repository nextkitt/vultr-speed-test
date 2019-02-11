#!/bin/bash
# Filename: vultr-speed-test.sh
# Author: http://github.com/nextkitt/

# My Report
# PING:
# round-trip min avg max stddev = 175.154 175.380 175.727 0.217 ms Silicon,Valley,Ca[美西,加州,硅谷]         sjo-ca-us-ping.vultr.com
# round-trip min avg max stddev = 176.754 178.604 180.170 1.221 ms Los,Angeles,Ca[美西,加州,洛杉矶]          lax-ca-us-ping.vultr.com
# round-trip min avg max stddev = 201.490 203.089 204.981 1.245 ms Chicago,Illinois[美东,芝加哥]             il-us-ping.vultr.com
# round-trip min avg max stddev = 205.632 206.570 207.370 0.700 ms Dallas,Texas[美中,德克萨斯州,达拉斯]      tx-us-ping.vultr.com
# round-trip min avg max stddev = 205.243 207.516 209.541 1.763 ms Seattle,Washington[美东,华盛顿州,西雅图]  wa-us-ping.vultr.com
# round-trip min avg max stddev = 203.639 212.538 219.464 5.969 ms Atlanta,Georgiaa[美东,乔治亚州,亚特兰大]  ga-us-ping.vultr.com
# round-trip min avg max stddev = 217.355 218.007 218.947 0.603 ms New,York,New,Jersey[美东,新泽西]          nj-us-ping.vultr.com
# round-trip min avg max stddev = 203.074 219.078 225.222 9.274 ms (Asia)Tokyo,Japan[日本,东京]              hnd-jp-ping.vultr.com
# round-trip min avg max stddev = 237.454 238.154 238.673 0.441 ms Miami,Florida[美东,佛罗里达州,迈阿密]     fl-us-ping.vultr.com
# round-trip min avg max stddev = 243.048 255.042 265.586 10.458 ms (AU),Sydney,Australia[悉尼]               syd-au-ping.vultr.com
# round-trip min avg max stddev = 243.722 261.497 271.623 12.609 ms Singapore[新加坡]                         sgp-ping.vultr.com
# round-trip min avg max stddev = 300.597 300.930 301.594 0.392 ms (EU),London,UK[英国,伦敦]                 lon-gb-ping.vultr.com
# round-trip min avg max stddev = 301.363 302.329 303.628 0.822 ms (EU),Frankfurt,DE[德国,法兰克福]          fra-de-ping.vultr.com
# round-trip min avg max stddev = 307.676 309.376 310.905 1.328 ms (EU),Amsterdam,NL[荷兰,阿姆斯特丹]        ams-nl-ping.vultr.com
# round-trip min avg max stddev = 309.370 312.344 316.901 3.272 ms (EU),Paris,France[法国,巴黎]              par-fr-ping.vultr.com
# 
# 
# Download:
#   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
#                                  Dload  Upload   Total   Spent    Left  Speed
#   0  100M    0 32890    0     0   6430      0  4:31:47  0:00:05  4:31:42  6431 Atlanta,Georgiaa[美东,乔治亚州,亚特兰大]  ga-us-ping.vultr.com
#   0  100M    0 32890    0     0   6258      0  4:39:15  0:00:05  4:39:10  6528 Miami,Florida[美东,佛罗里达州,迈阿密]     fl-us-ping.vultr.com
#   0  100M    0 27098    0     0   5507      0  5:17:20  0:00:04  5:17:16  5506 Silicon,Valley,Ca[美西,加州,硅谷]         sjo-ca-us-ping.vultr.com
#   0  100M    0 27098    0     0   5310      0  5:29:07  0:00:05  5:29:02  5311 Dallas,Texas[美中,德克萨斯州,达拉斯]      tx-us-ping.vultr.com
#   0  100M    0 27098    0     0   5266      0  5:31:52  0:00:05  5:31:47  5486 (Asia)Tokyo,Japan[日本,东京]              hnd-jp-ping.vultr.com
#   0  100M    0 27098    0     0   4835      0  6:01:27  0:00:05  6:01:22  5031 (EU),Frankfurt,DE[德国,法兰克福]          fra-de-ping.vultr.com
#   0  100M    0 27098    0     0   4793      0  6:04:37  0:00:05  6:04:32  4977 (EU),Amsterdam,NL[荷兰,阿姆斯特丹]        ams-nl-ping.vultr.com
#   0  100M    0 24202    0     0   4693      0  6:12:23  0:00:05  6:12:18  4693 New,York,New,Jersey[美东,新泽西]          nj-us-ping.vultr.com
#   0  100M    0 24202    0     0   4345      0  6:42:12  0:00:05  6:42:07  4609 Singapore[新加坡]                         sgp-ping.vultr.com
#   0  100M    0 21306    0     0   4215      0  6:54:37  0:00:05  6:54:32  4215 Chicago,Illinois[美东,芝加哥]             il-us-ping.vultr.com
#   0  100M    0 21306    0     0   3788      0  7:41:21  0:00:05  7:41:16  3957 (EU),London,UK[英国,伦敦]                 lon-gb-ping.vultr.com
#   0  100M    0 16962    0     0   3034      0  9:36:00  0:00:05  9:35:55  3147 Seattle,Washington[美东,华盛顿州,西雅图]  wa-us-ping.vultr.com
#   0  100M    0 14066    0     0   2613      0 11:08:49  0:00:05 11:08:44  2709 Los,Angeles,Ca[美西,加州,洛杉矶]          lax-ca-us-ping.vultr.com
#   0  100M    0 14066    0     0   2406      0 12:06:21  0:00:05 12:06:16  2535 (EU),Paris,France[法国,巴黎]              par-fr-ping.vultr.com
#   0  100M    0  6826    0     0   1234      0 23:36:13  0:00:05 23:36:08  1290 (AU),Sydney,Australia[悉尼]               syd-au-ping.vultr.com


domains=(
"(Asia)Tokyo,Japan[日本,东京]              hnd-jp-ping.vultr.com"
"Singapore[新加坡]                         sgp-ping.vultr.com"
"(AU),Sydney,Australia[悉尼]               syd-au-ping.vultr.com"
"(EU),Frankfurt,DE[德国,法兰克福]          fra-de-ping.vultr.com"
"(EU),Amsterdam,NL[荷兰,阿姆斯特丹]        ams-nl-ping.vultr.com"
"(EU),London,UK[英国,伦敦]                 lon-gb-ping.vultr.com"
"(EU),Paris,France[法国,巴黎]              par-fr-ping.vultr.com"
"Seattle,Washington[美东,华盛顿州,西雅图]  wa-us-ping.vultr.com"
"Silicon,Valley,Ca[美西,加州,硅谷]         sjo-ca-us-ping.vultr.com"
"Los,Angeles,Ca[美西,加州,洛杉矶]          lax-ca-us-ping.vultr.com"
"Chicago,Illinois[美东,芝加哥]             il-us-ping.vultr.com"
"Dallas,Texas[美中,德克萨斯州,达拉斯]      tx-us-ping.vultr.com"
"New,York,New,Jersey[美东,新泽西]          nj-us-ping.vultr.com"
"Atlanta,Georgiaa[美东,乔治亚州,亚特兰大]  ga-us-ping.vultr.com"
"Miami,Florida[美东,佛罗里达州,迈阿密]     fl-us-ping.vultr.com"
)


function func_test_ping() {
    for e in "${domains[@]}"
    do
        {
            domain=$(echo "$e" | awk '{print $NF}')
            report=$(ping -c 4  $domain | grep round-trip)
            echo "$report $e"
        }&
    done
    wait;
}

function func_test_download_run() {
    for e in "${domains[@]}"
    do
        {
            domain=$(echo "$e" | awk '{print $NF}')
            url="http://$domain/vultr.com.100MB.bin"
            mkdir -p /tmp/vultr-test/
            log="/tmp/vultr-test/$domain-download.log"
            echo "$e" > $log
            curl -o /dev/null "$url" >> $log 2<&1
        }&
    done

    {
        sleep 6;
        ps -ef | grep vultr.com.100MB.bin | grep -v grep | awk '{print $2}' | xargs kill
    }&
    wait;

}

function func_test_download_report() {
    # report
    ## title
    line=${domains[0]};
    domain=$(echo "$line" | awk '{print $NF}')
    cat /tmp/vultr-test/$domain-download.log | tr '\r' '\n'| sed -n '2,3p'  

    for e in "${domains[@]}"
    do
        {
            domain=$(echo "$e" | awk '{print $NF}')
            url="http://$domain/vultr.com.100MB.bin"
            mkdir -p /tmp/vultr-test/
            log="/tmp/vultr-test/$domain-download.log"
            report=$(cat "$log" |  tr '\r' '\n' | tail -2| tail -1)
            echo "$report $e"
        }
    done | sort -r -k7 -g
}

function func_test_download_detail_report() {
    ls /tmp/vultr-test/* | while read file; do cat $file | tr -s '\r' '\n';echo; done
}
function func_test_download() {
    func_test_download_run 2> /dev/null;
    func_test_download_report;
}

echo "PING: "
func_test_ping | sed 's#/# #g' | sort -k8 -g
echo;echo;echo "Download: "
func_test_download;
# func_test_download_detail_report;
