<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v16.1, Version=16.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
    <title></title>

    <style type="text/css">
        *:focus {
            outline: dotted 5px #000;
        }
        div.custom {
            padding: 5px;
            width: 90%;
            border: solid 2px #000000;
            margin: 10px;
            font: bold larger "Courier New", Courier, monospace;
            white-space: inherit;
        }
        #banner {height:50px;background:#ff8c00;
            text-align: center;
        }

        #main {float:left;

            height:280px;
            padding:5px;
            background:#f0e68c}
        #search {background:#ffff00;font-size:small; padding:5px;}

        .hidden{
            position: absolute;
            left: -999px;
        }
    </style>

    <script type="text/javascript">
        function toggleSkipLinks(s, e) {
            document.getElementById('skipLinks').classList.toggle('hidden');
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div id="skipLinks" class="hidden">
            <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" width="200px" headertext="Skip repetitive navigation links">
                <PanelCollection>
                    <dx:PanelContent>
                        <a href="#main" onfocus="toggleSkipLinks();" onblur="toggleSkipLinks();">Skip to main content</a>  
                    </dx:PanelContent>
                </PanelCollection>
            </dx:ASPxRoundPanel>
        </div>       

    <h1 class="auto-style1">Repetitive Navigation Links</h1>

        <div class="custom" id="banner" tabindex="0">
            <dx:ASPxMenu ID="ASPxMenu2" TabIndex="0" runat="server" ShowPopOutImages="true"  AccessibilityCompliant="True">
                <Items>
                        <dx:MenuItem Text="About Company">
                            <Items>
                                <dx:MenuItem Text="Customer Service">
                                </dx:MenuItem>
                            </Items>
                        </dx:MenuItem>
                        <dx:MenuItem Text="">
                        </dx:MenuItem>
                        <dx:menuitem Text="Products">
                            <Items>
                                <dx:MenuItem Text="Clothing">
                                </dx:MenuItem>
                                <dx:MenuItem Text="Shoes">
                                </dx:MenuItem>
                                <dx:MenuItem Text="Accessories">
                                </dx:MenuItem>
                                <dx:MenuItem Text="Clearance">
                                </dx:MenuItem>
                            </Items>
                        </dx:MenuItem>
                    <dx:MenuItem Text="Contacts">
                </dx:MenuItem>
                <dx:MenuItem Text="Help">
                </dx:MenuItem>
                </Items>
            </dx:ASPxMenu>     
        </div>

        <div class="custom" id="search" tabindex="0">Search region<br />
            <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" AccessibilityCompliant="true" Width="170px"></dx:ASPxTextBox>
        </div>
        <div class="custom" id="main" tabindex="0">Main region
            <br />
            <dx:ASPxListBox ID="ASPxListBox1" runat="server" SelectionMode="CheckColumn" Theme="Office2003Blue" Height="221px" Width="158px" AccessibilityCompliant="True">
                <Items>
                    <dx:ListEditItem Text="Beverages" Value="Beverages" />
                    <dx:ListEditItem Text="Condiments" Value="Condiments" />
                    <dx:ListEditItem Text="Confections" Value="Confections" />
                    <dx:ListEditItem Text="Dairy Products" Value="Dairy Products" />
                    <dx:ListEditItem Text="Grains/Cereals" Value="Grains/Cereals" />
                    <dx:ListEditItem Text="Meat/Poultry" Value="Meat/Poultry" />
                    <dx:ListEditItem Text="Produce" Value="Produce" />
                    <dx:ListEditItem Text="Seafood" Value="Seafood" />
                </Items>
            </dx:ASPxListBox>
        </div>
    </form>
</body>
</html>