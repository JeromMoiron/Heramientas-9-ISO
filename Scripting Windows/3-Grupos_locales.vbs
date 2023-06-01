On error Resume Next

'Nombres de los grupos'
srtGroup1 = "hombres"
srtGroup2 = "mujeres"

'Objeto para acceder al sistema de grupos'
set objGroup = GetObject("WinNT://./Groups")

srtGroup1 = objGroup.Create("group", srtGroup1)
objNewGroup.SetInfo

srtGroup2 = objGroup.Create("group", srtGroup2)
objNewGroup.SetInfo

On error Goto 0