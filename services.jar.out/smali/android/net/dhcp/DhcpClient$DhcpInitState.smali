.class Landroid/net/dhcp/DhcpClient$DhcpInitState;
.super Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpInitState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->enter()V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap13(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method

.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .locals 3

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/net/dhcp/DhcpOfferPacket;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-set1(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get16(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "DhcpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got pending lease: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get16(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get12(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap14(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    :cond_2
    return-void
.end method

.method protected sendPacket()Z
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap4(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    return v0
.end method
