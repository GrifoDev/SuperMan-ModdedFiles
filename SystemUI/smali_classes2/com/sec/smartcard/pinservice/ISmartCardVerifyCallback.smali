.class public interface abstract Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;
.super Ljava/lang/Object;
.source "ISmartCardVerifyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback$Stub;
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
