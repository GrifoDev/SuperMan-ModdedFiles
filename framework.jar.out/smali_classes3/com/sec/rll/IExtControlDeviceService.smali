.class public interface abstract Lcom/sec/rll/IExtControlDeviceService;
.super Ljava/lang/Object;
.source "IExtControlDeviceService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/rll/IExtControlDeviceService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getStatus(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setStatus(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
