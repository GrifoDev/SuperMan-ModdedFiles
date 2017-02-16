.class public Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;
.super Ljava/lang/Object;
.source "WifiP2pCccUpnpDevInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiP2pCccUpnpDevInfo"


# instance fields
.field private mPortNum:I

.field private mTmAppServerSupported:Z

.field private mTmClientProfileSupported:Z

.field private mTmNotificationServerSupported:Z

.field private mUpnpDevType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo$1;-><init>()V

    .line 119
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mUpnpDevType:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mPortNum:I

    .line 34
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmAppServerSupported:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmClientProfileSupported:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmNotificationServerSupported:Z

    .line 36
    return-void
.end method

.method private constructor <init>(IZZZI)V
    .locals 1
    .param p1, "upnpDevtype"    # I
    .param p2, "tmAppServerSupported"    # Z
    .param p3, "tmClientProfileSupported"    # Z
    .param p4, "tmNotificationServerSupported"    # Z
    .param p5, "portNum"    # I

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mUpnpDevType:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mPortNum:I

    .line 34
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmAppServerSupported:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmClientProfileSupported:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmNotificationServerSupported:Z

    .line 60
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mUpnpDevType:I

    .line 61
    iput-boolean p2, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmAppServerSupported:Z

    .line 62
    iput-boolean p3, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmClientProfileSupported:Z

    .line 63
    iput-boolean p4, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmNotificationServerSupported:Z

    .line 64
    iput p5, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mPortNum:I

    .line 59
    return-void
.end method

.method synthetic constructor <init>(IZZZILandroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;)V
    .locals 0
    .param p1, "upnpDevtype"    # I
    .param p2, "tmAppServerSupported"    # Z
    .param p3, "tmClientProfileSupported"    # Z
    .param p4, "tmNotificationServerSupported"    # Z
    .param p5, "portNum"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;-><init>(IZZZI)V

    return-void
.end method

.method public static newInstance(IZZZI)Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;
    .locals 6
    .param p0, "upnpDevType"    # I
    .param p1, "tmAppServerSupported"    # Z
    .param p2, "tmClientProfileSupported"    # Z
    .param p3, "tmNotificationServerSupported"    # Z
    .param p4, "portNum"    # I

    .prologue
    .line 67
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;-><init>(IZZZI)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getPortNum()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mPortNum:I

    return v0
.end method

.method public getSupplicantData()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 72
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 73
    .local v1, "bb":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "b":B
    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mUpnpDevType:I

    if-ne v3, v5, :cond_0

    .line 77
    int-to-byte v0, v5

    .line 78
    .end local v0    # "b":B
    :cond_0
    iget-boolean v3, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmAppServerSupported:Z

    if-eqz v3, :cond_1

    .line 79
    or-int/lit8 v3, v0, 0x8

    int-to-byte v0, v3

    .line 80
    :cond_1
    iget-boolean v3, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmClientProfileSupported:Z

    if-eqz v3, :cond_2

    .line 81
    or-int/lit8 v3, v0, 0x10

    int-to-byte v0, v3

    .line 82
    :cond_2
    iget-boolean v3, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmNotificationServerSupported:Z

    if-eqz v3, :cond_3

    .line 83
    or-int/lit8 v3, v0, 0x20

    int-to-byte v0, v3

    .line 84
    :cond_3
    invoke-virtual {v1, v6, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {v1, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 88
    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mPortNum:I

    int-to-short v3, v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 91
    .local v2, "upnpInfo":I
    const-string/jumbo v3, "%08x"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTmAppServerSupported()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmAppServerSupported:Z

    return v0
.end method

.method public getTmClientProfileSupported()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmClientProfileSupported:Z

    return v0
.end method

.method public getTmNotificationServerSupported()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmNotificationServerSupported:Z

    return v0
.end method

.method public getUpnpDevType()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mUpnpDevType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "\n P2P-CCC-UPNP Device Information"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string/jumbo v1, "\n UPNP DEV Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mUpnpDevType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 98
    const-string/jumbo v1, "\n TmApplicationServer supported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmAppServerSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 99
    const-string/jumbo v1, "\n TmClientProfile supported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmClientProfileSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 100
    const-string/jumbo v1, "\n TmNotificationServer supported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmNotificationServerSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 101
    const-string/jumbo v1, "\n Port Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mPortNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mUpnpDevType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmAppServerSupported:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 114
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmClientProfileSupported:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 115
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mTmNotificationServerSupported:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 116
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pCccUpnpDevInfo;->mPortNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return-void

    :cond_0
    move v0, v2

    .line 113
    goto :goto_0

    :cond_1
    move v0, v2

    .line 114
    goto :goto_1

    :cond_2
    move v1, v2

    .line 115
    goto :goto_2
.end method
