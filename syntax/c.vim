"add by csd
"======================================================== 
" Highlight All 
"========================================================
 syn match cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
 syn match cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
 hi cFunction ctermfg=027
 "======================================================== 
 " Highlight All Math Operator 
 "========================================================
 " C math operators
 syn match cMathOperator display "[-+\*/%=]"
 " C pointer operators
 syn match cPointerOperator display "->\|\."
 " C logical operators - boolean results
 syn match cLogicalOperator display "[!<>]=\="
 syn match cLogicalOperator display "=="
 " C bit operators
 syn match cBinaryOperator display "\(&\||\|\^\|<<\|>>\)=\="
 syn match cBinaryOperator display "\~"
 syn match cBinaryOperatorError display "\~="
 " More C logical operators - highlight in preference to binary
 syn match cLogicalOperator display "&&\|||"
 syn match cLogicalOperatorError display "\(&&\|||\)="
 " Math Operator
 hi cMathOperator ctermfg=226
 hi cPointerOperator ctermfg=226
 hi cLogicalOperator ctermfg=226 
 hi cBinaryOperator ctermfg=226 
 hi cBinaryOperatorError ctermfg=226 
 hi cLogicalOperator ctermfg=226 
 hi cLogicalOperatorError ctermfg=226 
 "==========================================================