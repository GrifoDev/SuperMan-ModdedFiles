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

.field private mDuplicatedEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

.field private mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

.field public semContext:Lcom/samsung/android/hardware/context/SemContext;

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEvent$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEvent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/samsung/android/hardware/context/SemContext;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContext;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->timestamp:J

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 119
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 996
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->timestamp:J

    .line 997
    const-class v0, Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContext;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 999
    const-class v0, Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextEventContext;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 1000
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->context:Landroid/os/Bundle;

    .line 1001
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    .line 1002
    const-class v0, Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextEventContext;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mDuplicatedEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 995
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 964
    const/4 v0, 0x0

    return v0
.end method

.method public getAbnormalPressureContext()Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;

    return-object v0
.end method

.method public getActiveTimeMonitorContext()Lcom/samsung/android/hardware/context/SemContextActiveTimeMonitor;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActiveTimeMonitor;

    return-object v0
.end method

.method public getActivityBatchContext()Lcom/samsung/android/hardware/context/SemContextActivityBatch;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;

    return-object v0
.end method

.method public getActivityLocationLoggingContext()Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;

    return-object v0
.end method

.method public getActivityNotificationContext()Lcom/samsung/android/hardware/context/SemContextActivityNotification;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityNotification;

    return-object v0
.end method

.method public getActivityNotificationExContext()Lcom/samsung/android/hardware/context/SemContextActivityNotificationEx;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationEx;

    return-object v0
.end method

.method public getActivityTrackerContext()Lcom/samsung/android/hardware/context/SemContextActivityTracker;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityTracker;

    return-object v0
.end method

.method public getAirMotionContext()Lcom/samsung/android/hardware/context/SemContextAirMotion;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextAirMotion;

    return-object v0
.end method

.method public getAnyMotionDetectorContext()Lcom/samsung/android/hardware/context/SemContextAnyMotionDetector;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextAnyMotionDetector;

    return-object v0
.end method

.method public getApproachContext()Lcom/samsung/android/hardware/context/SemContextApproach;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextApproach;

    return-object v0
.end method

.method public getAutoBrightnessContext()Lcom/samsung/android/hardware/context/SemContextAutoBrightness;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;

    return-object v0
.end method

.method public getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    return-object v0
.end method

.method public getBounceLongMotionContext()Lcom/samsung/android/hardware/context/SemContextBounceLongMotion;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextBounceLongMotion;

    return-object v0
.end method

.method public getBounceShortMotionContext()Lcom/samsung/android/hardware/context/SemContextBounceShortMotion;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextBounceShortMotion;

    return-object v0
.end method

.method getCallMotionContext()Lcom/samsung/android/hardware/context/SemContextCallMotion;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextCallMotion;

    return-object v0
.end method

.method public getCallPoseContext()Lcom/samsung/android/hardware/context/SemContextCallPose;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextCallPose;

    return-object v0
.end method

.method getCaptureMotionContext()Lcom/samsung/android/hardware/context/SemContextCaptureMotion;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextCaptureMotion;

    return-object v0
.end method

.method public getCarryingDetectionContext()Lcom/samsung/android/hardware/context/SemContextCarryingDetection;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;

    return-object v0
.end method

.method public getCurrentStatusForPositioningContext()Lcom/samsung/android/hardware/context/SemContextCurrentStatusForPositioning;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextCurrentStatusForPositioning;

    return-object v0
.end method

.method public getDevicePositionContext()Lcom/samsung/android/hardware/context/SemContextDevicePosition;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    return-object v0
.end method

.method public getDualDisplayAngleContext()Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle;

    return-object v0
.end method

.method public getEnvironmentAdaptiveDisplayContext()Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;

    return-object v0
.end method

.method public getEnvironmentContext()Lcom/samsung/android/hardware/context/SemContextEnvironment;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextEnvironment;

    return-object v0
.end method

.method public getExerciseContext()Lcom/samsung/android/hardware/context/SemContextExercise;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextExercise;

    return-object v0
.end method

.method public getFlatMotionContext()Lcom/samsung/android/hardware/context/SemContextFlatMotion;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextFlatMotion;

    return-object v0
.end method

.method public getFlatMotionForTableModeContext()Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableMode;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableMode;

    return-object v0
.end method

.method public getFlipCoverActionContext()Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;

    return-object v0
.end method

.method public getFlipMotionContext()Lcom/samsung/android/hardware/context/SemContextFlipMotion;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextFlipMotion;

    return-object v0
.end method

.method public getGyroTemperatureContext()Lcom/samsung/android/hardware/context/SemContextGyroTemperature;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;

    return-object v0
.end method

.method public getHallSensorContext()Lcom/samsung/android/hardware/context/SemContextHallSensor;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextHallSensor;

    return-object v0
.end method

.method public getMainScreenDetectionContext()Lcom/samsung/android/hardware/context/SemContextMainScreenDetection;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mDuplicatedEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextMainScreenDetection;

    return-object v0
.end method

.method public getMotionContext()Lcom/samsung/android/hardware/context/SemContextMotion;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextMotion;

    return-object v0
.end method

.method public getMovementAlertContext()Lcom/samsung/android/hardware/context/SemContextMovementAlert;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextMovementAlert;

    return-object v0
.end method

.method public getMovementContext()Lcom/samsung/android/hardware/context/SemContextMovement;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextMovement;

    return-object v0
.end method

.method public getMovementForPositioningContext()Lcom/samsung/android/hardware/context/SemContextMovementForPositioning;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioning;

    return-object v0
.end method

.method public getPedometerContext()Lcom/samsung/android/hardware/context/SemContextPedometer;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextPedometer;

    return-object v0
.end method

.method public getPhoneStatusMonitorContext()Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;

    return-object v0
.end method

.method public getPutDownMotionContext()Lcom/samsung/android/hardware/context/SemContextPutDownMotion;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextPutDownMotion;

    return-object v0
.end method

.method public getSLocationCoreContext()Lcom/samsung/android/hardware/context/SemContextSLocationCore;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;

    return-object v0
.end method

.method public getSedentaryTimerContext()Lcom/samsung/android/hardware/context/SemContextSedentaryTimer;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimer;

    return-object v0
.end method

.method public getSensorStatusCheckContext()Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;

    return-object v0
.end method

.method public getShakeMotionContext()Lcom/samsung/android/hardware/context/SemContextShakeMotion;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextShakeMotion;

    return-object v0
.end method

.method public getSleepMonitorContext()Lcom/samsung/android/hardware/context/SemContextSleepMonitor;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;

    return-object v0
.end method

.method public getSpecificPoseAlertContext()Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;

    return-object v0
.end method

.method getStepCountAlertContext()Lcom/samsung/android/hardware/context/SemContextStepCountAlert;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;

    return-object v0
.end method

.method public getStepLevelMonitorContext()Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;

    return-object v0
.end method

.method getTemperatureAlertContext()Lcom/samsung/android/hardware/context/SemContextTemperatureAlert;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlert;

    return-object v0
.end method

.method public getTestFlatMotionContext()Lcom/samsung/android/hardware/context/SemContextTestFlatMotion;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextTestFlatMotion;

    return-object v0
.end method

.method public getWakeUpVoiceContext()Lcom/samsung/android/hardware/context/SemContextWakeUpVoice;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoice;

    return-object v0
.end method

.method public getWirelessChargingDetectionContext()Lcom/samsung/android/hardware/context/SemContextWirelessChargingDetection;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextWirelessChargingDetection;

    return-object v0
.end method

.method public getWristUpMotionContext()Lcom/samsung/android/hardware/context/SemContextWristUpMotion;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextWristUpMotion;

    return-object v0
.end method

.method public setContextEvent(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/context/SemContext;->setType(I)V

    .line 699
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->timestamp:J

    .line 700
    iput-object p2, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->context:Landroid/os/Bundle;

    .line 701
    packed-switch p1, :pswitch_data_0

    .line 696
    :goto_0
    :pswitch_0
    return-void

    .line 704
    :pswitch_1
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextApproach;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextApproach;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 705
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 709
    :pswitch_2
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometer;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPedometer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 710
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 714
    :pswitch_3
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 715
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 719
    :pswitch_4
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 720
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 724
    :pswitch_5
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextMovement;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextMovement;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 725
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 729
    :pswitch_6
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 730
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 734
    :pswitch_7
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAirMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAirMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 735
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 739
    :pswitch_8
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEnvironment;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEnvironment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 740
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 744
    :pswitch_9
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioning;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextMovementForPositioning;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 745
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 749
    :pswitch_a
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCurrentStatusForPositioning;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCurrentStatusForPositioning;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 750
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 754
    :pswitch_b
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCallPose;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCallPose;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 755
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 759
    :pswitch_c
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextShakeMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextShakeMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 760
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 764
    :pswitch_d
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 765
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 769
    :pswitch_e
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 770
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 774
    :pswitch_f
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPutDownMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPutDownMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 775
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 779
    :pswitch_10
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoice;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoice;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 780
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 784
    :pswitch_11
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextBounceShortMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextBounceShortMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 785
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 789
    :pswitch_12
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextBounceLongMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextBounceLongMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 790
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 794
    :pswitch_13
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWristUpMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextWristUpMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 795
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 799
    :pswitch_14
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlatMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlatMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 800
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 804
    :pswitch_15
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextMovementAlert;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextMovementAlert;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 805
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 809
    :pswitch_16
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 810
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 814
    :pswitch_17
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlert;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextTemperatureAlert;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 815
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 819
    :pswitch_18
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 820
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 824
    :pswitch_19
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityTracker;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityTracker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 825
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 829
    :pswitch_1a
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityBatch;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 830
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 834
    :pswitch_1b
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotification;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotification;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 835
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 839
    :pswitch_1c
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 840
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 844
    :pswitch_1d
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 845
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 849
    :pswitch_1e
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationEx;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationEx;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 850
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 854
    :pswitch_1f
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCaptureMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCaptureMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 855
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 859
    :pswitch_20
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCallMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCallMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 860
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 864
    :pswitch_21
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 865
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 869
    :pswitch_22
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActiveTimeMonitor;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActiveTimeMonitor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 870
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 874
    :pswitch_23
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimer;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 875
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 879
    :pswitch_24
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableMode;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableMode;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 880
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 884
    :pswitch_25
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 885
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 889
    :pswitch_26
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextExercise;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextExercise;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 890
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 894
    :pswitch_27
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 895
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 899
    :pswitch_28
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 900
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 904
    :pswitch_29
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextHallSensor;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextHallSensor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 905
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 909
    :pswitch_2a
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 910
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 914
    :pswitch_2b
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 915
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 919
    :pswitch_2c
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWirelessChargingDetection;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextWirelessChargingDetection;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 920
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 924
    :pswitch_2d
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSLocationCore;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 925
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 929
    :pswitch_2e
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlipMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlipMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 930
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 931
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextMainScreenDetection;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextMainScreenDetection;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mDuplicatedEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 932
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mDuplicatedEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 936
    :pswitch_2f
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAnyMotionDetector;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAnyMotionDetector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 937
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 941
    :pswitch_30
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 942
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 946
    :pswitch_31
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 947
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 701
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
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
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_0
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 978
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 979
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 981
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 982
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->context:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 983
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    .line 984
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mDuplicatedEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 977
    :cond_0
    return-void
.end method
