.class public interface abstract Lcom/android/internal/widget/IRemoteLockMonitorCallback;
.super Ljava/lang/Object;
.source "IRemoteLockMonitorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkRemoteLockPassword(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
