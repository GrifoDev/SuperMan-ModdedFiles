.class Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteOrderAwarenessDataOutputStream"
.end annotation


# instance fields
.field private mByteOrder:Ljava/nio/ByteOrder;

.field private final mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 2736
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2737
    iput-object p1, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 2738
    iput-object p2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 2735
    return-void
.end method


# virtual methods
.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 0
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 2742
    iput-object p1, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 2741
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2746
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2745
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2750
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2749
    return-void
.end method

.method public writeByte(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2754
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 2753
    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2768
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    .line 2769
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2770
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2771
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2772
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2767
    :cond_0
    :goto_0
    return-void

    .line 2773
    :cond_1
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 2774
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2775
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2776
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2777
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public writeShort(S)V
    .locals 2
    .param p1, "val"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2758
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    .line 2759
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2760
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2757
    :cond_0
    :goto_0
    return-void

    .line 2761
    :cond_1
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 2762
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2763
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public writeUnsignedInt(J)V
    .locals 1
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2786
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeInt(I)V

    .line 2785
    return-void
.end method

.method public writeUnsignedShort(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2782
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeShort(S)V

    .line 2781
    return-void
.end method
