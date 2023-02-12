const calculator = {
    displayValue: document.getElementsByClassName("calculator-screen")[0].value,
    firstNumber: null,
    operator: null,
    secondNumber: null,
};

function getFirstNumber(num) {
    if (calculator.firstNumber == null) {
        calculator.firstNumber = calculator.displayValue == '0' ? num : calculator.firstNumber;
        calculator.displayValue = calculator.firstNumber
    } else if (calculator.operator == null) {
        calculator.firstNumber = calculator.displayValue + num;
        calculator.displayValue = calculator.firstNumber;
    } else if (calculator.secondNumber == null) {
        calculator.secondNumber = calculator.secondNumber == null ? num : calculator.secondNumber;
        calculator.displayValue = calculator.secondNumber;
        setValueInput();
    } else {
        calculator.secondNumber = calculator.displayValue + num;
        calculator.displayValue = calculator.secondNumber;
        setValueInput();
    }
}

function setValueInput() {
    document.getElementById("firstNumber").setAttribute("value", calculator.firstNumber);
    document.getElementById("secondNumber").value = calculator.secondNumber;
    document.getElementById("operator").value = calculator.operator;
}

function handleOperator(operator) {
    if (calculator.firstNumber == null) {
        calculator.firstNumber = operator;
        calculator.displayValue = calculator.firstNumber;
    } else if (calculator.secondNumber == null && calculator.operator != null) {
        calculator.secondNumber = operator;
        calculator.displayValue = calculator.secondNumber;
    } else {
        calculator.operator = operator;
    }

}

function resetCalculator() {
    calculator.displayValue = '0';
    calculator.firstNumber = null;
    calculator.secondNumber = null;
    calculator.operator = null;
}

function updateDisplay() {
    const display = document.querySelector('.calculator-screen');
    display.value = calculator.displayValue;
}

updateDisplay();

const keys = document.querySelector('.calculator-keys');
keys.addEventListener('click', (event) => {
    const {target} = event;

    if (!target.matches('button')) {
        return;
    }

    if (target.classList.contains('operator')) {
        handleOperator(target.value);
        updateDisplay();
        return;
    }

    if (target.classList.contains('all-clear')) {
        resetCalculator();
        updateDisplay();
        return;
    }

    getFirstNumber(target.value);
    updateDisplay();
});


