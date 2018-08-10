.class public Lcom/samsung/android/hardware/context/SemContextAttribute;
.super Ljava/lang/Object;
.source "SemContextAttribute.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextAttribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttribute:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static getDefaultAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;-><init>()V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;-><init>()V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;-><init>()V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;-><init>()V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;-><init>()V

    goto :goto_0

    :sswitch_9
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>()V

    goto :goto_0

    :sswitch_a
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>()V

    goto :goto_0

    :sswitch_b
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;-><init>()V

    goto :goto_0

    :sswitch_c
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;-><init>()V

    goto :goto_0

    :sswitch_d
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;-><init>()V

    goto :goto_0

    :sswitch_e
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;-><init>()V

    goto :goto_0

    :sswitch_f
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;-><init>()V

    goto :goto_0

    :sswitch_10
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;-><init>()V

    goto :goto_0

    :sswitch_11
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;-><init>()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x6 -> :sswitch_3
        0xc -> :sswitch_4
        0x18 -> :sswitch_5
        0x1b -> :sswitch_6
        0x1c -> :sswitch_7
        0x1e -> :sswitch_8
        0x21 -> :sswitch_9
        0x23 -> :sswitch_a
        0x24 -> :sswitch_b
        0x27 -> :sswitch_c
        0x2f -> :sswitch_d
        0x30 -> :sswitch_f
        0x33 -> :sswitch_e
        0x35 -> :sswitch_10
        0x36 -> :sswitch_11
    .end sparse-switch
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAttribute(I)Landroid/os/Bundle;
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public setAttribute(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
