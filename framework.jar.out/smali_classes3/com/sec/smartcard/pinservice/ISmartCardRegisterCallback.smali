.class public interface abstract Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;
.super Ljava/lang/Object;
.source "ISmartCardRegisterCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
