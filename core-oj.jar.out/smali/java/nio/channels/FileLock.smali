.class public abstract Ljava/nio/channels/FileLock;
.super Ljava/lang/Object;
.source "FileLock.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final channel:Ljava/nio/channels/Channel;

.field private final position:J

.field private final shared:Z

.field private final size:J


# direct methods
.method protected constructor <init>(Ljava/nio/channels/FileChannel;JJZ)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmp-long v0, p2, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p4, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-long v0, p2, p4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative position + size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    iput-wide p2, p0, Ljava/nio/channels/FileLock;->position:J

    iput-wide p4, p0, Ljava/nio/channels/FileLock;->size:J

    iput-boolean p6, p0, Ljava/nio/channels/FileLock;->shared:Z

    return-void
.end method


# virtual methods
.method public acquiredBy()Ljava/nio/channels/Channel;
    .locals 1

    iget-object v0, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    return-object v0
.end method

.method public final channel()Ljava/nio/channels/FileChannel;
    .locals 1

    iget-object v0, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    instance-of v0, v0, Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    check-cast v0, Ljava/nio/channels/FileChannel;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V

    return-void
.end method

.method public final isShared()Z
    .locals 1

    iget-boolean v0, p0, Ljava/nio/channels/FileLock;->shared:Z

    return v0
.end method

.method public abstract isValid()Z
.end method

.method public final overlaps(JJ)Z
    .locals 5

    const/4 v4, 0x0

    add-long v0, p1, p3

    iget-wide v2, p0, Ljava/nio/channels/FileLock;->position:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return v4

    :cond_0
    iget-wide v0, p0, Ljava/nio/channels/FileLock;->position:J

    iget-wide v2, p0, Ljava/nio/channels/FileLock;->size:J

    add-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gtz v0, :cond_1

    return v4

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final position()J
    .locals 2

    iget-wide v0, p0, Ljava/nio/channels/FileLock;->position:J

    return-wide v0
.end method

.method public abstract release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final size()J
    .locals 2

    iget-wide v0, p0, Ljava/nio/channels/FileLock;->size:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ljava/nio/channels/FileLock;->position:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ljava/nio/channels/FileLock;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Ljava/nio/channels/FileLock;->shared:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "shared"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "valid"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "exclusive"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "invalid"

    goto :goto_1
.end method
