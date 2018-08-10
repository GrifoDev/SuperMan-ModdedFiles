.class public interface abstract Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;
.super Ljava/lang/Object;
.source "ISDCDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ControlResponseListener"
.end annotation


# virtual methods
.method public abstract onChargingModeUpdated(Z)V
.end method

.method public abstract onConnectedPowerChargerInfoUpdated(III)V
.end method

.method public abstract onDSVersionUpdated(Ljava/lang/String;)V
.end method

.method public abstract onError(I)V
.end method
