.class public interface abstract Landroid/companion/ICompanionDeviceDiscoveryServiceCallback;
.super Ljava/lang/Object;
.source "ICompanionDeviceDiscoveryServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDeviceSelected(Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeviceSelectionCancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
