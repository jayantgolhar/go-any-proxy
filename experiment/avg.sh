# awk 'BEGIN { N = 2 }
#      { for (i = 1; i <= NF; i++) sum[i] += $i }
#      NR % N == 0 { for (i = 1; i <= NF; i++)
#                    {
#                        printf("%.6f%s", sum[i]/N, (i == NF) ? "\n" : " ")
#                        sum[i] = 0
#                    }
#                  }' sampleinput

awk 'BEGIN{FS=","} { for (i = 1; i <= NF; i++) sum[i] += $i } END { if (NR > 0) for (i = 1; i <= NF; i++){ printf "%d,", sum[i] / NR} printf "\n" }' sampleinput
