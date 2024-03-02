#show: memo.with(
$if(letterhead)$
  letterhead: "$letterhead$",
$endif$
$if(sender)$
  sender: [$sender$],
$endif$
$if(recipient)$
  recipient: [$recipient$],
$endif$
$if(re)$
  re: [$re$],
$endif$
$if(date)$
  date: [$date$],
$endif$
)
