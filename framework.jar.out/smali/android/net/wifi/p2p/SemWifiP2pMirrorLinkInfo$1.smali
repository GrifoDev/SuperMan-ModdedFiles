.class final Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo$1;
.super Ljava/lang/Object;
.source "SemWifiP2pMirrorLinkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;
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
        "Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;
    .locals 12

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v11

    if-eqz v11, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v11

    if-eqz v11, :cond_1

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v11

    if-eqz v11, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v11

    if-eqz v11, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v11

    if-eqz v11, :cond_4

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v9, v6, v7, v8, v5}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;->newInstance(IZZZI)Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    move-result-object v10

    invoke-static {v4, v0, v1, v3}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->newInstance(IZZI)Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    move-result-object v2

    new-instance v11, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;

    invoke-direct {v11, v10, v2}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;-><init>(Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;)V

    return-object v11

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo$1;->newArray(I)[Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;

    move-result-object v0

    return-object v0
.end method
