.class public abstract Landroid/os/PowerManagerInternal;
.super Ljava/lang/Object;
.source "PowerManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManagerInternal$LowPowerModeListener;
    }
.end annotation


# static fields
.field public static final WAKEFULNESS_ASLEEP:I = 0x0

.field public static final WAKEFULNESS_AWAKE:I = 0x1

.field public static final WAKEFULNESS_DOZING:I = 0x3

.field public static final WAKEFULNESS_DREAMING:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInteractive(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static wakefulnessToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "Asleep"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "Awake"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "Dreaming"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "Dozing"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public abstract disableWakeLock(Landroid/os/IBinder;Z)V
.end method

.method public abstract finishUidChanges()V
.end method

.method public abstract getLowPowerState(I)Landroid/os/PowerSaveState;
.end method

.method public abstract isProximityPositive()Z
.end method

.method public abstract powerHint(II)V
.end method

.method public abstract registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
.end method

.method public abstract setButtonTimeoutOverrideFromWindowManager(J)V
.end method

.method public abstract setDeviceIdleMode(Z)Z
.end method

.method public abstract setDeviceIdleTempWhitelist([I)V
.end method

.method public abstract setDeviceIdleWhitelist([I)V
.end method

.method public abstract setDisableWakeUpPrevention(Z)V
.end method

.method public abstract setDozeOverrideFromDreamManager(II)V
.end method

.method public abstract setDozeOverrideFromDreamManager(III)V
.end method

.method public abstract setForcedDisplayOff(Z)V
.end method

.method public abstract setGoToSleepPrevention(Z)V
.end method

.method public abstract setLightDeviceIdleMode(Z)Z
.end method

.method public abstract setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
.end method

.method public abstract setScreenBrightnessOverrideFromWindowManager(I)V
.end method

.method public abstract setScreenDimDurationOverrideFromWindowManager(J)V
.end method

.method public abstract setUserActivityTimeoutOverrideFromWindowManager(J)V
.end method

.method public abstract setUserInactiveOverrideFromWindowManager()V
.end method

.method public abstract setWakeLockEnableDisable(IZ)I
.end method

.method public abstract startUidChanges()V
.end method

.method public abstract uidActive(I)V
.end method

.method public abstract uidGone(I)V
.end method

.method public abstract uidIdle(I)V
.end method

.method public abstract updateUidProcState(II)V
.end method
