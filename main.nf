
process ABC {
	input:
	val test_val

	script:
	"""
	sleep 45
	"""
}

workflow {
	Channel
		.from([1,2,3,4,5])
		.set{ch_vals}

	ABC(ch_vals)
}