.class public interface abstract Landroid/sec/easyonehand/IEasyOneHandWatcher;
.super Ljava/lang/Object;
.source "IEasyOneHandWatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/easyonehand/IEasyOneHandWatcher$Stub;
    }
.end annotation


# virtual methods
.method public abstract onInputFilterChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMagnificationSpecChaned()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
