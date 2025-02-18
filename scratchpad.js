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


["add", "id", displayObservable]
["remove", "id"]
["moveTop", "id"]


const displayStack = ?.pipe(
	Rx.scan((stack, cmd) => {
		switch (cmd[0]) {
			case "add":
        stack.push([cmd[1], cmd[2]])
				break
			case "remove":
        stack.filter(a => a[0] != cmd[1])
				break
			// case "moveTop":
      //   break
		}
    return stack
	}, [])
)
