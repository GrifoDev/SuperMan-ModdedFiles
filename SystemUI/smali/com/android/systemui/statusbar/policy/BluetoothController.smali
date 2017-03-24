.class public interface abstract Lcom/android/systemui/statusbar/policy/BluetoothController;
.super Ljava/lang/Object;
.source "BluetoothController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    }
.end annotation


# virtual methods
.method public abstract addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
.end method

.method public abstract canConfigBluetooth()Z
.end method

.method public abstract connect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
.end method

.method public abstract disconnect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
.end method

.method public abstract getDevices()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastDeviceName()Ljava/lang/String;
.end method

.method public abstract isBluetoothConnected()Z
.end method

.method public abstract isBluetoothConnecting()Z
.end method

.method public abstract isBluetoothEnabled()Z
.end method

.method public abstract isBluetoothSupported()Z
.end method

.method public abstract removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
.end method

.method public abstract scan(Z)V
.end method

.method public abstract setBluetoothEnabled(ZZ)V
.end method
