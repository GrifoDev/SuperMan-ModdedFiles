.class public Ljava/io/DataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DataOutputStream.java"

# interfaces
.implements Ljava/io/DataOutput;


# instance fields
.field private bytearr:[B

.field private writeBuffer:[B

.field protected written:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/DataOutputStream;->bytearr:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    return-void
.end method

.method private incCount(I)V
    .locals 2

    iget v1, p0, Ljava/io/DataOutputStream;->written:I

    add-int v0, v1, p1

    if-gez v0, :cond_0

    const v0, 0x7fffffff

    :cond_0
    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    return-void
.end method

.method static writeUTF(Ljava/lang/String;Ljava/io/DataOutput;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v13, 0x7ff

    const/4 v12, 0x0

    const/16 v11, 0x7f

    const/4 v10, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v10, :cond_0

    if-gt v1, v11, :cond_0

    add-int/lit8 v7, v7, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-le v1, v13, :cond_1

    add-int/lit8 v7, v7, 0x3

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_2
    const v8, 0xffff

    if-le v7, v8, :cond_3

    new-instance v8, Ljava/io/UTFDataFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "encoded string too long: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " bytes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    const/4 v0, 0x0

    instance-of v8, p1, Ljava/io/DataOutputStream;

    if-eqz v8, :cond_7

    move-object v4, p1

    check-cast v4, Ljava/io/DataOutputStream;

    iget-object v8, v4, Ljava/io/DataOutputStream;->bytearr:[B

    if-eqz v8, :cond_4

    iget-object v8, v4, Ljava/io/DataOutputStream;->bytearr:[B

    array-length v8, v8

    add-int/lit8 v9, v7, 0x2

    if-ge v8, v9, :cond_5

    :cond_4
    mul-int/lit8 v8, v7, 0x2

    add-int/lit8 v8, v8, 0x2

    new-array v8, v8, [B

    iput-object v8, v4, Ljava/io/DataOutputStream;->bytearr:[B

    :cond_5
    iget-object v0, v4, Ljava/io/DataOutputStream;->bytearr:[B

    :goto_2
    const/4 v2, 0x1

    ushr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v12

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v8, v7, 0x0

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    const/4 v5, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_6

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v10, :cond_6

    if-le v1, v11, :cond_8

    :cond_6
    :goto_4
    if-ge v5, v6, :cond_b

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v10, :cond_9

    if-gt v1, v11, :cond_9

    add-int/lit8 v2, v3, 0x1

    int-to-byte v8, v1

    aput-byte v8, v0, v3

    :goto_5
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    goto :goto_4

    :cond_7
    add-int/lit8 v8, v7, 0x2

    new-array v0, v8, [B

    goto :goto_2

    :cond_8
    add-int/lit8 v2, v3, 0x1

    int-to-byte v8, v1

    aput-byte v8, v0, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v2

    goto :goto_3

    :cond_9
    if-le v1, v13, :cond_a

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v8, v1, 0xc

    and-int/lit8 v8, v8, 0xf

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v8, v1, 0x0

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0x1f

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v1, 0x0

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    move v2, v3

    goto :goto_5

    :cond_b
    add-int/lit8 v8, v7, 0x2

    invoke-interface {p1, v0, v12, v8}, Ljava/io/DataOutput;->write([BII)V

    add-int/lit8 v8, v7, 0x2

    return v8
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    return v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    invoke-direct {p0, p3}, Ljava/io/DataOutputStream;->incCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final writeBoolean(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v2, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-direct {p0, v1}, Ljava/io/DataOutputStream;->incCount(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeByte(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Ljava/io/DataOutputStream;->incCount(I)V

    return-void
.end method

.method public final writeChar(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v3, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v4, v2, 0x0

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v3, v1, 0x2

    invoke-direct {p0, v3}, Ljava/io/DataOutputStream;->incCount(I)V

    return-void
.end method

.method public final writeDouble(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void
.end method

.method public final writeFloat(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public final writeInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    return-void
.end method

.method public final writeLong(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x38

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x30

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x28

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x18

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x10

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    ushr-long v2, p1, v5

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    ushr-long v2, p1, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    invoke-direct {p0, v5}, Ljava/io/DataOutputStream;->incCount(I)V

    return-void
.end method

.method public final writeShort(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;Ljava/io/DataOutput;)I

    return-void
.end method
