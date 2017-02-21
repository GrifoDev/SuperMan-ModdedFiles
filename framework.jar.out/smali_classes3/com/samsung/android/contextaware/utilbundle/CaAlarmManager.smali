.class public Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;
.super Ljava/lang/Object;
.source "CaAlarmManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;


# instance fields
.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getCurrentHour()I
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public final getCurrentMinute()I
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public final getCurrentSecond()I
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, "Context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method public final terminateManager()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method public final vibrateAlarm(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    const-string/jumbo v0, "mVibrator is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "vibrate alarm"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "vibrate Cancel"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method
