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

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 15
    return-void
.end method

.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V
    .locals 0
    .param p1, "wfd"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getControlPort()I
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getControlPort()I

    move-result v0

    return v0
.end method

.method public getDeviceType()I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v0

    return v0
.end method

.method getWifiDisplayInfo()Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    return-object v0
.end method

.method public isSessionAvailable()Z
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v0

    return v0
.end method

.method public isWifiDisplayEnabled()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 136
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 135
    return-void
.end method

.method public setContentProtected(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setContentProtection(Z)V

    .line 115
    return-void
.end method

.method public setControlPort(I)V
    .locals 2
    .param p1, "port"    # I

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setControlPort(I)V

    .line 97
    return-void
.end method

.method public setDeviceType(I)Z
    .locals 2
    .param p1, "deviceType"    # I

    .prologue
    .line 62
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    move-result v0

    return v0
.end method

.method public setMaxThroughput(I)V
    .locals 2
    .param p1, "maxThroughput"    # I

    .prologue
    .line 107
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setMaxThroughput(I)V

    .line 106
    return-void
.end method

.method public setSessionAvailable(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    .line 79
    return-void
.end method

.method public setWifiDisplayEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 41
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mWifiP2pWfdInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 40
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->mWifiP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    return-void
.end method
