/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

(function () {
    const addToCartBtn = document.querySelector('#add-to-cart');
    addToCartBtn.addEventListener('click', async function () {
        const formData = new URLSearchParams();
        const itemId = document.getElementById('item-detail').getAttribute('itemid');
        const quantity = document.querySelector('.number > input').value;
        console.log(itemId, quantity)
        formData.append('itemid', itemId);
        formData.append('quantity', quantity);

        const response = await fetch('cart/add-to-cart',
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
                console.log('add thanh cong')
            } else if (dataTokens[0] === '503') {
                console.log('add that bai')
            }
        }
    });
})();