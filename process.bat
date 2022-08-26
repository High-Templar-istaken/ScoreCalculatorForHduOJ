@echo off
echo 编译中...
g++ csvs_marks.cpp -o csvs_marks
g++ marks_final.cpp -o marks_final
mkdir result
del final.csv
echo 预处理完成
pause
for /l %%i in (1,1,10) do (
	csvs_marks.exe < "./source/2022“杭电杯”中国大学生算法设计超级联赛（%%i）.csv" > "./result/%%i.csv"
)
echo 分段完成
pause
for /l %%i in (1,1,10) do (
	marks_final.exe < "./result/%%i.csv"
)
echo 结束
move final.csv "./result/final.csv"
pause