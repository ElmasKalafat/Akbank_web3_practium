function oddOrEven(number) {
    let sum = 0;
    while (number) {
        sum += number%10;
        number = Math.floor(number/10);
    } alert(sum);
    if(sum % 2 === 0){
        console.log("Even")
    }else {
        console.log("Odd")
    }
}

oddOrEven(5689);

