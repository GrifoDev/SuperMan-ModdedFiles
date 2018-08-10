.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Vibrator$SemMagnitudeTypes;
    }
.end annotation


# static fields
.field public static final SEM_TYPE_MOTOR_COIN_DC:I = 0x1

.field public static final SEM_TYPE_MOTOR_COIN_DC_PMIC_LDO:I = 0x3

.field public static final SEM_TYPE_MOTOR_LINEAR:I = 0x2

.field public static final SEM_TYPE_MOTOR_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field protected final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public getMaxMagnitude()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public abstract hasAmplitudeControl()Z
.end method

.method public abstract hasVibrator()Z
.end method

.method public resetMagnitude()V
    .locals 0

    return-void
.end method

.method public semColorfulVibrate([IILandroid/media/AudioAttributes;I)V
    .locals 0

    return-void
.end method

.method public semColorfulVibrate([IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V
    .locals 0

    return-void
.end method

.method public semGetMotorType()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public semIsEnhancedPatternProvided()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public semIsForceTouchSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public semIsHapticSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public semSetVibrationMute(Landroid/os/Vibrator$SemMagnitudeTypes;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Vibrator$SemMagnitudeTypes;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public semVibrate(IILandroid/media/AudioAttributes;I)V
    .locals 0

    return-void
.end method

.method public semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V
    .locals 0

    return-void
.end method

.method public semVibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;I)V
    .locals 0

    return-void
.end method

.method public semVibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V
    .locals 0

    return-void
.end method

.method public semVibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V
    .locals 0

    return-void
.end method

.method public semVibrate(JLandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V
    .locals 0

    return-void
.end method

.method public semVibrate(JLandroid/os/Vibrator$SemMagnitudeTypes;)V
    .locals 0

    return-void
.end method

.method public semVibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;I)V
    .locals 0

    return-void
.end method

.method public semVibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V
    .locals 0

    return-void
.end method

.method public semVibrate([JII)V
    .locals 0

    return-void
.end method

.method public semVibrate([JILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V
    .locals 0

    return-void
.end method

.method public setMagnitude(I)V
    .locals 0

    return-void
.end method

.method public abstract vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
.end method

.method public vibrate(J)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "Vibrator"

    const-string/jumbo v1, "Called vibrate(long) API!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void
.end method

.method public vibrate(JLandroid/media/AudioAttributes;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v2, "Vibrator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vibrate(long, AudioAttributes) API - PUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", PackageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", AudioAttr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    :try_start_0
    invoke-static {p1, p2, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Vibrator"

    const-string/jumbo v3, "Failed to create VibrationEffect"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public vibrate(Landroid/os/VibrationEffect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    .locals 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public vibrate([JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "Vibrator"

    const-string/jumbo v1, "Called vibrate(long[], int) API!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    return-void
.end method

.method public vibrate([JILandroid/media/AudioAttributes;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v1, "Vibrator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrate(long[], int, AudioAttributes) API - PUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", PackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", repeat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", AudioAttr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-lt p2, v1, :cond_0

    array-length v1, p1

    if-lt p2, v1, :cond_1

    :cond_0
    const-string/jumbo v1, "Vibrator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrate called with repeat index out of bounds (pattern.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Vibrator"

    const-string/jumbo v2, "Failed to create VibrationEffect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
