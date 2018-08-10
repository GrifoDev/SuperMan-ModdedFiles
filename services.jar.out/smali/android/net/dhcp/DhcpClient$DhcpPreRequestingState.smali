.class Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;
.super Landroid/net/dhcp/DhcpClient$DhcpRequestingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpPreRequestingState"
.end annotation


# static fields
.field private static final DHCP_PRE_REQUEST_TIMEOUT_MS:I = 0xfa0


# instance fields
.field private mPreviousResult:Landroid/net/DhcpResults;

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->mPreviousResult:Landroid/net/DhcpResults;

    const/16 v0, 0xfa0

    iput v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->mTimeout:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get25(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/SemDhcpClientUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get25(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/SemDhcpClientUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/SemDhcpClientUtil;->getDhcpResult(Ljava/lang/String;)Landroid/net/DhcpResults;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->mPreviousResult:Landroid/net/DhcpResults;

    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->mPreviousResult:Landroid/net/DhcpResults;

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->enter()V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get7(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method protected sendPacket()Z
    .locals 5

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    sget-object v2, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->mPreviousResult:Landroid/net/DhcpResults;

    iget-object v0, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->mPreviousResult:Landroid/net/DhcpResults;

    iget-object v3, v3, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    sget-object v4, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    invoke-static {v1, v2, v0, v3, v4}, Landroid/net/dhcp/DhcpClient;->-wrap5(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method
