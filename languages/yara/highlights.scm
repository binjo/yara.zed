; Comments
(comment) @comment

; Preprocessor / Top-level Keywords
[
  "import"
  "include"
] @keyword.control

[
  "private"
  "global"
] @keyword.modifier

"rule" @keyword

; Sections (Emacs warning face)
[
  "meta"
  "strings"
  "condition"
] @keyword.control

; Rule details
(rule_definition
  name: (identifier) @function)

(tag) @tag

; Meta definition keys
(meta_definition
  key: (identifier) @property)

; Variables and String Identifiers
(string_identifier) @variable

; Literals
(integer_decimal_positive) @constant.numeric
(integer_zero) @constant.numeric
(integer_hexadecimal) @constant.numeric
(size_unit) @constant.numeric
(double_quoted_string) @string
(single_quoted_string) @string
(escape_sequence) @string.escape
(text_string) @string

[
  "true"
  "false"
] @constant.boolean

; Hex Strings
(hex_string) @string.special
(hex_seq) @string.special
(hex_byte) @constant.numeric
(hex_jump) @constant.numeric

; Regular expressions
(regex_string) @string.regexp
(regular_expression) @string.regexp

; Control structures and keywords
[
  "for"
  "in"
  "of"
] @keyword.control

[
  "all"
  "any"
  "none"
  "them"
] @keyword.control

; String modifiers
[
  "wide"
  "ascii"
  "nocase"
  "fullword"
  "xor"
  "base64"
  "base64wide"
] @keyword.modifier

; Built-ins
[
  (filesize_keyword)
] @constant.builtin

; Modules and Functions (e.g. pe.import_rva)
(module_identifier) @type
(module_var_or_func name: (identifier) @function)

; Built-in functions & types matching Emacs
((identifier) @function.builtin
  (#match? @function.builtin "^(int(8|16|32)(be)?|uint(8|16|32)(be)?|math\\.[a-z_]+)$"))

; General identifiers (fallback)
(identifier) @variable

; Operators
[
  "and"
  "or"
  "not"
  "defined"
  "matches"
  "contains"
  "icontains"
  "startswith"
  "istartswith"
  "endswith"
  "iendswith"
  "iequals"
] @keyword.operator

[
  "="
  "=="
  "!="
  "<"
  ">"
  ">="
  "<="
  "+"
  "-"
  "*"
  "\\"
  "%"
  ".."
  "|"
] @operator

; Punctuation & Delimiters
[
  ":"
  "{"
  "}"
  "["
  "]"
  "("
  ")"
  ","
] @punctuation.delimiter
