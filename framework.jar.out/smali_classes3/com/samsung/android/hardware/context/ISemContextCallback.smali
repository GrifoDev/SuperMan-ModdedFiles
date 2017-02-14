.class public interface abstract Lcom/samsung/android/hardware/context/ISemContextCallback;
.super Ljava/lang/Object;
.source "ISemContextCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/ISemContextCallback$Stub;
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

.method public abstract semContextCallback(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
