.class public interface abstract Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;
.super Ljava/lang/Object;
.source "ISDCDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;
    }
.end annotation


# static fields
.field public static final CHARGING_MODE_UPDATE_UVDM_FAILED:I = -0x2

.field public static final CONNECTED_POWER_CHARGER_INFO_UPDATE_DEX_BUSY:I = -0x5

.field public static final CONNECTED_POWER_CHARGER_INFO_UPDATE_UVDM_FAILED:I = -0x3

.field public static final DEX_PAD:I = 0xa029

.field public static final DEX_STATION:I = 0xa020

.field public static final FAN_LEVEL_CONTROL_DEX_BUSY:I = -0x6

.field public static final POWER_CHARGER_STATE_CONNECTED_AND_FAST_CHARGING_SUPPORT:I = 0x2

.field public static final POWER_CHARGER_STATE_CONNECTED_NOT_FAST_CHARGING_SUPPORT:I = 0x1

.field public static final POWER_CHARGER_STATE_NOT_CONNECTED:I = 0x0

.field public static final POWER_CHARGER_TYPE_AFC:I = 0x5

.field public static final POWER_CHARGER_TYPE_CDP:I = 0x3

.field public static final POWER_CHARGER_TYPE_DCP:I = 0x4

.field public static final POWER_CHARGER_TYPE_NONE:I = 0x0

.field public static final POWER_CHARGER_TYPE_PD:I = 0x1

.field public static final POWER_CHARGER_TYPE_QC:I = 0x6

.field public static final POWER_CHARGER_TYPE_SDP:I = 0x2

.field public static final SENDING_ERROR_ON_FOTA:I = -0x7

.field public static final SET_FAST_CHARGING_DEX_BUSY:I = -0x4

.field public static final SET_FAST_CHARGING_UVDM_FAILED:I = -0x1


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract requestChargingModeUpdate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation
.end method

.method public abstract requestConnectedPowerChargerInfoUpdate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation
.end method

.method public abstract setFastChargingEnable(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation
.end method

.method public abstract updateDexBinaryDownloadingState(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation
.end method
