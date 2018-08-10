.class public interface abstract Lcom/samsung/android/cover/ICoverService;
.super Ljava/lang/Object;
.source "ICoverService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/ICoverService$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCoverAppCovered(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSystemReady()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
