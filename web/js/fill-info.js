/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

const totalPriceEle = document.getElementById('item-total-price');

function jsonEscape(str) {
    return str.replace(/\n/g, "\\\\n").replace(/\r/g, "\\\\r").replace(/\t/g, "\\\\t");
}

// get shipment info and update shipment cost
(async function () {
    const shipmentTypeSelectEle = document.getElementById('shipment-type-select');
    const shipmentCostEle = document.getElementById('shipping-cost');
    const totalBillEle = document.getElementById('total-bill');

    const getShipmentList = async () => {
        const response = await fetch('http://localhost:8080/g11/checkout/api/shipment-list', {
            method: 'GET'
        });

        const data = await response.text();
        if (data) {
            const dataTokens = data.split(';');

            if (dataTokens[0] === '200') {
                return dataTokens[1];
            }
        }

        return null;
    }

    const shipmentListJSON = await getShipmentList();

    if (shipmentListJSON) {
        const updateSelectedShipmentCost = (e) => {
            const selectedShipmentId = e.target.value;
            const selectedShipmentCost = shipmentList[selectedShipmentId - 1].cost;

            shipmentCostEle.innerHTML = `${new Intl.NumberFormat().format(selectedShipmentCost)}<sup>đ</sup>`;
            totalBillEle.innerHTML = `${new Intl.NumberFormat().format(selectedShipmentCost + totalPriceEle.value)}<sup>đ</sup>`;
        }

        const shipmentList = JSON.parse(shipmentListJSON);

// create shipment option for select
        shipmentList.forEach((shipment) => {
            const optionEle = new Option(shipment.type, shipment.id);
            shipmentTypeSelectEle.add(optionEle);
        });

// update cost on shipment change
        shipmentTypeSelectEle.addEventListener('change', updateSelectedShipmentCost);
    }

})();

// get order item info
(async function () {
    const selectedItemJSON = sessionStorage.getItem('selectedItem');

    if (selectedItemJSON == null) {
        window.location.pathname = "/g11/cart";
        return;
    }

    const selectedItemObject = JSON.parse(selectedItemJSON);
    const selectedItemIdArray = Object.keys(selectedItemObject);

// get item info
    const getOrderItemInfo = async () => {
        const response = await fetch(`http://localhost:8080/g11/checkout/api/order-item-info?orderitemid=${selectedItemIdArray.toString()}`, {
            method: "GET"
        });

        const data = await response.text();
        if (data) {
            const dataTokens = data.split(';');

            if (dataTokens[0] === '200') {
                return dataTokens[1];
            }
        }

        return null;
    }

    const responseData = await getOrderItemInfo();
    const orderItemInfoArray = JSON.parse(jsonEscape(responseData));

    let totalItemCost = 0;
    const orderItemContainer = document.getElementById('order-item');

//    insert item info
    orderItemInfoArray.forEach((orderItemInfo, index) => {
        const quantity = selectedItemObject[orderItemInfo.id];
        totalItemCost += orderItemInfo.price * quantity;

        orderItemContainer.insertAdjacentHTML('beforeend', `
            <li class="d-flex align-items-center justify-content-between">
                <div class="item-general-info me-3">
                      <img class="item-img me-1" src="${orderItemInfo.image}" />
                      <span class="item-name">${orderItemInfo.name}</span>
               </div>
               <div class="item-price d-flex align-items-center">
                       ${new Intl.NumberFormat().format(orderItemInfo.price)}
                       <sup>đ</sup>
                    <div class="item-multiplier ms-1">
                            x${quantity}
                   </div>
              </div>
            </li>
        `);
    });

// update total cost
    totalPriceEle.value = totalItemCost;
    totalPriceEle.innerHTML = `${new Intl.NumberFormat().format(totalItemCost)}<sup>đ</sup>`;
})();


// checkout
(function () {
    const payBtnEle = document.getElementById('pay-btn');

    payBtnEle.addEventListener('click', async () => {
        const selectedItemJSON = sessionStorage.getItem('selectedItem');

        if (selectedItemJSON == null) {
            window.location.pathname = "/g11/cart";
            return;
        }

// check payment type selected
        const selectedPaymentTypeEle = document.querySelector('input[name="payment-type"]:checked');
        if (selectedPaymentTypeEle == null) {
            document.querySelector('.payment-type-msg').innerText = "Vui lòng chọn phương thức thanh toán";
            return;
        }

        const selectedPaymentType = selectedPaymentTypeEle.value;
        const selectedShipmentType = document.getElementById('shipment-type-select').value;

        const response = await fetch('http://localhost:8080/g11/user/order/create', {
            method: 'POST',
            body: new URLSearchParams({
                selectedItemJSON,
                selectedPaymentType,
                selectedShipmentType
            })
        });

        const data = await response.text();
//        console.log(data);
    })
})()