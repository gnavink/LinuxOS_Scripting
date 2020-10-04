#! /usr/bin/awk -f

# Year : Month : Day : Recipient : D / W : Amount

BEGIN { FS = ":" }

/^[#]/	{ next }	# Should be /^#/; [...] gets colors right in vim. :-)

$5 == "W" { withdrawals[$4] += $6 }

$5 == "D" { deposits[$4] += $6 }

END {
	print "Deposit totals:"
	for (i in deposits)
		printf("\t%s: Rs.%g\n", i, deposits[i])

	print ""

	print "Withdrawal totals:"
	for (i in withdrawals)
		printf("\t%s: Rs.%g\n", i, withdrawals[i])
}
