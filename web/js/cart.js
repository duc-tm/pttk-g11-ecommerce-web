/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

let currentBill = 0;
const billContainerEle = document.getElementById('bill-container');

function checkBillUpdate(updatedItem, checkboxChecked) {
    if (typeof updatedItem === 'object') {
//        checkbox update event
        if (checkboxChecked !== null) {
            const changeAmount = document.querySelector('.item-total-price > input[type="hidden"]').value;

            if (checkboxChecked) {
                currentBill += changeAmount;
            } else {
                currentBill -= changeAmount;
            }

            billContainerEle.innerText = currentBill;
        }

        const selector = updatedItem.querySelector('.item-selector');
        if (selector.checked) {
            updateBill();
        }
    } else if (typeof updatedItem === 'string' && updatedItem === 'all') {

    }

    function updateBill() {

    }
}

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

//update item amount
(function () {
    Array.from($('.item-counter > .minus')).forEach((ele) => {
        ele.addEventListener('click', function () {
            const input = $(this).parent().find('input');
            const itemElement = this.closest('.item[itemid]');
            const itemId = itemElement.getAttribute('itemId');

//            disable more event
            Object.assign(this.parentElement.style,
                    {
                        pointerEvents: 'none',
                        opacity: '0.4'
                    }
            );

            const fetchResult = fetchUpdate('');

            if (fetchResult.statusCode == 200) {
                let count = parseInt(input.val()) - 1;
                count = count < 1 ? 1 : count;
                input.val(count);
                input.change();

                const priceContainer = itemElement.querySelector('.item-total-price > input[type="hidden"]');
                priceContainer.value = fetchResult.totalPrice;
            } else {
                console.log(fetchResult);
            }

//          active more event
            Object.assign(element.parentElement.style,
                    {
                        pointerEvents: null,
                        opacity: null
                    }
            );
        });
    });

    Array.from($('.item-counter > .plus')).forEach((ele) => {
        ele.addEventListener('click', function () {
            var $input = $(this).parent().find('input');
            $input.val(parseInt($input.val()) + 1);
            $input.change();
            return false;
        });
    });

    function fetchUpdate(url) {
        const fetchResult = {statusCode: 200, totalPrice: 20000};
        return fetchResult;
    }

})();

//remove item in cart
(function () {
    Array.from(document.getElementsByClassName('delete-item-btn')).forEach((element) => {
        element.addEventListener('click', function () {
//            fetch
            const fetchResult = true;

            if (fetchResult) {
                document.querySelector(`.item[itemId="${this.getAttribute('for')}"]`).remove();
            }
        });
    })
})();


//checkout
(function () {
    const itemIdStr = Array.from(document.querySelectorAll('.item-selector[itemid]:checked')).reduce((total, element) => {
        const itemId = element.getAttribute('itemid');
        total += itemId + ";";
    }, "");

    const createOrderBtn = document.getElementById('pay-now');
    createOrderBtn.addEventListener('click', createOrder)

    async function createOrder() {
        const formData = new URLSearchParams();

        formData.append('itemIdStr', itemIdStr);

        const response = await fetch('http://localhost:8080/g11/user/order/create',
                {
                    method: "POST",
                    contentType: "application/x-www-form-urlencoded",
                    body: formData,
                }
        );

        const data = await response.text();

        if (data) {
            const dataTokens = data.split(';');
            if (dataTokens[0] === '201') {
                console.log('tao order')
            } else if (dataTokens[0] === '503') {
                console.log('tao that bai')
            }
        }
    }

})()