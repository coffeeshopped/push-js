import * as Rx from 'rxjs'
const BehaviorSubject = Rx.BehaviorSubject

const min = new BehaviorSubject(0)
const max = new BehaviorSubject(127)

const latest = Rx.combineLatest(min, max).pipe(
  Rx.map(([min, max]) => `${min} ... ${max}`)
)

latest.subscribe(s => console.log(s))

min.next(2)

const label = new Rx.from(["hi", "hello", "ok"])
label.pipe(Rx.map(l => l)).subscribe(s => console.log(s))