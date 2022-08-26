@echo off
g++ csvs_marks.cpp -o csvs_marks
del final.csv
pause
for /l %%i in (1,1,10) do (
	csvs_marks.exe < "./source/2022“杭电杯”中国大学生算法设计超级联赛（%%i）.csv" > "%%i.csv"
)

pause