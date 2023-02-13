package com.msk.controller;

public class Calculate {
    public static float getResult(String operator, float firstNumber, float secondNumber){
        float result = 0;
        switch (operator) {
            case "+":
                result = firstNumber + secondNumber;
                break;
            case "-":
                result = firstNumber - secondNumber;
                break;
            case "*":
                result = firstNumber * secondNumber;
                break;
            case "/":
                result = firstNumber / secondNumber;
        }

        return result;
    }
}
