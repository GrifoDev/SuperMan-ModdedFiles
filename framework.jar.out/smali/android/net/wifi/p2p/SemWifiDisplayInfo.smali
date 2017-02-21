.class public Landroid/net/wifi/p2p/SemWifiDisplayInfo;
.super Ljava/lang/Object;
.source "SemWifiDisplayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    return-void
.end method

.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getControlPort()I
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getControlPort()I

    move-result v0

    return v0
.end method

.method public getDeviceType()I
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v0

    return v0
.end method

.method getWifiDisplayInfo()Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    return-object v0
.end method

.method public isSessionAvailable()Z
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v0

    return v0
.end method

.method public isWifiDisplayEnabled()Z
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setContentProtected(Z)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setContentProtection(Z)V

    return-void
.end method

.method public setControlPort(I)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setControlPort(I)V

    return-void
.end method

.method public setDeviceType(I)Z
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    move-result v0

    return v0
.end method

.method public setMaxThroughput(I)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setMaxThroughput(I)V

    return-void
.end method

.method public setSessionAvailable(Z)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    return-void
.end method

.method public setWifiDisplayEnabled(Z)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
