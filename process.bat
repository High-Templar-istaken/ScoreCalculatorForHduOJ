@echo off
echo ������...
g++ csvs_marks.cpp -o csvs_marks
g++ marks_final.cpp -o marks_final
mkdir result
del final.csv
echo Ԥ�������
pause
for /l %%i in (1,1,10) do (
	csvs_marks.exe < "./source/2022�����籭���й���ѧ���㷨��Ƴ���������%%i��.csv" > "./result/%%i.csv"
)
echo �ֶ����
pause
for /l %%i in (1,1,10) do (
	marks_final.exe < "./result/%%i.csv"
)
echo ����
move final.csv "./result/final.csv"
pause