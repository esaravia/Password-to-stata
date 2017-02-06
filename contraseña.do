clear all
sysdir set PERSONAL C:\Users\estef\Documents\Stata13\ado\personal\


noisily di as text _n(5)  _s(100) "Hola" _newline _s(95) "¿Como estás?" 
noisily di as text "Estoy.." _request(answer)

if "$answer" == "feliz" {
	noi di "Bueno"
}


else{
	if "$answer" != "feliz" {
	nobreak {
	quietly local i=1 
	while `i' <= 9 {
		forvalues `i'=1/9999 {
			forvalues `i'=9999/1 {
				forvalues `i'=1/9999 {
			di `i'
				}
			}
		}
	}
	}
}
}
