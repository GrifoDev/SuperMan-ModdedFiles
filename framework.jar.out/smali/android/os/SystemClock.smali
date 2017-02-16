.class public final Landroid/os/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemClock"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native currentThreadTimeMicro()J
.end method

.method public static native currentThreadTimeMillis()J
.end method

.method public static native currentTimeMicro()J
.end method

.method public static native elapsedRealtime()J
.end method

.method public static native elapsedRealtimeNanos()J
.end method

.method private static isEDMDateTimePolicyEnabled()Z
    .locals 4

    .prologue
    .line 142
    const/4 v1, 0x1

    .line 143
    .local v1, "dateTimePolicyEnabled":Z
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_0

    .line 144
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x4e1f

    if-gt v2, v3, :cond_0

    .line 145
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getDateTimePolicy()Landroid/sec/enterprise/DateTimePolicy;

    move-result-object v0

    .line 146
    .local v0, "dateTimePolicy":Landroid/sec/enterprise/DateTimePolicy;
    invoke-virtual {v0}, Landroid/sec/enterprise/DateTimePolicy;->isDateTimeChangeEnabled()Z

    move-result v1

    .line 148
    .end local v0    # "dateTimePolicy":Landroid/sec/enterprise/DateTimePolicy;
    .end local v1    # "dateTimePolicyEnabled":Z
    :cond_0
    return v1
.end method

.method public static setCurrentTimeMillis(J)Z
    .locals 8
    .param p0, "millis"    # J

    .prologue
    const/4 v6, 0x0

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->isEDMDateTimePolicyEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 161
    return v6

    .line 163
    :cond_0
    const-string/jumbo v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 164
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v3

    .line 165
    .local v3, "mgr":Landroid/app/IAlarmManager;
    if-nez v3, :cond_1

    .line 166
    return v6

    .line 170
    :cond_1
    :try_start_0
    invoke-interface {v3, p0, p1}, Landroid/app/IAlarmManager;->setTime(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 173
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/SecurityException;
    const-string/jumbo v4, "SystemClock"

    const-string/jumbo v5, "Unable to set RTC"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_0
    return v6

    .line 171
    :catch_1
    move-exception v1

    .line 172
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "SystemClock"

    const-string/jumbo v5, "Unable to set RTC"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static sleep(J)V
    .locals 10
    .param p0, "ms"    # J

    .prologue
    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 120
    .local v4, "start":J
    move-wide v0, p0

    .line 121
    .local v0, "duration":J
    const/4 v3, 0x0

    .line 124
    .local v3, "interrupted":Z
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    add-long v6, v4, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 130
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    .line 132
    if-eqz v3, :cond_1

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 117
    :cond_1
    return-void

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static native uptimeMillis()J
.end method
