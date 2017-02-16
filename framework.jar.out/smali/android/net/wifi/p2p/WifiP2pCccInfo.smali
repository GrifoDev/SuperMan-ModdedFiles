.class public Landroid/net/wifi/p2p/WifiP2pCccInfo;
.super Ljava/lang/Object;
.source "WifiP2pCccInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pCccInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pCccInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiP2pCccInfo"


# instance fields
.field private mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

.field private mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pCccInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pCccInfo$1;-><init>()V

    .line 74
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    .line 34
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;)V
    .locals 1
    .param p1, "upnpInfo"    # Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;
    .param p2, "internetInfo"    # Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    .line 34
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    .line 40
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    .line 41
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getInternetInfo()Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    return-object v0

    .line 53
    :cond_0
    return-object v1
.end method

.method public getUpnpInfo()Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    return-object v0

    .line 47
    :cond_0
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->getUpnpDevType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->getTmAppServerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 65
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->getTmClientProfileSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->getTmNotificationServerSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 67
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->getPortNum()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;->getMLType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;->getHaveInternetAccess()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 70
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;->getInternetAccessRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 71
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;->getMLCliPreference()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void

    :cond_0
    move v0, v2

    .line 64
    goto :goto_0

    :cond_1
    move v0, v2

    .line 65
    goto :goto_1

    :cond_2
    move v0, v2

    .line 66
    goto :goto_2

    :cond_3
    move v0, v2

    .line 69
    goto :goto_3

    :cond_4
    move v1, v2

    .line 70
    goto :goto_4
.end method
