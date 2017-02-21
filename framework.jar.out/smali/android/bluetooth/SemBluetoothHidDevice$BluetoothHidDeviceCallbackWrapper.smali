.class Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;
.super Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;
.source "SemBluetoothHidDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/SemBluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHidDeviceCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;


# direct methods
.method public constructor <init>(Landroid/bluetooth/SemBluetoothHidDeviceCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    return-void
.end method


# virtual methods
.method public onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;Z)V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/SemBluetoothHidDeviceCallback;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;Z)V

    return-void
.end method

.method public onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/SemBluetoothHidDeviceCallback;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public onGetReport(BBI)V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/SemBluetoothHidDeviceCallback;->onGetReport(BBI)V

    return-void
.end method

.method public onIntrData(B[B)V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/SemBluetoothHidDeviceCallback;->onInterruptDataReceived(B[B)V

    return-void
.end method

.method public onSetProtocol(B)V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/SemBluetoothHidDeviceCallback;->onSetProtocol(B)V

    return-void
.end method

.method public onSetReport(BB[B)V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/SemBluetoothHidDeviceCallback;->onSetReport(BB[B)V

    return-void
.end method

.method public onVirtualCableUnplug()V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    invoke-virtual {v0}, Landroid/bluetooth/SemBluetoothHidDeviceCallback;->onVirtualCableUnpluged()V

    return-void
.end method
