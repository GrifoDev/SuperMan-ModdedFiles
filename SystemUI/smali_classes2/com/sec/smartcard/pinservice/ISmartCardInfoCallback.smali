.class public interface abstract Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;
.super Ljava/lang/Object;
.source "ISmartCardInfoCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRemaingLoginAttempt(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
