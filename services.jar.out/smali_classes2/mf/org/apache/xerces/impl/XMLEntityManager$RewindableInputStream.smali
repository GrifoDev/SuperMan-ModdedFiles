.class public final Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;
.super Ljava/io/InputStream;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RewindableInputStream"
.end annotation


# instance fields
.field private fData:[B

.field private fEndOffset:I

.field private fInputStream:Ljava/io/InputStream;

.field private fLength:I

.field private fMark:I

.field private fOffset:I

.field private fStartOffset:I

.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/XMLEntityManager;Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fMark:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_0

    return v1

    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-nez v1, :cond_2

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    return v0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public mark(I)V
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fMark:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    if-lt p3, v0, :cond_5

    move p3, v0

    :cond_0
    if-nez p1, :cond_6

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    return p3

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v0

    if-eq v0, v3, :cond_4

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v3

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0

    :cond_4
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    return v3

    :cond_5
    if-gtz p3, :cond_0

    return v2

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public readAndBuffer()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    array-length v1, v1

    if-eq v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    int-to-byte v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    goto :goto_0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    return v3
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fMark:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    return-void
.end method

.method public rewind()V
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    return-void
.end method

.method public setStartOffset(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    return-void
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    return-wide v4

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int/2addr v2, v3

    if-eqz v2, :cond_2

    int-to-long v4, v2

    cmp-long v3, p1, v4

    if-lez v3, :cond_4

    :goto_1
    if-nez v0, :cond_5

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    return-wide p1

    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0

    :cond_3
    return-wide v4

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/2addr v0, v2

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-eq v0, v1, :cond_6

    int-to-long v0, v2

    sub-long v0, p1, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_6
    int-to-long v0, v2

    return-wide v0
.end method
