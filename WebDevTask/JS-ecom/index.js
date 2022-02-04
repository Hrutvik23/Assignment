function SaveProduct(event) {
	//Get table body of product list table
	var tableBody = document.getElementById("dtTable").getElementsByTagName('tbody')[0];
	
	//Fetch variable values from Form
	var pname = document.getElementById('pname').value;
	var pPrice = document.getElementById('txtPrice').value;
	var pQTY = document.getElementById('txtQty').value;
	//Fetch file from file input
	var pIMG = document.getElementById('pimage').files[0];
	var ImageURL = (pIMG != undefined) ? URL.createObjectURL(pIMG) : "";
	
	//Create Image tag
	var img = document.createElement("img");
	img.style.width = "50px";
	img.style.height = "50px";
	img.src = ImageURL
	// -1 is used to add row after last row
	var row = tableBody.insertRow(-1);
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	var cell5 = row.insertCell(4);
	
	//Set values in table
	cell1.appendChild(img);
	cell2.innerHTML = pname;
	cell3.innerHTML = pPrice;
	cell4.innerHTML = pQTY;
	cell5.innerHTML = '<button type="button" class="btnDelete" onclick="deleteRow(this);">Delete</button><button type="button" class="btnAddToCart" onclick="addtocart(this,\'' + ImageURL + '\');">Add to Cart</button>';
	
	//Reset the form
	document.getElementsByClassName("CreateProductForm")[0].reset();
}

function deleteRow(btn) {
	var row = btn.parentNode.parentNode;
	row.parentNode.removeChild(row);
}

function removeItemFromCart(btn) {	
	var row = btn.parentNode.parentNode;
	//Get OrderTotal value
	var orderTotal = parseInt(document.getElementById("total").textContent);
	var pPrice = parseInt(row.cells[2].textContent.trim());
	var pQTY = parseInt(row.cells[3].textContent.trim());
	//Decrement order as in item is getting deleted
	orderTotal -= pPrice * pQTY;
	document.getElementById("total").textContent = orderTotal;
	row.parentNode.removeChild(row);
}

function addtocart(btn, strImg){
	//Get tbody of cartTable
	var tableBody = document.getElementById("cartTable").getElementsByTagName('tbody')[0];
	//Get Existing orderTotal value and check whether if it is empty or not
	var orderTotal = (document.getElementById("total").textContent != "") ? parseInt(document.getElementById("total").textContent) : 0;
	
	//Fetch row from which button is clicked.
	var row = btn.parentNode.parentNode;
	//Set values in variables
	var pname = row.cells[1].textContent.trim();
	var pPrice = parseInt(row.cells[2].textContent.trim());	//Convert to int
	var pQTY = parseInt(row.cells[3].textContent.trim());	//Convert to int
	//Set OrderTotal as soon as item in cart is added
	orderTotal += pPrice * pQTY;
	//Set text of OrderTotal element.
	document.getElementById("total").textContent = orderTotal;
	
	//Set table content according to variables
	var img = document.createElement("img");
	img.style.width = "100px";
	img.style.height = "100px";
	img.src = strImg;
	// -1 is used to add row after last row
	var row = tableBody.insertRow(-1);
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	var cell5 = row.insertCell(4);
	cell1.appendChild(img);
	cell2.innerHTML = pname;
	cell3.innerHTML = pPrice;
	cell4.innerHTML = pQTY;
	cell5.innerHTML = '<button type="button" class="btnRemoveItem" onclick="removeItemFromCart(this);">Delete</button>';
}
