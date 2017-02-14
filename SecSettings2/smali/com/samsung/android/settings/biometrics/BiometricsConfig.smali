.class public Lcom/samsung/android/settings/biometrics/BiometricsConfig;
.super Ljava/lang/Object;
.source "BiometricsConfig.java"


# static fields
.field private static mFailedBackupAttempts:I

.field private static mRemaingTimeToUnlock:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getRemaingTimeToUnlock(Landroid/content/Context;)J
    .locals 10

    const-wide/16 v8, 0x0

    const-class v3, Lcom/samsung/android/settings/biometrics/BiometricsConfig;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "biometrics_remaining_time"

    const-wide/16 v6, 0x0

    invoke-static {v2, v4, v6, v7}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    const-wide/16 v0, 0x0

    sget-wide v4, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_0

    sget-wide v4, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v4, v6

    cmp-long v2, v0, v8

    if-gtz v2, :cond_0

    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    :cond_0
    monitor-exit v3

    return-wide v0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized initBiometricsBackupPasswordValue(Landroid/content/Context;)V
    .locals 6

    const-class v1, Lcom/samsung/android/settings/biometrics/BiometricsConfig;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "BiometricsConfig"

    const-string/jumbo v2, "initBiometricsBackupValue Called"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "biometrics_failed_attempt"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "biometrics_remaining_time"

    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    const-string/jumbo v0, "BiometricsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFailedBackupAttempts ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "BiometricsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemaingTimeToUnlock ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized reportFailedBiometricsAttempts(Landroid/content/Context;)V
    .locals 4

    const-class v1, Lcom/samsung/android/settings/biometrics/BiometricsConfig;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "biometrics_failed_attempt"

    sget v3, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget v0, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->setRemaingTimeToUnlock(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetFailedBiometricsBackupAttempts(Landroid/content/Context;)V
    .locals 6

    const-class v1, Lcom/samsung/android/settings/biometrics/BiometricsConfig;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "BiometricsConfig"

    const-string/jumbo v2, "resetFailedBiometricsBackupAttempts Called"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "biometrics_failed_attempt"

    sget v3, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "biometrics_remaining_time"

    sget-wide v4, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setRemaingTimeToUnlock(Landroid/content/Context;)V
    .locals 6

    const-class v1, Lcom/samsung/android/settings/biometrics/BiometricsConfig;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    :goto_0
    sget v0, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    sput-wide v2, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "biometrics_remaining_time"

    sget-wide v4, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :pswitch_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    sput-wide v2, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_2
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    sput-wide v2, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    goto :goto_0

    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    sput-wide v2, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    goto :goto_0

    :pswitch_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long/2addr v2, v4

    sput-wide v2, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    goto :goto_0

    :pswitch_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    sput-wide v2, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
