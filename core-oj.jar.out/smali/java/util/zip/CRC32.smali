.class public Ljava/util/zip/CRC32;
.super Ljava/lang/Object;
.source "CRC32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# instance fields
.field private crc:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native update(II)I
.end method

.method private static native updateBytes(I[BII)I
.end method


# virtual methods
.method public getValue()J
    .locals 4

    .prologue
    .line 88
    iget v0, p0, Ljava/util/zip/CRC32;->crc:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/CRC32;->crc:I

    .line 80
    return-void
.end method

.method public update(I)V
    .locals 1
    .param p1, "b"    # I

    .prologue
    .line 52
    iget v0, p0, Ljava/util/zip/CRC32;->crc:I

    invoke-static {v0, p1}, Ljava/util/zip/CRC32;->update(II)I

    move-result v0

    iput v0, p0, Ljava/util/zip/CRC32;->crc:I

    .line 51
    return-void
.end method

.method public update([B)V
    .locals 3
    .param p1, "b"    # [B

    .prologue
    .line 74
    iget v0, p0, Ljava/util/zip/CRC32;->crc:I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Ljava/util/zip/CRC32;->updateBytes(I[BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/CRC32;->crc:I

    .line 73
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 62
    :cond_2
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_1

    .line 65
    iget v0, p0, Ljava/util/zip/CRC32;->crc:I

    invoke-static {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->updateBytes(I[BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/CRC32;->crc:I

    .line 58
    return-void
.end method
