accessing
frameNamed: string
"You can ask a Namespace for a Frame, if you know its name"
^ frames detect:[:frame | frame hasName and:[frame name = string]]