.class public interface abstract Landroid/net/wifi/aware/IWifiAwareManager;
.super Ljava/lang/Object;
.source "IWifiAwareManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract connect(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract disconnect(ILandroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCharacteristics()Landroid/net/wifi/aware/Characteristics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isUsageEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract publish(ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendMessage(III[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startRanging(IILandroid/net/wifi/RttManager$ParcelableRttParams;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract subscribe(ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract terminateSession(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
