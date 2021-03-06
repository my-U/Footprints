<%@ Page Title="Dr.Self 공지사항" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="notice_board_read.aspx.cs" Inherits="board_read" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

/* width */
::-webkit-scrollbar {
  width: 10px;
}

/* Track */
::-webkit-scrollbar-track {
  background: #f1f1f1; 
}
 
/* Handle */
::-webkit-scrollbar-thumb {
  background: #888; 
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background: #555; 
}

        *::selection 
{
    background-color: #63CC63;
    color: white;
}

        .auto-style1 {
            height: 1600px;
            width: 1280px;
            background-color:white;
            text-align: center;
        }

        .board_kor
        {
            font-size:50px;
        }

        .board
        {
            font-size:20px; /*크기좀 늘려야할듯?*/
            color:#787878;
        }

/*이름---------------------------------------------------------------------------------------------------------*/
        .input_namediv
        {
            /*border-bottom:0.5px solid black;*/
            background-color:white;
            width:1000px;
        }

        .name_kor
        {
            margin-left:-770px;
        }

        .input_name
        {
            font-size: 12pt;
            font-weight: bold;
            font-family:NanumSquareRound;            
        }

/*이메일---------------------------------------------------------------------------------------------------------*/

        .input_emaildiv
        {
            background-color:white;
            width:1000px;
        }

        .email_kor
        {
            margin-left:-760px;
        }

        .input_email
        {
             font-size: 12pt;
            font-weight: bold;
            font-family:NanumSquareRound;                
        }

/*제목---------------------------------------------------------------------------------------------------------*/
        .input_titlediv
        {
            background-color:white;
            width:1000px;
        }

        .title_kor
        {
            margin-left:-770px;
        }

        .input_title
        {
             font-size: 12pt;
            font-weight: bold;
            font-family:NanumSquareRound;                
        }

/*내용---------------------------------------------------------------------------------------------------------*/
        .input_contentdiv
        {
            background-color:white;
            width:1000px;
        }

        .content_kor
        {
            margin-left:-770px;
        }

        .input_content
        {
            font-size: 12pt;
            font-weight: bold;
            font-family:NanumSquareRound;
            text-align: left; 
        }

/*비밀번호---------------------------------------------------------------------------------------------------------*/
        .input_passwddiv
        {
            background-color:white;
            width:1000px;
        }

        .passwd_kor
        {
            margin-left:-700px;
        }

        .input_passwd
        {
            font-size: 12pt;
            font-weight: bold;
            font-family:NanumSquareRound;
            margin-left:-405px;
        }

/*하단 버튼---------------------------------------------------------------------------------------------------------*/

        .button_cancel
        {
            font-size: 15pt;
            font-weight: bold;
            font-family:NanumSquareRound;

            background-color: #a0a0a0;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 80px;
            height:50px;
        }

        .button_cancel:hover
        {
            opacity:0.8;
        }

        .button_submit
        {
            font-size: 15pt;
            font-weight: bold;
            font-family:NanumSquareRound;

            background-color: #A1B859;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 80px;
            height:50px;
        }

        .button_submit:hover
        {
            opacity:0.8;
        }

        .button_list
        {
            font-size: 15pt;
            font-weight: bold;
            font-family:NanumSquareRound;

            background-color: #A1B859;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100px;
            height:50px;
        }

        .button_list:hover
        {
            opacity:0.8;
        }

        .reply_btn
        {
            font-size:20pt;
            font-family:NanumSquareRound;
            background:none;
            border:none;
            font-weight:900;
        }


</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1">

        <br /><br /><br /><br /><br /><br />

        <!--게시판 문구-->
        <div class="board_kor" align="center">공지사항</div>

        <!--Board 문구-->
        <div class="board" align="center">NOTICE</div>

        <br /><br />
        <hr />

        <br /><br /><br /><br /><br />


        <!--이름-->
        <center>
        <div align="center" class="input_namediv">
            <p class="name_kor">이름</p>
                <asp:TextBox ID="TextBox1" runat="server"  Height="40px" Width="800px" class="input_name" ReadOnly="True"></asp:TextBox>
        </div>
        </center>

       <br />

        <!--이메일-->
        <center>
            <div class="input_emaildiv">
                <p class="email_kor">작성일</p>
                <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="800px" class="input_email" ReadOnly="True"></asp:TextBox>
            </div>
        </center>

            <br />

        <!--제목-->
        <center>
            <div class="input_titlediv">
                <p class="title_kor">제목</p>
                <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="800px" class="input_title" placeholder="글 제목 입력 (최대 50자)" MaxLength="50" ReadOnly="True"></asp:TextBox>
            </div>
        </center>

        <br /><br />

        <!--내용-->
        <center>
            <div class="input_contentdiv">
                <p class="content_kor">내용</p>
                <asp:TextBox ID="TextBox4" runat="server" Height="400px" Width="800px" class="input_content" TextMode="MultiLine" placeholder="글 내용 입력 (최대 1000자)" MaxLength="1000" ReadOnly="True"></asp:TextBox>
            </div>
        </center>

        <br />

        <!--암호-->

        <br /><br /><br />

     <!--하단 버튼-->
        <asp:Button ID="Button1" runat="server" Text="수정"  CssClass="button_submit"/>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="삭제" CssClass="button_submit"/>&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <!--margin값 주기 귀찮음-->
        <asp:Button ID="Button3" runat="server" Text="글 목록" CssClass="button_list" OnClick="Button3_Click"/>
        </div>

</asp:Content>

