.class final Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo$1;
.super Ljava/lang/Object;
.source "WifiP2pCccUpnpDevInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;
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
        "Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .local v1, "upnpDevType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 124
    .local v2, "tmAppServerSupported":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 125
    .local v3, "tmClientProfileSupported":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    .line 126
    .local v4, "tmNotificationServerSupported":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 127
    .local v5, "portNum":I
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;-><init>(IZZZILandroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;)V

    return-object v0

    .line 123
    .end local v2    # "tmAppServerSupported":Z
    .end local v3    # "tmClientProfileSupported":Z
    .end local v4    # "tmNotificationServerSupported":Z
    .end local v5    # "portNum":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "tmAppServerSupported":Z
    goto :goto_0

    .line 124
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "tmClientProfileSupported":Z
    goto :goto_1

    .line 125
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "tmNotificationServerSupported":Z
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 131
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    move-result-object v0

    return-object v0
.end method
