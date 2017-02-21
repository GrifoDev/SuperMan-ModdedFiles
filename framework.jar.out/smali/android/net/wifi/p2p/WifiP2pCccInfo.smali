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

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pCccInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pCccInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInternetInfo()Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getUpnpInfo()Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->getUpnpDevType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->getTmAppServerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->getTmClientProfileSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->getTmNotificationServerSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->getPortNum()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;->getMLType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;->getHaveInternetAccess()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;->getInternetAccessRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pCccInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pCccInternetInfo;->getMLCliPreference()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method
