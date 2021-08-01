function isValid(e) {

	
    const date = document.getElementById("date").value;
    let status = true;
    let msg = "Can not book for past dates.";
    const res = true;
    
    const choosed_date = new Date(date);
    const today_date = new Date();

    const contd1 = (choosed_date.getMonth() + 1) < (today_date.getMonth() + 1);

    if (choosed_date.getFullYear() > today_date.getFullYear()) {
        msg = "Can not book for next year.";
        status = false;
    }
    else {
        if ((choosed_date.getMonth() + 1) <= (today_date.getMonth() + 1)) {
            if (choosed_date.getDate() < today_date.getDate()) {
                status = false;
            }
            else {
                if (contd1) {
                    status = false;
                }
            }
        }
    }

    if (status === false) {
        document.getElementById('error').setAttribute('class', 'a');
        document.getElementById('error').innerHTML = msg;
        event.preventDefault();
    }
    else {
        document.getElementById('error').setAttribute('class', '');
        document.getElementById('error').innerHTML = "";
        res = false;
    }
return res;
}
