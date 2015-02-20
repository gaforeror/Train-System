function loadUsers(){
	var myUrl= document.URL.substring(0,document.URL.indexOf('trainSystem/')+12)+'user/loadUsers'
	jQuery
	.ajax({
		type : 'POST',
		url : myUrl,
		success : function(data, textStatus) {
			for (var i = 0; i < data.length; i++) {
				$('#userList')
						.append(
                                                                                '<tr><td>'
                                                                                + data[i].id
                                                                                + '</td><td>'
										+ data[i].firstname
										+ '</td><td>'
                                                                                + data[i].lastname
                                                                                + '</td><td>'
										+ data[i].email
										+ '</td><td>'
										+ data[i].passwordHash.substring(0,16).concat("...")
										+'</td><td>'
                                                                                + data[i].birth
										+'</td><td>'
                                                                                + data[i].documentType
										+'</td><td>'
                                                                                + data[i].documentNumber
										+'</td><td>'
                                                                                + data[i].role
										+'</td></tr>'
                                                                                );

			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
		}
	});
	
}