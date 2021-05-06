/**
 * join_form checker
 * 
 * @author F1
 */

function MoveTab(txtObj, event) {
  let keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
  if (keyCode == 13) {
    let i;
    for (i = 0; i < txtObj.form.elements.length; i++)
      if (txtObj == txtObj.form.elements[i])
        break;
    i = (i + 1) % txtObj.form.elements.length;
    txtObj.form.elements[i].focus();
    return false;
  }
  else
    return true;
}

$(function () {
  // 정규식
	let idc=false;
  $('#mem_id').on('keyup', function () {

	const input = this;
    let idvalue = $('#mem_id').val().trim();
    const regid = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,20})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;

    if (idvalue.length < 5 || idvalue.length > 30) {
      idc=nopro(this, "아이디는 5~30자 입니다.");
    } else if (!regid.test(idvalue)) {
      idc=nopro(this, "이메일 주소를 다시 확인해주세요.");
    } else {
    $.ajax({
		"url" : "/recibee/jsp/IDDuplicate.do",
		"method": "post",
		"data" : {"mem_id" : idvalue},
		"dataType" : "json",
		"success" : function(result){
			if(result=="0"){
				idc=okpro(input);
			}else{
				idc=nopro(input, "중복된 ID입니다.");
			}
		},
		"error" : function(xhr){
			alert("오류 : " + xhr.status);
		}
	})
    }
  })
  
  let pwc=false;
  $("#mem_pass").on("keyup", function () {
    let pwvalue = $(this).val().trim();
    const regpw = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*()]).{8,16}$/;

    if (pwvalue.trim().length < 8 || pwvalue.trim().length > 16) {
      pwc=nopro(this, "비밀번호는 8~16자 입니다.");
    } else if (!regpw.test(pwvalue)) {
      pwc=nopro(this, "8~16자의 영문 대 소문자, 숫자, 특수문자를 사용하세요.")
    } else {
      pwc=okpro(this);
    }
  })
  
  let pwdc=false;
  $("#mem_dcpass").on("keyup", function () {
    let pwvalue = $(this).parents().find("#mem_pass").val().trim();
    let pwdcvalue = $(this).val().trim();

    if (pwvalue === pwdcvalue) {
      pwdc=okpro(this);
    } else {
      pwdc=nopro(this, "비밀번호가 일치하지 않습니다.");
    }
  })
  
  let nmc=false;
  $("#mem_name").on("keyup", function () {
    let namevalue = $("#mem_name").val().trim();
    const regname = /^[가-힣]{2,5}$/;

    if (namevalue.length < 2 || namevalue.length > 5) {
      nmc=nopro(this, "이름은 2~5자 사이입니다.");
    } else if (!regname.test(namevalue)) {
      nmc=nopro(this, "이름은 한글만 사용할 수 있습니다.")
    } else {
      nmc=okpro(this);
    }
  })
  
  let telc=false;
  let tel1=false;
  let tel2=false;
  let tel3=false;
  $("#mem_tel1").keyup(function () {
    let telvalue = $("#mem_tel1").val().trim();
    const regtel = /^(01[016789]{1}|02|0[3-9]{1}[0-5]{1})$/;
//	const regtel= /^02|0[13456789]+/;
//	const regtel = /^02.{0}|^01.{1}/;

    if (telvalue.length < 2 || telvalue.length > 3) {
      tel1=false;
    } else if (!regtel.test(telvalue)) {
      tel1=nopro(this, "잘못된 번호입니다.")
    } else{
      tel1=true;
    }
      
    if(tel1&&tel2&&tel3){
      telc=okpro(this);
    } else{
      telc=nopro(this, "잘못된 번호입니다.")
    }
      
    if ($(this).val().length >= 3) {
      $(this).next().focus();
    }
    
    });
    $("#mem_tel2").keyup(function (e) {
    let telvalue = $("#mem_tel2").val().trim();
    if (telvalue.length < 3 || telvalue.length > 4) {
      tel2=false;
    } else {
      tel2=true;
    }
    
    if(tel1&&tel2&&tel3){
        telc=okpro(this);
      } else{
        telc=nopro(this, "잘못된 번호입니다.")
      }
    
    if ($(this).val().length == 4) {
      $(this).next().focus();
      }
    });
    $("#mem_tel3").keyup(function (e) {
      let telvalue = $("#mem_tel3").val().trim();
      if (telvalue.length != 4) {
        tel3=false;
      } else{
        tel3=true;
      }
	
    if(tel1&&tel2&&tel3){
      telc=okpro(this);
    } else{
      telc=nopro(this, "잘못된 번호입니다.")
    }
  
    if ($(this).val().length == 4) {
      MoveTab(this, event);
      }
  });

  let alic=false;
  $('#mem_ali').on('keyup', function () {

	const input = this;
    let alivalue = $('#mem_ali').val().trim();

    if (alivalue.length < 2 || alivalue.length > 15) {
      alic=nopro(this, "아이디는 2~15자 입니다.");
    } else {
    $.ajax({
		"url" : "/recibee/jsp/AliDuplicate.do",
		"method": "post",
		"data" : {"mem_ali" : alivalue},
		"dataType" : "json",
		"success" : function(result){
			if(result=="0"){
				alic=okpro(input);
			}else{
				alic=nopro(input, "중복된 별명입니다.");
			}
		},
		"error" : function(xhr){
			alert("오류 : " + xhr.status);
		}
	})
    }
  })
  
  let birc=false;
  $("#mem_bir").on("change", function () {
    let birth = new Date($(this).val());
    let today = new Date();
    if ((today - birth) / 24 / 60 / 60 / 1000 >= 5113) {
      birc=okpro(this);
    } else {
      birc=nopro(this, "만 14세 미만의 어린이는 가입할 수 없습니다.")
    }
  })
  
	$('.button__center').hover(function () {
    if(idc&&pwc&&pwdc&&nmc&&telc&&alic&&birc){
      $(this).find(".site-btn").attr("disabled", false);
    }
	})

	function okpro(vinput) {
	  let msg = $(vinput).parents(".checkout__input").find('.checker');
	  $(msg).empty();
	  
	  let time = new Date().getTime();
	  
	  $('<img>', {
		  'src' : '../jsp/img/checkmark.gif?time=' + time,
		  'width' : '20px',
		  'height' : '20px'
	  }).appendTo(msg);
//  $(msg).append(" 확인").css('color', 'green');
	  return true;
  }
})


function nopro(vinput, text) {
  $(vinput).parents(".checkout__input").find('.checker').empty();
  $(vinput).parents(".checkout__input").find('.checker').html(text).css('color', 'red');
  return false;
}


