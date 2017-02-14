.class public Lcom/android/incallui/bike/BikeCallVibrator;
.super Ljava/lang/Object;
.source "BikeCallVibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BikeCallVibrator"

.field private static sInstance:Lcom/android/incallui/bike/BikeCallVibrator;


# instance fields
.field private mBikeCallVibratorUri:Landroid/net/Uri;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorThread:Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/incallui/bike/BikeCallVibrator;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/bike/BikeCallVibrator;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/bike/BikeCallVibrator;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mBikeCallVibratorUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/incallui/bike/BikeCallVibrator;
    .locals 1

    sget-object v0, Lcom/android/incallui/bike/BikeCallVibrator;->sInstance:Lcom/android/incallui/bike/BikeCallVibrator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-direct {v0, p0}, Lcom/android/incallui/bike/BikeCallVibrator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/bike/BikeCallVibrator;->sInstance:Lcom/android/incallui/bike/BikeCallVibrator;

    :cond_0
    sget-object v0, Lcom/android/incallui/bike/BikeCallVibrator;->sInstance:Lcom/android/incallui/bike/BikeCallVibrator;

    return-object v0
.end method

.method private getVibrateWhenRinging(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    const-string v2, "vibrator"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BikeCallVibrator"

    invoke-static {v0, p0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "BikeCallVibrator"

    invoke-static {v0, p1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public isVibrating()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibratorThread:Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBikeCallVibratorUri(Landroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mBikeCallVibratorUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBikeCallVibratorUri uri :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/bike/BikeCallVibrator;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mBikeCallVibratorUri:Landroid/net/Uri;

    const-string v0, "personal_vibration"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeCallVibrator;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibratorThread:Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->stopThread()V

    iput-object v2, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibratorThread:Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;

    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    new-instance v0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;

    invoke-direct {v0, p0, v2}, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;-><init>(Lcom/android/incallui/bike/BikeCallVibrator;Lcom/android/incallui/bike/BikeCallVibrator$1;)V

    iput-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibratorThread:Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;

    const-string v0, "- re-starting vibrator..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/bike/BikeCallVibrator;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibratorThread:Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->start()V

    :cond_0
    return-void
.end method

.method public startVibration()V
    .locals 0

    return-void
.end method

.method public stopVibration()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeCallVibrator;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "- stopVibration: cleaning up vibrator thread..."

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/bike/BikeCallVibrator;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibratorThread:Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->stopThread()V

    iput-object v2, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibratorThread:Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;

    iput-object v2, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mBikeCallVibratorUri:Landroid/net/Uri;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mBikeCallVibratorUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    const-string v0, "- stopVibration mBikeCallVibratorUri : "

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/bike/BikeCallVibrator;->log(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mBikeCallVibratorUri:Landroid/net/Uri;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    const-string v0, "- stopVibration isVibrating is null "

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/bike/BikeCallVibrator;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method
