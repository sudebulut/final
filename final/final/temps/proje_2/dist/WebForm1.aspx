<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="final.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="UTF-8">
  <title>CodePen - Proje_2</title>
  <link rel="stylesheet" href="./style.css">

</head>
<body>
    <form id="form1" runat="server">
        <!-- partial:index.partial.html -->
<div class="container">
<header class="header">
<h1 id="title"class="text-center"> Bugün Ne Yapsak ? </h1>
 <p id="description" class="description text-center">
      Naber yu ?
 </p>
 </header>
 <form id="survey-form">
    <div class="form-group">
      <label id="name-label" for="isim">İsim</label>
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
       <div class="form-group">
         <label id="number-label" for="number">
      Telefon Numarası</label>
      <input
        type="number"
        name="number"
        id="number"
        class="form-control"
        placeholder="Numaranızı giriniz <3"
        required
      />
    </div>

            <div class="form-group">
     <p>Nereye gitmek istersin ?</p>
            <asp:DropDownList runat="server" DataSourceID="SqlDataSource1" DataTextField="yer" DataValueField="yer">

            </asp:DropDownList>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:finalConnectionString %>' SelectCommand="SELECT [yer] FROM [Table_1]">

            </asp:SqlDataSource>
     </div>
         <div class="form-group">
      <p>Ne zaman çıkmak istersin ?</p>
                 <label>
        <input
          name="user-recommend"
          value="sabah"
          type="radio"
          class="input-radio"
          checked
        />Öğleden önce :(</label
      >
      <label>
        <input
          name="user-recommend"
          value="öğle"
          type="radio"
          class="input-radio"
        />Öğleden sonra :|</label
      >

      <label
        ><input
          name="user-recommend"
          value="akşam"
          type="radio"
          class="input-radio"
        />Akşam :)</label>
    </div>
       <div class="form-group">
           <asp:Button ID="Button2" runat="server" Text="gönder" OnClick="Button2_Click" />
      
    </div>
  </form>
</div>
<!-- partial -->
  <script  src="./script.js"></script>
    </form>
</body>
</html>
