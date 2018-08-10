.class public interface abstract Lcom/samsung/android/easyonehand/IEasyOneHandWatcher;
.super Ljava/lang/Object;
.source "IEasyOneHandWatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/easyonehand/IEasyOneHandWatcher$Stub;
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
