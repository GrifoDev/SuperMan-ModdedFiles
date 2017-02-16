.class final Landroid/net/wifi/p2p/WifiP2pCccInternetInfo$1;
.super Ljava/lang/Object;
.source "WifiP2pCccInternetInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;
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
        "Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    .local v1, "mlType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 122
    .local v2, "haveInternetAccess":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 123
    .local v3, "internetAccessRequired":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 124
    .local v4, "mlCliPreference":I
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;-><init>(IZZILandroid/net/wifi/p2p/WifiP2pCccInternetInfo;)V

    return-object v0

    .line 121
    .end local v2    # "haveInternetAccess":Z
    .end local v3    # "internetAccessRequired":Z
    .end local v4    # "mlCliPreference":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "haveInternetAccess":Z
    goto :goto_0

    .line 122
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "internetAccessRequired":Z
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pCccInternetInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 128
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pCccInternetInfo$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    move-result-object v0

    return-object v0
.end method
