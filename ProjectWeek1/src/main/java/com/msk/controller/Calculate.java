package com.msk.controller;

public class Calculate {
    public static float getResult(String operator, float firstNumber, float secondNumber){
        float res = 0;

        switch (operator) {
            case "+":
                res = firstNumber + secondNumber;
                break;
            case "-":
                res = firstNumber - secondNumber;
                break;
            case "*":
                res = firstNumber * secondNumber;
                break;
            case "/":
                res = firstNumber / secondNumber;
        }

        return res;
    }
}
