.class public Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
.super Ljava/io/FileInputStream;
.source "ParcelFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCloseInputStream"
.end annotation


# instance fields
.field private final mPfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->checkError()V

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->checkError()V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->checkError()V

    :cond_0
    return v0
.end method
