.class public interface abstract Landroid/companion/ICompanionDeviceDiscoveryService;
.super Ljava/lang/Object;
.source "ICompanionDeviceDiscoveryService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ICompanionDeviceDiscoveryService$Stub;
    }
.end annotation


# virtual methods
.method public abstract startDiscovery(Landroid/companion/AssociationRequest;Ljava/lang/String;Landroid/companion/IFindDeviceCallback;Landroid/companion/ICompanionDeviceDiscoveryServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
