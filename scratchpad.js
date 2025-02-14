OUTPUTS

{
	type: 'text',
	row: 1,
	col: [0,8],
	stream: Observable<String>
}

{
	type: 'pads',
	origin: [0,0],
	size: [4,3],
	stream: Observable<[[Int]]>
}

{
	type: 'button',
	name: 'QUANTIZE',
	stream: Observable<Int>,
}

INPUTS

{
	myknob: {
		type: 'topknob',
		index: 0,
	},
	mybutt: {
		type: 'button',
		name: 'QUANTIZE',
	}
}

COMMANDS

EVENTS

