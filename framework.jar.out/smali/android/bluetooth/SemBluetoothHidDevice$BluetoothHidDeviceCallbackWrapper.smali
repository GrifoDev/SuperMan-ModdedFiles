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
    .param p1, "callback"    # Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    .prologue
    .line 248
    invoke-direct {p0}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;-><init>()V

    .line 249
    iput-object p1, p0, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    .line 248
    return-void
.end method


# virtual methods
.method public onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;Z)V
    .locals 1
    .param p1, "pluggedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;
    .param p3, "registered"    # Z

    .prologue
    .line 255
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/SemBluetoothHidDeviceCallback;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;Z)V

    .line 254
    return-void
.end method

.method public onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 260
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/SemBluetoothHidDeviceCallback;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 259
    return-void
.end method

.method public onGetReport(BBI)V
    .locals 1
    .param p1, "type"    # B
    .param p2, "id"    # B
    .param p3, "bufferSize"    # I

    .prologue
    .line 265
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/SemBluetoothHidDeviceCallback;->onGetReport(BBI)V

    .line 264
    return-void
.end method

.method public onIntrData(B[B)V
    .locals 1
    .param p1, "reportId"    # B
    .param p2, "data"    # [B

    .prologue
    .line 280
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/SemBluetoothHidDeviceCallback;->onInterruptDataReceived(B[B)V

    .line 279
    return-void
.end method

.method public onSetProtocol(B)V
    .locals 1
    .param p1, "protocol"    # B

    .prologue
    .line 275
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/SemBluetoothHidDeviceCallback;->onSetProtocol(B)V

    .line 274
    return-void
.end method

.method public onSetReport(BB[B)V
    .locals 1
    .param p1, "type"    # B
    .param p2, "id"    # B
    .param p3, "data"    # [B

    .prologue
    .line 270
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/SemBluetoothHidDeviceCallback;->onSetReport(BB[B)V

    .line 269
    return-void
.end method

.method public onVirtualCableUnplug()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/SemBluetoothHidDeviceCallback;

    invoke-virtual {v0}, Landroid/bluetooth/SemBluetoothHidDeviceCallback;->onVirtualCableUnpluged()V

    .line 284
    return-void
.end method
