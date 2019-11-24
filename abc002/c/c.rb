xa, ya, xb, yb, xc, yc = gets.split.map(&:to_f)
p ((xb-xa)*(yc-ya) - (xc-xa)*(yb-ya)).abs / 2
