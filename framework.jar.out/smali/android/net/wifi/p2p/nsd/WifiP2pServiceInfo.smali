.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
.super Ljava/lang/Object;
.source "WifiP2pServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICE_TYPE_ALL:I = 0x0

.field public static final SERVICE_TYPE_BONJOUR:I = 0x1

.field public static final SERVICE_TYPE_UPNP:I = 0x2

.field public static final SERVICE_TYPE_VENDOR_SPECIFIC:I = 0xff

.field public static final SERVICE_TYPE_WS_DISCOVERY:I = 0x3


# instance fields
.field private mQueryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "query list cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    return-void
.end method

.method static bin2HexStr([B)Ljava/lang/String;
    .locals 8

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    array-length v5, p0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-byte v0, p0, v4

    const/4 v2, 0x0

    and-int/lit16 v6, v0, 0xff

    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/16 v6, 0x30

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v4, 0x0

    return-object v4

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p1

    nop

    nop

    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    iget-object v2, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getSupplicantQueryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    return v0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
