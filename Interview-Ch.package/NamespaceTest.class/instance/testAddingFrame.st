testing
testAddingFrame
"You can add a Frame to a Namespace if it’s not anonymous."
| abcFrame |
self  shouldRaiseError: [myNamespace add: Frame new].
self shouldnt: [myNamespace add: (abcFrame:= Frame named: 'abc')] raise: Exception.

"You can ask a Namespace for a Frame, if you know its name"
myNamespace add: myFrame.
(myNamespace frameNamed: 'abc') == abcFrame.
"name is identifier, no dublicates"
self  shouldRaiseError: [myNamespace add: (Frame named: 'abc')].