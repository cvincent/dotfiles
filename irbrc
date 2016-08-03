require "irb/completion"
require "pp"

IRB.conf[:AUTO_INDENT] = true

IRB.conf[:EVAL_HISTORY] = 10000
IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:HISTORY_FILE] = File::expand_path("./.irb-history")
