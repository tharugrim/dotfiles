function x2termite {
    xrdb -n $1 | awk '($1 ~ /^*(color.)|(....ground):$/){ print substr($1, 2, length($1)-2) " = " $2 }'
}
