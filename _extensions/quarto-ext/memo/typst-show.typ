#show: memo.with(
$if(letterhead)$
  letterhead: "$letterhead$",
$endif$
$if(sender)$
  sender: [$sender$],
$endif$
$if(receiver)$
  receiver: [$receiver$],
$endif$
$if(re)$
  re: [$re$],
$endif$
$if(date)$
  date: [$date$],
$endif$
)
