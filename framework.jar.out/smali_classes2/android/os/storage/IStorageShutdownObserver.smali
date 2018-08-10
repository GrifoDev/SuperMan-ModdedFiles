.class public interface abstract Landroid/os/storage/IStorageShutdownObserver;
.super Ljava/lang/Object;
.source "IStorageShutdownObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IStorageShutdownObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onShutDownComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
