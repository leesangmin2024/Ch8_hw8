#!/bin/bash
inputs(){       # 정수를 입력받는 함수, ... 여러분이 작성하시오.
        while [ 1 ]
	do
		read -p "Enter two integers: " int1 int2
		if [ -z $int1 ]
		then
			echo "Please, re-enter two integers."
			continue
		else
			break
		fi
	done
}

exitPrompt() { # 연산 1개 진행 후 다음 연산 진행 여부를 묻는 함수
        read -p "Do you wish to continue? [y]es or [n]o: " ans
       	if [ $ans == 'n' ]
        then
                echo "Exiting the script. Have a nice day!"
                exit 1 # exit program, ... 여러분이 작성하시오.
        else
                return 0 # return while loop, ... 여러분이 작성하시오.
        fi
 }

while (true)
do
        clear
        printf "Choose from the following operations:  \n"
        printf "[a]Addition [b]Subtraction [c] Multiplication [d]Division \n"
        read -p "### Your choice: " choice

        case $choice in
         [aA])                  # calculation - add
                inputs
                res=$((int1+int2))
        ;;
         [bB])                  # calculation - sub
                inputs
                res=$((int1-int2))
        ;;
         [cC])                  # calculation - mul
                inputs
                res=$((int1*int2))
        ;;
         [dD])                  # caldulation - div
                inputs
                res=$((int1/int2))
        ;;
                                #... 나머지 연산은 여러분이 작성하시오.
        *)
                res=0
                echo "wrong choice!"
        esac

        echo "The result is: " $res
        exitPrompt
done
