.class public interface abstract Lcom/samsung/android/virtualspace/IVSManagerService;
.super Ljava/lang/Object;
.source "IVSManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/virtualspace/IVSManagerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract connect(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
