.class public Lcom/att/iqi/lib/metrics/rp/RP12;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/att/iqi/lib/metrics/rp/RP12;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field public m_dwByteCount:I

.field public m_dwDuration:I

.field public m_dwPktCount:I

.field public m_dwPktLoss:I

.field public m_dwSsrc:I

.field public m_strIpSrcAddr:[B

.field public m_ucIpVersion:B

.field public m_ucMediaType:B

.field public m_wCumAvgPktSize:S

.field public m_wDstPort:S

.field public m_wMaxDelta:S

.field public m_wMaxJitter:S

.field public m_wMeanJitter:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string/jumbo v1, "RP12"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP12;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/rp/RP12$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/rp/RP12$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP12;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/rp/RP12;->reset()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_0

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    iget-object v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0
.end method


# virtual methods
.method public getByteCount()I
    .locals 1

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    return v0
.end method

.method public getCumAvgPktSize()S
    .locals 1

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    return v0
.end method

.method public getDstPort()S
    .locals 1

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    return v0
.end method

.method public getIpSrcAddr()[B
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    return-object v0
.end method

.method public getIpVersion()B
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    return v0
.end method

.method public getMaxDelta()S
    .locals 1

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    return v0
.end method

.method public getMaxJitter()S
    .locals 1

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    return v0
.end method

.method public getMeanJitter()S
    .locals 1

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    return v0
.end method

.method public getMediaType()B
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    return v0
.end method

.method public getPktCount()I
    .locals 1

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    return v0
.end method

.method public getPktLoss()I
    .locals 1

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    return v0
.end method

.method public getSsrc()I
    .locals 1

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    return-void
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public setByteCount(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    return-object p0
.end method

.method public setCumAvgPktSize(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 1

    int-to-short v0, p1

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    return-object p0
.end method

.method public setDstPort(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 1

    int-to-short v0, p1

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    return-object p0
.end method

.method public setDuration(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    return-object p0
.end method

.method public setIpSrcAddr([B)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    return-object p0
.end method

.method public setIpVersion(B)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 1

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    return-object p0
.end method

.method public setMaxDelta(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 1

    int-to-short v0, p1

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    return-object p0
.end method

.method public setMaxJitter(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 1

    int-to-short v0, p1

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    return-object p0
.end method

.method public setMeanJitter(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 1

    int-to-short v0, p1

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    return-object p0
.end method

.method public setMediaType(B)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 1

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    return-object p0
.end method

.method public setPktCount(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    return-object p0
.end method

.method public setPktLoss(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    return-object p0
.end method

.method public setSsrc(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-short v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-short v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-short v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-short v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-short v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    if-gtz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    array-length v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1
.end method
