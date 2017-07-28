// goflame.pb
// Golang flame generator
// v0.0.1 Johnny Morrice 2017-07-28

goflame: flame
;

flame:
obvious-problem
;

// convert the first character of a string to its uppercase equivalent

%trans upcase-first:
".*": 0 u ;
;

obvious-problem:
problem-description " " disbelief " " [ begging | insult ]
;

problem-description:
// FIXME placeholder text
	"The problem with Go is that it is so slow."
;

disbelief:
// FIXME placeholder text
	"I can't believe anyone would program in such a shoddy language."
;

begging:
// FIXME placeholder text
	"Won't Google do something?"
;

insult:
// FIXME placeholder text
	"But I don't expect you idiots to understand."
;
