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

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 49
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getCurrentHour()I
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 111
    .local v0, "localCalendar":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public final getCurrentMinute()I
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 121
    .local v0, "localCalendar":Ljava/util/Calendar;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public final getCurrentSecond()I
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 131
    .local v0, "localCalendar":Ljava/util/Calendar;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    const-string/jumbo v0, "Context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 63
    return-void

    .line 67
    :cond_0
    const-string/jumbo v0, "vibrator"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    .line 60
    return-void
.end method

.method public final terminateManager()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    .line 79
    return-void
.end method

.method public final vibrateAlarm(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 91
    const-string/jumbo v0, "mVibrator is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 92
    return-void

    .line 95
    :cond_0
    if-eqz p1, :cond_1

    .line 96
    const-string/jumbo v0, "vibrate alarm"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 89
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string/jumbo v0, "vibrate Cancel"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method
