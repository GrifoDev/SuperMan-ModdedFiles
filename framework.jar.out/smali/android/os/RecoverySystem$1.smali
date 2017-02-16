.class final Landroid/os/RecoverySystem$1;
.super Ljava/io/InputStream;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field lastPercent:I

.field lastPublishTime:J

.field soFar:J

.field toRead:J

.field final synthetic val$commentSize:I

.field final synthetic val$fileLen:J

.field final synthetic val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

.field final synthetic val$raf:Ljava/io/RandomAccessFile;

.field final synthetic val$startTimeMillis:J


# direct methods
.method constructor <init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V
    .locals 4
    .param p1, "val$fileLen"    # J
    .param p3, "val$commentSize"    # I
    .param p4, "val$startTimeMillis"    # J
    .param p6, "val$raf"    # Ljava/io/RandomAccessFile;
    .param p7, "val$listenerForInner"    # Landroid/os/RecoverySystem$ProgressListener;

    .prologue
    .line 276
    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->val$fileLen:J

    iput p3, p0, Landroid/os/RecoverySystem$1;->val$commentSize:I

    iput-wide p4, p0, Landroid/os/RecoverySystem$1;->val$startTimeMillis:J

    iput-object p6, p0, Landroid/os/RecoverySystem$1;->val$raf:Ljava/io/RandomAccessFile;

    iput-object p7, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 279
    iget-wide v0, p0, Landroid/os/RecoverySystem$1;->val$fileLen:J

    iget v2, p0, Landroid/os/RecoverySystem$1;->val$commentSize:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/RecoverySystem$1;->toRead:J

    .line 280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/RecoverySystem$1;->soFar:J

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    .line 283
    iget-wide v0, p0, Landroid/os/RecoverySystem$1;->val$startTimeMillis:J

    iput-wide v0, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    .line 276
    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .locals 11
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 292
    iget-wide v6, p0, Landroid/os/RecoverySystem$1;->soFar:J

    iget-wide v8, p0, Landroid/os/RecoverySystem$1;->toRead:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 293
    return v10

    .line 295
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 296
    return v10

    .line 299
    :cond_1
    move v4, p3

    .line 300
    .local v4, "size":I
    iget-wide v6, p0, Landroid/os/RecoverySystem$1;->soFar:J

    int-to-long v8, p3

    add-long/2addr v6, v8

    iget-wide v8, p0, Landroid/os/RecoverySystem$1;->toRead:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 301
    iget-wide v6, p0, Landroid/os/RecoverySystem$1;->toRead:J

    iget-wide v8, p0, Landroid/os/RecoverySystem$1;->soFar:J

    sub-long/2addr v6, v8

    long-to-int v4, v6

    .line 303
    :cond_2
    iget-object v5, p0, Landroid/os/RecoverySystem$1;->val$raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, p1, p2, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    .line 304
    .local v3, "read":I
    iget-wide v6, p0, Landroid/os/RecoverySystem$1;->soFar:J

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/os/RecoverySystem$1;->soFar:J

    .line 306
    iget-object v5, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    if-eqz v5, :cond_3

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 308
    .local v0, "now":J
    iget-wide v6, p0, Landroid/os/RecoverySystem$1;->soFar:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    iget-wide v8, p0, Landroid/os/RecoverySystem$1;->toRead:J

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 309
    .local v2, "p":I
    iget v5, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    if-le v2, v5, :cond_3

    .line 310
    iget-wide v6, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x1f4

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 311
    iput v2, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    .line 312
    iput-wide v0, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    .line 313
    iget-object v5, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    iget v6, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    invoke-interface {v5, v6}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 317
    .end local v0    # "now":J
    .end local v2    # "p":I
    :cond_3
    return v3
.end method
