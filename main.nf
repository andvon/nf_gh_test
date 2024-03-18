
process ABC {
	input:
	val test_val
	val sleep_time

	script:
	"""
	sleep ${sleep_time}
	"""
}

workflow {
	Channel
		.from([1,2,3,4,5])
		.set{ch_vals}

	ABC(ch_vals, params.sleep_time)
}
