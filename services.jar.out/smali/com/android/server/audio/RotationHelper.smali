.class Lcom/android/server/audio/RotationHelper;
.super Ljava/lang/Object;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RotationHelper$AudioOrientationListener;,
        Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;,
        Lcom/android/server/audio/RotationHelper$RotationCheckThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioService.RotationHelper"

.field private static sContext:Landroid/content/Context;

.field private static sDeviceRotation:I

.field private static sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

.field private static final sRotationLock:Ljava/lang/Object;

.field private static sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static disable()V
    .locals 1

    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->disable()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->disable()V

    goto :goto_0
.end method

.method static enable()V
    .locals 1

    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->enable()V

    :goto_0
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->enable()V

    goto :goto_0
.end method

.method static init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid null context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sput-object p0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->enable()V

    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->canDetectOrientation()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "AudioService.RotationHelper"

    const-string/jumbo v1, "Not using WindowOrientationListener, reverting to OrientationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->disable()V

    sput-object v2, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    new-instance v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-direct {v0, p0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    sget-object v0, Lcom/android/server/audio/RotationHelper;->sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->enable()V

    :cond_1
    return-void
.end method

.method private static publishRotation(I)V
    .locals 3

    const-string/jumbo v0, "AudioService.RotationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "publishing device rotation ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (x90deg)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "AudioService.RotationHelper"

    const-string/jumbo v1, "Unknown device rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "rotation=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "rotation=90"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "rotation=180"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "rotation=270"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static updateOrientation()V
    .locals 3

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    sget-object v2, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget v1, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    if-eq v0, v1, :cond_0

    sput v0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    sget v1, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    invoke-static {v1}, Lcom/android/server/audio/RotationHelper;->publishRotation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
