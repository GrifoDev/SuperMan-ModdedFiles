.class public Lcom/samsung/android/graphics/spr/document/SprInputStream;
.super Ljava/lang/Object;
.source "SprInputStream.java"


# instance fields
.field private in:Ljava/io/DataInputStream;

.field public mAnimationObject:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field public mMajorVersion:S

.field private mMark:J

.field public mMinorVersion:S

.field private mPosition:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const-wide/16 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    .line 15
    iput-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMark:J

    .line 20
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    .line 19
    return-void
.end method


# virtual methods
.method public getPosition()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .prologue
    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 25
    iget-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    iput-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 23
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 30
    .local v0, "v":I
    if-ltz v0, :cond_0

    .line 31
    iget-wide v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    .line 33
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 38
    .local v0, "n":I
    if-lez v0, :cond_0

    .line 39
    iget-wide v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    .line 42
    :cond_0
    return v0
.end method

.method public readByte()B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 85
    .local v0, "value":B
    iget-wide v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    .line 86
    return v0
.end method

.method public readFloat()F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 79
    .local v0, "value":F
    iget-wide v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    .line 80
    return v0
.end method

.method public readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 67
    .local v0, "value":I
    iget-wide v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    .line 68
    return v0
.end method

.method public readShort()S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 73
    .local v0, "value":S
    iget-wide v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    .line 74
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/FilterInputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 49
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/FilterInputStream;->reset()V

    .line 50
    iget-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMark:J

    iput-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 45
    return-void
.end method

.method public skip(J)J
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 55
    .local v0, "n":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 56
    iget-wide v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    .line 58
    :cond_0
    return-wide v0
.end method
