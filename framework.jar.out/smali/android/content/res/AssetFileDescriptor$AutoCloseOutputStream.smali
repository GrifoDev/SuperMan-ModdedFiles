.class public Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;
.super Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCloseOutputStream"
.end annotation


# instance fields
.field private mRemaining:J


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/ParcelFileDescriptor;->seekTo(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unable to seek"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write(I)V

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    int-to-long v2, v0

    iget-wide v4, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    long-to-int v0, v2

    :cond_1
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-long v0, p3

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    long-to-int p3, v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([BII)V

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([BII)V

    return-void
.end method
