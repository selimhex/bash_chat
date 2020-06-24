<?
# this is the interface to shared chat log
# default chat log is:
$chatlog = "txt.txt";
if (!empty($_GET))
{

  if (!empty($_GET["user"]) && !empty($_GET["chat"]))
  {

#$linetoadd = $_GET["user"] & " " & $_GET["chat"];
$linetoadd = strval($_GET["user"]) . ": " . strval($_GET["chat"]);
system("if ! test -f \"".$chatlog."\"; then touch ".$chatlog."; fi");
system ("echo ". escapeshellarg(escapeshellcmd($linetoadd)) . " >> ".$chatlog."");
#system ("tail -n 11 txt.txt.temp > txt.txt");

#system ("cat txt.txt.temp > txt.txt");
#exec("tail -n 11 txt.txt", $log);
#file_put_contents('txt.txt', implode(PHP_EOL, $log) . PHP_EOL);

#echo strval($_GET["user"]);
  }
}
#system('ls '.escapeshellarg($dir));

?>
