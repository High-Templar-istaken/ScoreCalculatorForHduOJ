@echo off
echo ������...
g++ csvs_marks.cpp -o csvs_marks
g++ marks_final.cpp -o marks_final
g++ merge.cpp -o merge
mkdir result
del "./result/final.csv"
del "./result/merge.csv"
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
echo �ּܷ������
pause
for /l %%i in (1,1,10) do (
	merge.exe < "./result/%%i.csv"
)
echo �ϲ����
move final.csv "./result/final.csv"
move MERGE.csv "./result/MERGE.csv"
echo �ѽ���
pause