.class final Landroid/net/wifi/p2p/WifiP2pCccInfo$1;
.super Ljava/lang/Object;
.source "WifiP2pCccInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pCccInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/p2p/WifiP2pCccInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pCccInfo;
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 81
    .local v9, "upnpDevType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v11

    if-eqz v11, :cond_0

    const/4 v6, 0x1

    .line 82
    .local v6, "tmAppServerSupported":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v11

    if-eqz v11, :cond_1

    const/4 v7, 0x1

    .line 83
    .local v7, "tmClientProfileSupported":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v11

    if-eqz v11, :cond_2

    const/4 v8, 0x1

    .line 84
    .local v8, "tmNotificationServerSupported":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 86
    .local v5, "portNum":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 87
    .local v4, "mlType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v11

    if-eqz v11, :cond_3

    const/4 v0, 0x1

    .line 88
    .local v0, "haveInternetAccess":Z
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v11

    if-eqz v11, :cond_4

    const/4 v1, 0x1

    .line 89
    .local v1, "internetAccessRequired":Z
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 91
    .local v3, "mlCliPreference":I
    invoke-static {v9, v6, v7, v8, v5}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->newInstance(IZZZI)Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    move-result-object v10

    .line 93
    .local v10, "upnpInfo":Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;
    invoke-static {v4, v0, v1, v3}, Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;->newInstance(IZZI)Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    move-result-object v2

    .line 95
    .local v2, "internetInfo":Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;
    new-instance v11, Landroid/net/wifi/p2p/WifiP2pCccInfo;

    invoke-direct {v11, v10, v2}, Landroid/net/wifi/p2p/WifiP2pCccInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;)V

    return-object v11

    .line 81
    .end local v0    # "haveInternetAccess":Z
    .end local v1    # "internetAccessRequired":Z
    .end local v2    # "internetInfo":Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;
    .end local v3    # "mlCliPreference":I
    .end local v4    # "mlType":I
    .end local v5    # "portNum":I
    .end local v6    # "tmAppServerSupported":Z
    .end local v7    # "tmClientProfileSupported":Z
    .end local v8    # "tmNotificationServerSupported":Z
    .end local v10    # "upnpInfo":Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "tmAppServerSupported":Z
    goto :goto_0

    .line 82
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "tmClientProfileSupported":Z
    goto :goto_1

    .line 83
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "tmNotificationServerSupported":Z
    goto :goto_2

    .line 87
    .restart local v4    # "mlType":I
    .restart local v5    # "portNum":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "haveInternetAccess":Z
    goto :goto_3

    .line 88
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "internetAccessRequired":Z
    goto :goto_4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pCccInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pCccInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pCccInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 99
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pCccInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pCccInfo$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pCccInfo;

    move-result-object v0

    return-object v0
.end method
