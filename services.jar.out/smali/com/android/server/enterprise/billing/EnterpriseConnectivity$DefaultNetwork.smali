.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;
.super Ljava/lang/Object;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultNetwork"
.end annotation


# instance fields
.field private mActiveNetwork:I

.field private mCellularLinkProperties:Landroid/net/LinkProperties;

.field private mCellularRequest:Landroid/net/NetworkRequest;

.field private mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

.field private mWifiLinkProperties:Landroid/net/LinkProperties;

.field private mWifiRequest:Landroid/net/NetworkRequest;

.field private mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V

    return-void
.end method

.method private handleConnected(J)Z
    .locals 3

    const/4 v2, 0x1

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isValidLink(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Default network WiFi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->-wrap4(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    return v2

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isValidLink(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Default network Cellular: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->-wrap4(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private handleDisconnected(J)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Default network WiFi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->-wrap4(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiLinkProperties:Landroid/net/LinkProperties;

    return v2

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Default network Cellular: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->-wrap4(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularLinkProperties:Landroid/net/LinkProperties;

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isValidLink(Landroid/net/LinkProperties;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->hasIPv6Address(Landroid/net/LinkProperties;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public DefaultNetworkInit(Landroid/net/IConnectivityManager;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;)V
    .locals 7

    const/4 v4, 0x0

    :try_start_0
    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiLinkProperties:Landroid/net/LinkProperties;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularLinkProperties:Landroid/net/LinkProperties;

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    invoke-interface {p1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iput v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    :cond_0
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    :goto_0
    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    :cond_1
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    :goto_1
    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    :cond_2
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    new-instance v3, Landroid/net/NetworkCapabilities;

    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-interface {p1, v0, v4, v5}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularRequest:Landroid/net/NetworkRequest;

    const-string/jumbo v4, "EntConnectivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "celullar request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-interface {p1, v3, v4, v5}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiRequest:Landroid/net/NetworkRequest;

    const-string/jumbo v4, "EntConnectivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wifi request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_3
    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    goto/16 :goto_0

    :cond_4
    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error in ConnectivityService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->-wrap3(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public isMobileActive()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isValidRequest(I)Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularRequest:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiRequest:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EntConnectivity"

    const-string/jumbo v2, "mCellularRequest or mWifiRequest is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v3

    :cond_1
    return v3
.end method

.method public isWifiActive()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onActiveNetworkChanged(ILandroid/net/LinkProperties;)V
    .locals 2

    iput p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->-wrap4(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiLinkProperties:Landroid/net/LinkProperties;

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActiveNetworkChanged: link properties set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->-wrap4(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularLinkProperties:Landroid/net/LinkProperties;

    goto :goto_0
.end method

.method public onNetworkChanged(Landroid/os/Bundle;I)Z
    .locals 6

    const/4 v5, 0x0

    const-class v1, Landroid/net/NetworkRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    if-nez v0, :cond_0

    return v5

    :cond_0
    const-wide/16 v2, -0x1

    iget v1, v0, Landroid/net/NetworkRequest;->requestId:I

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularRequest:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    if-ne v1, v4, :cond_3

    const-wide/16 v2, 0x0

    :cond_1
    :goto_0
    packed-switch p2, :pswitch_data_0

    :cond_2
    return v5

    :cond_3
    iget v1, v0, Landroid/net/NetworkRequest;->requestId:I

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiRequest:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    if-ne v1, v4, :cond_1

    const-wide/16 v2, 0x1

    goto :goto_0

    :pswitch_0
    return v5

    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->handleDisconnected(J)Z

    move-result v1

    return v1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isMobileActive()Z

    move-result v1

    if-nez v1, :cond_2

    :pswitch_3
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->handleConnected(J)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
