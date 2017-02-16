.class public interface abstract Lcom/samsung/android/app/executor/IExecutorService;
.super Ljava/lang/Object;
.source "IExecutorService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/executor/IExecutorService$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendCommand(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCallback(Lcom/samsung/android/app/executor/IExecutorServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
