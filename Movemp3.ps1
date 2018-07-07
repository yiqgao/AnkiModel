#此处为单词列表，单词列表样式为每个单词一行
$content = Get-Content "C:\Users\teige\Desktop\test.txt"  -encoding utf8
foreach ($item in $content)
{
    #此处为解压后的mp3文件夹地址
    $path = 'C:\Users\teige\Documents\vocmp3\vocabularyMP3\'+$item+'.mp3'
    if (Test-Path $path)
    {
    #此处为Anki用户文件夹地址
    Copy-Item  $path   -Destination C:\Users\teige\AppData\Roaming\Anki2\用户1\collection.media
   }
}
