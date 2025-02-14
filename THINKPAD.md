
Each button, pad, and LCD character is a single resource. Initially connected to a stream that sends it a message to turn off.

Widgets can hook in to that stream, such that whatever *they* output becomes what is currently output by that resource.
When the widget is unhooked, the stream "behind" it takes back over and outputs its latest value.
So each resource has a stack of these streams.