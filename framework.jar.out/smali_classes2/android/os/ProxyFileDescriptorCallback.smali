.class public abstract Landroid/os/ProxyFileDescriptorCallback;
.super Ljava/lang/Object;
.source "ProxyFileDescriptorCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFsync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    new-instance v0, Landroid/system/ErrnoException;

    const-string/jumbo v1, "onFsync"

    sget v2, Landroid/system/OsConstants;->EINVAL:I

    invoke-direct {v0, v1, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public onGetSize()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    new-instance v0, Landroid/system/ErrnoException;

    const-string/jumbo v1, "onGetSize"

    sget v2, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {v0, v1, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public onRead(JI[B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    new-instance v0, Landroid/system/ErrnoException;

    const-string/jumbo v1, "onRead"

    sget v2, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {v0, v1, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public abstract onRelease()V
.end method

.method public onWrite(JI[B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    new-instance v0, Landroid/system/ErrnoException;

    const-string/jumbo v1, "onWrite"

    sget v2, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {v0, v1, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
