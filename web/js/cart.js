/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//select all checkbox
(function () {
    const allCheckbox = Array.from(document.getElementsByClassName('form-check-input'));

    document.getElementById('select-all-checkbox').addEventListener('change', function () {
        const checkboxStatus = this.checked;

        allCheckbox.forEach((element) => {
            element.checked = checkboxStatus;
        });
    });
})();

//remove item in cart
(function () {
    Array.from(document.getElementsByClassName('delete-item-btn')).forEach((element) => {
        element.addEventListener('click',  function() {
//            fetch
            const fetchResult = true;
            
            if(fetchResult) {
                document.querySelector(`.item[itemId="${this.getAttribute('for')}"]`).remove();
            }
        });
    })
})();