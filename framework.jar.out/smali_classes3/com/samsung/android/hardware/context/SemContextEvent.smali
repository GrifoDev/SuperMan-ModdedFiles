.class public Lcom/samsung/android/hardware/context/SemContextEvent;
.super Ljava/lang/Object;
.source "SemContextEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextEvent$1;
    }
.end annotation


# static fields
.field static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public context:Landroid/os/Bundle;

.field private mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

.field public semContext:Lcom/samsung/android/hardware/context/SemContext;

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEvent$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEvent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/hardware/context/SemContext;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContext;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->timestamp:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->timestamp:J

    const-class v0, Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContext;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    const-class v0, Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextEventContext;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/SemContextEvent;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->context:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAbnormalPressureContext()Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;

    return-object v0
.end method

.method public getActiveTimeMonitorContext()Lcom/samsung/android/hardware/context/SemContextActiveTimeMonitor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActiveTimeMonitor;

    return-object v0
.end method

.method public getActivityBatchContext()Lcom/samsung/android/hardware/context/SemContextActivityBatch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;

    return-object v0
.end method

.method public getActivityLocationLoggingContext()Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;

    return-object v0
.end method

.method public getActivityNotificationContext()Lcom/samsung/android/hardware/context/SemContextActivityNotification;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityNotification;

    return-object v0
.end method

.method public getActivityNotificationExContext()Lcom/samsung/android/hardware/context/SemContextActivityNotificationEx;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationEx;

    return-object v0
.end method

.method public getActivityNotificationForLocationContext()Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;

    return-object v0
.end method

.method public getActivityTrackerContext()Lcom/samsung/android/hardware/context/SemContextActivityTracker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityTracker;

    return-object v0
.end method

.method public getAirMotionContext()Lcom/samsung/android/hardware/context/SemContextAirMotion;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextAirMotion;

    return-object v0
.end method

.method public getAnyMotionDetectorContext()Lcom/samsung/android/hardware/context/SemContextAnyMotionDetector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextAnyMotionDetector;

    return-object v0
.end method

.method public getApproachContext()Lcom/samsung/android/hardware/context/SemContextApproach;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextApproach;

    return-object v0
.end method

.method public getAutoBrightnessContext()Lcom/samsung/android/hardware/context/SemContextAutoBrightness;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;

    return-object v0
.end method

.method public getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    return-object v0
.end method

.method public getBounceLongMotionContext()Lcom/samsung/android/hardware/context/SemContextBounceLongMotion;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextBounceLongMotion;

    return-object v0
.end method

.method public getBounceShortMotionContext()Lcom/samsung/android/hardware/context/SemContextBounceShortMotion;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextBounceShortMotion;

    return-object v0
.end method

.method getCallMotionContext()Lcom/samsung/android/hardware/context/SemContextCallMotion;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextCallMotion;

    return-object v0
.end method

.method public getCallPoseContext()Lcom/samsung/android/hardware/context/SemContextCallPose;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextCallPose;

    return-object v0
.end method

.method public getCarryingDetectionContext()Lcom/samsung/android/hardware/context/SemContextCarryingDetection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;

    return-object v0
.end method

.method public getDevicePositionContext()Lcom/samsung/android/hardware/context/SemContextDevicePosition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    return-object v0
.end method

.method public getEnvironmentAdaptiveDisplayContext()Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;

    return-object v0
.end method

.method public getFlatMotionContext()Lcom/samsung/android/hardware/context/SemContextFlatMotion;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextFlatMotion;

    return-object v0
.end method

.method public getFlatMotionForTableModeContext()Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableMode;

    return-object v0
.end method

.method public getFlipCoverActionContext()Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;

    return-object v0
.end method

.method public getFlipMotionContext()Lcom/samsung/android/hardware/context/SemContextFlipMotion;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextFlipMotion;

    return-object v0
.end method

.method public getFreeFallDetectionContext()Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;

    return-object v0
.end method

.method public getGyroTemperatureContext()Lcom/samsung/android/hardware/context/SemContextGyroTemperature;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;

    return-object v0
.end method

.method public getHallSensorContext()Lcom/samsung/android/hardware/context/SemContextHallSensor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextHallSensor;

    return-object v0
.end method

.method public getLocationChangeTriggerContext()Lcom/samsung/android/hardware/context/SemContextLocationChangeTrigger;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTrigger;

    return-object v0
.end method

.method public getLocationCoreContext()Lcom/samsung/android/hardware/context/SemContextLocationCore;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextLocationCore;

    return-object v0
.end method

.method public getMovementAlertContext()Lcom/samsung/android/hardware/context/SemContextMovementAlert;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextMovementAlert;

    return-object v0
.end method

.method public getMovementContext()Lcom/samsung/android/hardware/context/SemContextMovement;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextMovement;

    return-object v0
.end method

.method public getPedometerContext()Lcom/samsung/android/hardware/context/SemContextPedometer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextPedometer;

    return-object v0
.end method

.method public getPhoneStatusMonitorContext()Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;

    return-object v0
.end method

.method public getPutDownMotionContext()Lcom/samsung/android/hardware/context/SemContextPutDownMotion;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextPutDownMotion;

    return-object v0
.end method

.method public getSedentaryTimerContext()Lcom/samsung/android/hardware/context/SemContextSedentaryTimer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimer;

    return-object v0
.end method

.method public getSensorStatusCheckContext()Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;

    return-object v0
.end method

.method public getShakeMotionContext()Lcom/samsung/android/hardware/context/SemContextShakeMotion;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextShakeMotion;

    return-object v0
.end method

.method public getSpecificPoseAlertContext()Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;

    return-object v0
.end method

.method getStepCountAlertContext()Lcom/samsung/android/hardware/context/SemContextStepCountAlert;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;

    return-object v0
.end method

.method public getStepLevelMonitorContext()Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;

    return-object v0
.end method

.method public getWakeUpVoiceContext()Lcom/samsung/android/hardware/context/SemContextWakeUpVoice;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoice;

    return-object v0
.end method

.method public getWirelessChargingDetectionContext()Lcom/samsung/android/hardware/context/SemContextWirelessChargingDetection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextWirelessChargingDetection;

    return-object v0
.end method

.method public getWristUpMotionContext()Lcom/samsung/android/hardware/context/SemContextWristUpMotion;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextWristUpMotion;

    return-object v0
.end method

.method public setContextEvent(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/context/SemContext;->setType(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->timestamp:J

    iput-object p2, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->context:Landroid/os/Bundle;

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextApproach;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextApproach;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometer;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPedometer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextMovement;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextMovement;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAirMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAirMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCallPose;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCallPose;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextShakeMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextShakeMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPutDownMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPutDownMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoice;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoice;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextBounceShortMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextBounceShortMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextBounceLongMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextBounceLongMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWristUpMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextWristUpMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlatMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlatMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_11
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextMovementAlert;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextMovementAlert;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_12
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_13
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_14
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityTracker;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityTracker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_15
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityBatch;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_16
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotification;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotification;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_17
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_18
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_19
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCallMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCallMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_1a
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_1b
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActiveTimeMonitor;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActiveTimeMonitor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_1c
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimer;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_1d
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableMode;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableMode;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_1e
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_1f
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_20
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_21
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextHallSensor;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextHallSensor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_22
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_23
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWirelessChargingDetection;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextWirelessChargingDetection;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_24
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextLocationCore;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextLocationCore;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_25
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlipMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlipMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_26
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAnyMotionDetector;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAnyMotionDetector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_27
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_28
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_29
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTrigger;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextLocationChangeTrigger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_2a
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_0
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->context:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
