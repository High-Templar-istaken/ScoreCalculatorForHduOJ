@echo off
g++ csvs_marks.cpp -o csvs_marks
del final.csv
pause
for /l %%i in (1,1,10) do (
	csvs_marks.exe < "./source/2022�����籭���й���ѧ���㷨��Ƴ���������%%i��.csv" > "%%i.csv"
)

pause