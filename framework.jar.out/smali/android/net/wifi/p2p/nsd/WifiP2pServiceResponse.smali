.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.super Ljava/lang/Object;
.source "WifiP2pServiceResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;,
        Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static MAX_BUF_SIZE:I


# instance fields
.field protected mData:[B

.field protected mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field protected mServiceType:I

.field protected mStatus:I

.field protected mTransId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x400

    sput v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->MAX_BUF_SIZE:I

    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    iput p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    iput p3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    iput-object p4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object p5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    return-void
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static hexStr2Bin(Ljava/lang/String;)[B
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    mul-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x2

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    return-object v4

    :cond_0
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;[B)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v4}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object p0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez p1, :cond_0

    return-object v12

    :cond_0
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->available()I

    move-result v10

    if-lez v10, :cond_7

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v10

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v11

    shl-int/lit8 v11, v11, 0x8

    add-int/2addr v10, v11

    add-int/lit8 v8, v10, -0x3

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    if-gez v8, :cond_2

    return-object v12

    :cond_2
    if-nez v8, :cond_3

    if-nez v2, :cond_1

    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_8

    return-object v9

    :cond_3
    :try_start_1
    sget v10, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->MAX_BUF_SIZE:I

    if-le v8, v10, :cond_4

    int-to-long v10, v8

    invoke-virtual {v6, v10, v11}, Ljava/io/DataInputStream;->skip(J)J

    goto :goto_0

    :cond_4
    new-array v5, v8, [B

    invoke-virtual {v6, v5}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v10, 0x1

    if-ne v1, v10, :cond_5

    invoke-static {v2, v3, v4, v5}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getStatus()I

    move-result v10

    if-nez v10, :cond_1

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/4 v10, 0x2

    if-ne v1, v10, :cond_6

    invoke-static {v2, v3, v4, v5}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    move-result-object v0

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_7
    return-object v9

    :cond_8
    return-object v12
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    iget v2, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public getRawData()[B
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    return-object v0
.end method

.method public getServiceType()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    return v0
.end method

.method public getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    return v0
.end method

.method public getTransactionId()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x0

    const/16 v0, 0x11

    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    add-int v0, v1, v3

    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    add-int v0, v1, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    return v0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    goto :goto_1
.end method

.method public setSrcDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "serviceType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    invoke-static {v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " srcAddr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method
