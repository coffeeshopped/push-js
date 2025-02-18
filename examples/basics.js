import * as Rx from 'rxjs'
const BehaviorSubject = Rx.BehaviorSubject


const cmds = Rx.of(
  ["add", "first", Rx.of('a')],
  ["add", "second", Rx.of('b')],
  ["add", "third", Rx.of('c')],
  ["remove", "second"],
  ["add", "fourth", Rx.of('d')],
  ["remove", "first"]
)

const displayStack = cmds.pipe(
  Rx.scan((stack, cmd) => {
    console.log('new cmd!')
    switch (cmd[0]) {
      case "add":
        stack.push([cmd[1], cmd[2]])
        break
      case "remove":
        stack = stack.filter(a => a[0] != cmd[1])
        break
      // case "moveTop":
      //   break
    }
    return stack
  }, []),
  Rx.map(stack => {
    return stack.map((a, i) => {
      return a[1].pipe(Rx.map(cmd => [i, cmd]))
    })
  }),
  Rx.switchScan((acc, stack) => {
    return Rx.merge(...stack)
  })
)

displayStack.subscribe(s => console.log(s))
// const min = new BehaviorSubject(0)
// const max = new BehaviorSubject(127)
// 
// const latest = Rx.combineLatest(min, max).pipe(
//   Rx.map(([min, max]) => `${min} ... ${max}`)
// )
// 
// latest.subscribe(s => console.log(s))
// 
// min.next(2)
// 
// const label = new Rx.from(["hi", "hello", "ok"])
// label.pipe(Rx.map(l => l)).subscribe(s => console.log(s))