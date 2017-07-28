// goflame.pb
// Golang flame generator
// v0.0.1 Johnny Morrice 2017-07-28

goflame:
	flame-para
;

flame-para:
	obvious-problem | rhetorical-question | call-to-arms | i-dont-see | personal-attack | sarcastic-agreement
;

// convert the first character of a string to its uppercase equivalent

%trans upcase-first:
".*": 0 u ;
;

go-prog:
	"go fmt" |
	"go install" |
	"go vet" |
	"go build" |
	"go tool"
;

language-feature:
	"whitespace character" |
	"lambda function" |
	"function literal" |
	"concurrency mechanism" |
	"semi-colon"

;

other-language:
	"Java" |
	"Cobol" |
	"INTERCAL" |
	"assembler"
;

language-rule:
	"one space between the function name and start of the code block is legal but 2 spaces is illegal" |
	"exported function names start with an uppercase character"
;

obvious-problem:
	problem-description " " disbelief " " [ call-to-arms | insult | emphasis ]
;

problem-description:
	"As you can see, the code has " language-feature "s in each required location."
;

disbelief:
	"I can't believe anyone would program in such a shoddy language." |
	question
;

insult:
	"Either the language designers must admit their language is poorly designed, or they need to fix the problem!" |
	"I have suffered for years from people like you who insist on having their favourite style when it comes to " language-feature "s."
;

emphasis:
	"Period." |
	"Which is surprising."
;

rhetorical-question:
	question " " [ sarcastic-answer | ill-just-use-x | insult ]
;

question:
	"Yes, I know I can write my own translator - but why?" |
	"Is this just an error in \"" go-prog "\" or an error in the language spec?" |
	"Really, lose adoption over compiler laziness?" |
	"So, I ask you - why is the above code illegal?" |
	"Why are you blindly accepting something so foolish?" |
	"Why would a language design enforce a feature that has no bearing on the compilation of the code?"
;

ill-just-use-x:
	"Heck, I can just stick with " other-language "..."
;

sarcastic-answer:
	"Very nice.  LOL." |
	"Give me a break..." |
	"So much for \"" go-prog "\" reformatting legal code into the approved format." |
	sarcastic-agreement
;

call-to-arms:
	address-start-part ", " when-middle-part " " do-better-end-part
;

address-start-part:
	"C'mon google" |
	"C'mon core developers"
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
	"Considering \"" go-prog "\" throws the same error" |
	"Given that you say \"" language-rule "\""
;

how-can-it-be-end-part:
	"I don't see how that is true." |
	"why favor one " language-feature " over another?" |
	"you are not reading the same language grammar that I am."
;

personal-attack:
	clarify-audience " " [ insult | statement | turn-question-back " " statement ]
;

statement:
	"There are things in a programming language that MUST be enforced, this should not be one of them." |
	"The \"really simple\" semicolon injection rules are violating the language grammar by incorrectly inserting a semi-colon where one was not required, nor requested." |
	"Ignoring the problem or flippantly asserting there is no problem, is the worst thing they can do as it goes against the very reasons you design a new language for in the first place." |
	"A programming language is a language and language is supposed to make sense in regards to its intended purpose." |
	"The behavior of the pre-processor is wrong." |
	i-dont-see
;

turn-question-back:
	"I would turn the question back to you."
;

clarify-audience:
	as-for-the-folks " saying \"" please-take-a-break "\" - sorry."
;

as-for-the-folks:
	"As for the folks on this thread" |
	"As for the core devs"
;

please-take-a-break:
	"get over it" |
	"go home" |
	"please, log off" |
	"write to the Readers Digest" |
	"write to the newspaper" |
	"please, become a Cobol Developer" |
	"please, remain a Cobol Developer" |
	"try chatting to Lennart Poettering"
;

sarcastic-agreement:
	"Yes, I agree with you that " [ "you" | "one" ] " " [ "can" | "cannot" ] " " take-the-biscuit |
	"Yes, looking at the documentation page " there-is-not emphasis
	"Ok, we can end the discussion but" there-is-not
;

take-the-biscuit:
	"take one part of the spec in isolation to prove a point." |
	"compile dust."
;

there-is-not:
	"there is no full formal EBNF grammar in the appendix." |
	"it is not the grammar."
;
