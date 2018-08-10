.class Landroid/net/ip/IpManager$LoggingCallbackWrapper;
.super Landroid/net/ip/IpManager$Callback;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoggingCallbackWrapper"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "INVOKE "


# instance fields
.field private mCallback:Landroid/net/ip/IpManager$Callback;

.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method public constructor <init>(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->this$0:Landroid/net/ip/IpManager;

    invoke-direct {p0}, Landroid/net/ip/IpManager$Callback;-><init>()V

    iput-object p2, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get9(Landroid/net/ip/IpManager;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "INVOKE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public installPacketFilter([B)V
    .locals 2

    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->installPacketFilter([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "installPacketFilter(byte["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .locals 2

    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLinkPropertiesChange({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResults;)V
    .locals 2

    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNewDhcpResults({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onPostDhcpAction()V
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onPostDhcpAction()V

    const-string/jumbo v0, "onPostDhcpAction()"

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onPreDhcpAction()V
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onPreDhcpAction()V

    const-string/jumbo v0, "onPreDhcpAction()"

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 2

    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onProvisioningFailure({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 2

    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onProvisioningSuccess({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onQuit()V
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onQuit()V

    const-string/jumbo v0, "onQuit()"

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->onReachabilityLost(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReachabilityLost("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onSemLog(I)V
    .locals 2

    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->onSemLog(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSemLog("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setFallbackMulticastFilter(Z)V
    .locals 2

    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->setFallbackMulticastFilter(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFallbackMulticastFilter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .locals 2

    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->setNeighborDiscoveryOffload(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNeighborDiscoveryOffload("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    return-void
.end method
