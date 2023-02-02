<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Sandbox.Test" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Carousel</title>
    <style>
        .carosuel-section {
            /*background-color: #f1f1f1;*/
            background-color: #fff;
            height: 100vh;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .carosuel {
            position: relative;
            width: 700px;
            height: 700px;
            /*border: 1px solid red !important;*/
            /*display:flex;
            flex:1;*/
            z-index: 2;
        }

        #rrTutors {
            /*border: 1px solid red !important;*/
            width: 100% !important;
            height: 100% !important;
        }

        #imgTutor {
            /*border: 1px solid red !important;*/
            width: 900px !important;
            object-fit: contain;
            overflow: hidden;
        }

        .profile-name {
            width: 100%;
            /*height: 100% !important;*/
            font-size: 42px !important;
            font-weight: bold;
            color: red;
            text-align: center;
            background-color: #fff;
            /*margin: 20px !important;*/
        }

        .profile-desc {
            font-size: 24px;
            color: red;
            text-align: center;
            /*background-color: #f1f1f1;*/
            /*padding: 10px !important;*/
            /*height: 100% !important;*/
            /*z-index: 9999 !important;*/
        }

        .rrRelativeWrapper {
            /*border: 1px solid red !important;*/
            /*width: 100% !important;*/
        }

        .rrClipRegion {
            /*border: 1px solid red !important;*/
            /*width: 100% !important;*/
        }

        #rrTutors_i0_imgTutor {
            width: 50% !important;
            height: 50% !important;
            object-fit: cover !important;
        }

        #rrTutors_i1_imgTutor {
            width: 50% !important;
            height: 50% !important;
            object-fit: cover !important;
        }

        #rrTutors_i2_imgTutor {
            width: 50% !important;
            height: 50% !important;
            object-fit: cover !important;
        }

        .carousel-item {
            display: flex !important;
            flex-direction: column !important;
            align-items: center !important;
            background-color: #fff !important;
            height: 100% !important;
        }

        .rrItemsList {
            width: 100% !important;
            height: 100% !important;
        }

        .rrItem {
            width: 100% !important;
            height: 100% !important;
            position: absolute !important;
            top: 0px !important;
            left: 0px !important;
        }

        .img-right:hover {
            opacity: 0.6 !important;
            background-color: #f1f1f1;
            border-radius: 50%;
            -webkit-box-shadow: 12px 8px 39px -20px rgba(0,0,0,0.75);
            -moz-box-shadow: 12px 8px 39px -20px rgba(0,0,0,0.75);
            box-shadow: 12px 8px 39px -20px rgba(0,0,0,0.75);
            padding: 5px;
        }

        .img-left:hover {
            opacity: 0.6 !important;
            background-color: #f1f1f1;
            border-radius: 50%;
            -webkit-box-shadow: 12px 8px 39px -20px rgba(0,0,0,0.75);
            -moz-box-shadow: 12px 8px 39px -20px rgba(0,0,0,0.75);
            box-shadow: 12px 8px 39px -20px rgba(0,0,0,0.75);
            padding: 5px;
        }
        /* ul.rrItemsList > li:nth-child(1){
            z-index:99 !important;
        }
        ul.rrItemsList > li:nth-child(2){
            z-index:999 !important;
        }
        ul.rrItemsList > li:nth-child(3){
            z-index:999 !important;
        }*/
        #navbar {
            width: 100%;
            height: 100px;
            overflow: hidden;
            background-color: palegreen;
            z-index: 99;
        }

        .sticky {
            position: fixed;
            top: 0;
            width: 100%;
        }

            .sticky + .content {
                padding-top: 60px;
            }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div id="navbar">
            <ul>
                <li>Item1</li>
                <li>Item1</li>
                <li>Item1</li>
                <li>Item1</li>
            </ul>
        </div>
        <div class="content">
            <h3>Sticky Navigation Example</h3>
            <p>The navbar will stick to the top when you reach its scroll position.</p>
            <p>Some text to enable scrolling.. Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>

        </div>
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
        <%--<div class="carosuel-section">

            <div class="carosuel">
                <div class="navigation-arrows">
                    <asp:Image ImageUrl="~/assests/images/arrow-right-solid.svg" class="img-right" ID="img_right" AlternateText="right" runat="server" Style="cursor: pointer; float: right; width: 40px; opacity: 0.2;  position: absolute; top: 20%; right: 90px; z-index: 99999999; transition: all 0.3s;" />
                    <asp:Image ImageUrl="~/assests/images/arrow-left-solid.svg" class="img-left" ID="img_left" AlternateText="left" runat="server" Style="cursor: pointer; float: left; width: 40px; opacity: 0.2; position: absolute; top: 20%; left: 90px; z-index: 99999999; transition: all 0.3s;" />
                </div>
                <telerik:RadRotator class="rotator" RotatorType="CarouselButtons" ID="rrTutors" runat="server" Width="100%" ItemWidth="100%" Height="800" ItemHeight="800" FrameDuration="1000">
                    <ItemTemplate>
                        <div class="carousel-item">
                            <asp:Image ID="imgTutor" runat="server" Width="50%"
                                ImageUrl='<%# Eval("ImageUrl") %>' AlternateText='<%# Eval("Name") %>' ToolTip='<%# Eval("Name") %>' />
                            <div style="font-weight: bold; font-size: 30px;" class="profile-name"><%# Eval("Name") %></div>
                            <div style="text-align: left; margin-left: 10px; margin-right: 10px" class="profile-desc"><%# Eval("Profile") %></div>
                        </div>
                    </ItemTemplate>
                    <ControlButtons LeftButtonID="img_left" RightButtonID="img_right" />
                </telerik:RadRotator>
            </div>
        </div>--%>

        <div class="carosuel-section">

            <div class="carosuel">
                <div class="navigation-arrows">
                    <asp:Image ImageUrl="~/assests/images/arrow-right-solid.svg" class="img-right" ID="img_right" AlternateText="right" runat="server" Style="cursor: pointer; float: right; width: 40px; opacity: 0.2; position: absolute; top: 20%; right: 90px; z-index: 99999999; transition: all 0.3s;" />
                    <asp:Image ImageUrl="~/assests/images/arrow-left-solid.svg" class="img-left" ID="img_left" AlternateText="left" runat="server" Style="cursor: pointer; float: left; width: 40px; opacity: 0.2; position: absolute; top: 20%; left: 90px; z-index: 99999999; transition: all 0.3s;" />
                </div>
                <telerik:RadRotator RotatorType="CarouselButtons" ID="rrTutors" runat="server" Width="100%" ItemWidth="100%" Height="800" ItemHeight="800" FrameDuration="1000">
                    <ItemTemplate>
                        <div class="carousel-item">
                            <asp:Image ID="imgTutor" runat="server" Width="50%"
                                ImageUrl='<%# Eval("ImageUrl") %>' AlternateText='<%# Eval("Name") %>' ToolTip='<%# Eval("Name") %>' />
                            <div style="font-weight: bold; font-size: 30px;" class="profile-name"><%# Eval("Name") %></div>
                            <div style="text-align: left; margin-left: 10px; margin-right: 10px" class="profile-desc"><%# Eval("Profile") %></div>
                        </div>
                    </ItemTemplate>
                    <ControlButtons LeftButtonID="img_left" RightButtonID="img_right" />
                </telerik:RadRotator>
            </div>
        </div>
    </form>
    <script>
        window.onscroll = function () { myFunction() };

        var navbar = document.getElementById("navbar");
        var sticky = navbar.offsetTop;

        function myFunction() {
            if (window.pageYOffset >= sticky) {
                navbar.classList.add("sticky")
            } else {
                navbar.classList.remove("sticky");
            }
        }
    </script>
</body>
</html>
