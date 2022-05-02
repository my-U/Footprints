﻿<%@ Page Title="공지사항 비밀번호 확인" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="notice_checkpw.aspx.cs" Inherits="MemberOnly_board_checkpw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>

        *::selection 
{
    background-color: #63CC63;
    color: white;
}
        .auto-style1 {
            height: 500px;
            width: 1280px;
            background-color:white;
            text-align:center;
        }

         .id_overlap_kor
        {
           font-size:25pt;
           color:#496003;
        }

        .auto-style2 {
            color: #FF3300;
        }

        .input_passwd
        {
            font-size: 15pt;
            font-weight: bold;
            font-family: NanumSquareRound;
        }

        .sub_btn
        {
            font-size:20pt;
            font-family:NanumSquareRound;
            background:none;
            border:none;
            font-weight:900;
        }

        .sub_btn:hover
        {
            color:#496003;
        }

        a{
            text-decoration:none;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script>

// input에서 Enter key 를 눌러서 Submit이 발생하는 것을 방지.

// 단, textarea는 제외

function CancelEnterKey()

{

var evt = (evt) ? evt : ((event) ? event : null);

var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);

if ((evt.keyCode == 13) && (node.type == "text")) { return false; }

}

 

// 2012/04/23 form에서 textbox(input type)인 경우 엔터키가 동작하지 않도록 함. by bhChoi
document.onkeypress = CancelEnterKey;


    </script>
    <div class="auto-style1">
        <br /><br /><br /><br />
        <span class="id_overlap_kor">공지사항 비밀번호 확인</span>
        <br />
        <br />
        <hr /> 
        <br />
        <br />
        <br />
        <br />
        * 글을 작성할 때 입력한 비밀번호를 입력하세요.<br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="input_passwd" TextMode="Password" Width="400px" Height="40px"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="auto-style2" ControlToValidate="TextBox1" ErrorMessage="[비밀번호]를 입력하세요"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2"></asp:Label>
               
        <br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" />
               
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="|  글 목 록  |" CssClass="sub_btn" CausesValidation="False" OnClick="Button2_Click" />
        <br /><br /><br /><br />  
    </div>
</asp:Content>

