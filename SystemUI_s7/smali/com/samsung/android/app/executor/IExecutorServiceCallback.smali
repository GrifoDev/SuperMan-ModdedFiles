.class public interface abstract Lcom/samsung/android/app/executor/IExecutorServiceCallback;
.super Ljava/lang/Object;
.source "IExecutorServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/executor/IExecutorServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResponse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
