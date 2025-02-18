
Each button, pad, and LCD character is a single resource. Initially connected to a stream that sends it a message to turn off.

Widgets can hook in to that stream, such that whatever *they* output becomes what is currently output by that resource.
When the widget is unhooked, the stream "behind" it takes back over and outputs its latest value.
So each resource has a stack of these streams.

A widget declares which resources it uses to draw itself, and which it uses for input.
A widget can be a composite of other widgets?

A windowing system(?) takes these declarations into account to route commands for drawing, and input to where it needs to go.

If a widget is a child of another widget, and the child declares resources that are not declared by the parent widget, an error occurs. Or maybe it just gets silently clipped, but that seems likely to lead to confusion.

Each resource maintains a(n observable) stack of the latest commands for what to display on that resource. When a new version of that stack comes through, whatever is on top gets displayed.