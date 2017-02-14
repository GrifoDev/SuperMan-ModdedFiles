.class public interface abstract Lcom/samsung/android/quickconnect/IQuickConnectCallback;
.super Ljava/lang/Object;
.source "IQuickConnectCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/quickconnect/IQuickConnectCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract getListenerInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onQuickConnectCallback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
