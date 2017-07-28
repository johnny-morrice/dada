// goflame.pb
// Golang flame generator
// v0.0.1 Johnny Morrice 2017-07-28

goflame: flame-para
;

flame-para:
obvious-problem | rhetorical-question | call-to-arms | i-dont-see | personal-attack
;

// convert the first character of a string to its uppercase equivalent

%trans upcase-first:
".*": 0 u ;
;

obvious-problem:
problem-description " " disbelief " " [ begging | insult | emphasis ]
;

problem-description:
	"As you can see, the code has semi-colons in each required location."
;

disbelief:
// FIXME placeholder text
	"I can't believe anyone would program in such a shoddy language." |
	question
;

begging:
// FIXME placeholder text
	"Won't Google do something?"
;

insult:
	"Either the language designers must admit their language is poorly designed, or they need to fix the problem!"
;

emphasis:
	"Period."
;

rhetorical-question:
	question " " [ sarcastic-answer | ill-just-use-x | insult ]
;

question:
	"Yes, I know I can write my own translator - but why?" |
	"Is this just an error in \"go fmt\" or an error in the language spec?"
	"Really, lose adoption over compiler laziness?" |
	"So, I ask you - why is the above code illegal?" |
	"Why are you blindly accepting something so foolish?" |
	"Why would a language design enforce a feature that has no bearing on the compilation of the code?"
;

ill-just-use-x:
	"Heck, I can just stick with Java..."
;

sarcastic-answer:
	"Very nice.  LOL." |
	"Give me a break..." |
	"So much for \"go fmt\" reformatting legal code into the approved format."
;

call-to-arms:
	address-start-part ", " when-middle-part " " do-better-end-part
;

address-start-part:
	"C'mon google"
;

when-middle-part:
	"when trying to pitch a new language"
;

do-better-end-part:
	"you can (and should) do better than this..."
;

i-dont-see:
	considering-start-part ", " how-can-it-be-end-part
;

considering-start-part:
	"Considering go fmt throws the same error"
;

how-can-it-be-end-part:
	"I don't see how that is true."
;

personal-attack:
	clarify-audience " " [ [ insult | statement ] | turn-question-back " " statement ]
;

statement:
	"There are things in a programming language that MUST be enforced, this should not be one of them."
	"The \"really simple\" semicolon injection rules are violating the language grammar by incorrectly inserting a semi-colon where one was not required, nor requested." |
	"Ignoring the problem or flippantly asserting there is no problem, is the worst thing they can do as it goes against the very reasons you design a new language for in the first place."
	i-dont-see
;

turn-question-back:
	"I would turn the question back to you."
;

clarify-audience:
	"As for the folks on the thread saying \"get over it\" - sorry."
;
