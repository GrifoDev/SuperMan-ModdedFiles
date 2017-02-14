.class public interface abstract Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;
.super Ljava/lang/Object;
.source "ISmartCardGetPinCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onUserCancelled()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUserEnteredPin([C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUserPinError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
