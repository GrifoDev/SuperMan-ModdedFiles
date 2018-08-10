.class public interface abstract Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
.super Ljava/lang/Object;
.source "IPeriodicAdvertisingCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSyncLost(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
