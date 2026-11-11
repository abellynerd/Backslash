#Requires AutoHotkey v2.0
#SingleInstance Force

; Number Row 

; !1::Send("1")
; !2::Send("2")
; !3::Send("3")
; !4::Send("4")
; !5::Send("5")
; !6::Send("6")
; !7::Send("7")
; !8::Send("8")
; !9::Send("9")
; !0::Send("0")

+!1::Send("{^}{{}-1{}}")
+!2::Send("{^}2")
+!3::{
    Send("\sqrt{{}{}}")
    Sleep 30
    Send("{Left}")
}
+!9::Send("\left(")
+!0::Send("\right)")

; Top Row

!q::Send("\in")
!w::Send("-")
!e::{
    Send("\frac{{}{}}{{}{}}")
    Sleep 30
    Loop 3 {
        Send("{Left}")
        Sleep 30
    }
}
!r::Send("{+}")
!t::Send("\Rightarrow")
!y::Send("\Leftrightarrow")
!u::Send("\mathbb{{}R{}}")
!i::Send("\mathbb{{}N{}}")
!o::Send("\mathbb{{}C{}}")
!p::Send("\mathbb{{}Q{}}")
+![::Send("\left}|")
+!]::Send("\right|")

; Home Row

!a::Send("\alpha")
!s::{
    SumIndex := InputBox("Index (skip for blank)", "Summation")
    if SumIndex.Result = "Cancel" {
        return
    } else if SumIndex.Value = "" {
        Send("\sum")
        return
    }
    SumStart := InputBox("Start value:", "Summation")
    SumEnd := InputBox("End value:", "Summation")
    Send("\sum{{}" SumIndex.Value "=" SumStart.Value "{}}{{}" SumEnd.Value "{}}")
}
!d::{
    Send("_{{}{}}")
    Sleep 30
    Send("{Left}")
}
+!d::Send("_n")
!f::Send("{Left}")
!g::Send("{{}")
!h::Send("{}}")
!j::Send("{Right}")
!k::{
    Send("{^}{{}{}}")
    Sleep 30
    Send("{Left}")
}
+!k::Send("{^}n")
!l::Send("\varepsilon")
+!l::Send("\varepsilon>0")
!`;::Send("\delta")
+!`;::Send("\delta>0")
!'::Send("\lambda")

!Enter::{
    Send("{Enter}")
    Sleep 30
    Send("\[")
    Sleep 30
    Send("{Enter}")
    Sleep 30
    Send("{Tab}")
}

; Bottom row

!z::Send("\forall")
!x::Send("\exists")
!c::Send("\gamma")
!v::Send("\to")
!b::Send("\beta")
!n::Send("\cdots")
!m::Send("{=}")
!,::Send("\le")
!.::Send("\ge")

; Spacebar

!Space::Send("\")

; Lock function

backslashLock := false

!CapsLock:: {
    global backslashLock
    backslashLock := !backslashLock
    ToolTip backslashLock ? "{backslash} LOCK" : "Lock off"
    Sleep 1000
    ToolTip("")
}

#HotIf backslashLock

+1::Send("^{{}-1{}}")
+2::Send("^2")
+3::{
    Send("\sqrt{{}{}}")
    Sleep 30
    Send("{Left}")
}
+9::Send("\left(")
+0::Send("\right)")

q::Send("\in")
w::Send("-")
e::{
    Send("\frac{{}{}}{{}{}}")
    Sleep 30
    Loop 3 {
        Send("{Left}")
        Sleep 30
    }
}
r::Send("{+}")
t::Send("\Rightarrow")
y::Send("\Leftrightarrow")
u::Send("\mathbb{{}R{}}")
i::Send("\mathbb{{}N{}}")
o::Send("\mathbb{{}C{}}")
p::Send("\mathbb{{}Q{}}")
+[::Send("\left}|")
+]::Send("\right|")

a::Send("\alpha")
s::{
    SumIndex := InputBox("Index (skip for blank)", "Summation")
    if SumIndex.Result = "Cancel" {
        return
    } else if SumIndex.Value = "" {
        Send("\sum")
        return
    }
    SumStart := InputBox("Start value:", "Summation")
    SumEnd := InputBox("End value:", "Summation")
    Send("\sum{{}" SumIndex.Value "=" SumStart.Value "{}}{{}" SumEnd.Value "{}}")
}
d::{
    Send("_{{}{}}")
    Sleep 30
    Send("{Left}")
}
+d::Send("_n")
f::Send("{Left}")
g::Send("{{}")
h::Send("{}}")
j::Send("{Right}")
k::{
    Send("{^}{{}{}}")
    Sleep 30
    Send("{Left}")
}
+k::Send("{^}n")
l::Send("\varepsilon")
+l::Send("\varepsilon>0")
`;::Send("\delta")
+`;::Send("\delta>0")
'::Send("\lambda")

Enter::{
    Send("{Enter}")
    Sleep 30
    Send("\[")
    Sleep 30
    Send("{Enter}")
}

z::Send("\forall")
x::Send("\exists")
c::Send("\gamma")
v::Send("\to")
b::Send("\beta")
n::Send("\cdots")
m::Send("{=}")
,::Send("\le")
.::Send("\ge")

Space::Send("\")

!q::Send("q")
!w::Send("w")
!f::Send("f")
!p::Send("p")
!g::Send("g")
!j::Send("j")
!l::Send("l")
!u::Send("u")
!y::Send("y")
!`;::Send("`;")

!a::Send("a")
!r::Send("r")
!s::Send("s")
!t::Send("t")
!d::Send("d")
!h::Send("h")
!n::Send("n")
!e::Send("e")
!i::Send("i")
!o::Send("o")

!Enter::Send("{Enter}")

!z::Send("z")
!x::Send("x")
!c::Send("c")
!v::Send("v")
!b::Send("b")
!k::Send("k")
!m::Send("m")
!,::Send(",")
!.::Send(".")
!/::Send("/")

!Space::Send("{Space}")