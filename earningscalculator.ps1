param($price,$reviewCount)

if($null -eq $price -or $null -eq $reviewCount)
{
	[float]$price = Read-Host "Game price"
	[int32]$reviewCount = Read-Host "Review count"
}

for ($i = 1; $i -lt 10; $i++) {
	$n = ($i * 10)
	$num = $price * $reviewCount * $n
	$steamCut = $num * 0.3 #$num * 30 / 100
	$num = $num - $steamCut 
	Write-Host "If 1 review = $n sales, the game made aprox: US$ $num" 
}

Write-Host "already removed 30% steam cut"