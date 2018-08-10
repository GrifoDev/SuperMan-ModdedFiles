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

.method public static declared-synchronized getBiometricsBackupTypeDB(Landroid/content/Context;)I
    .locals 4

    const-class v1, Lcom/samsung/android/settings/biometrics/BiometricsConfig;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "biometrics_backup_type"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getBiometricsFailedAttempts(Landroid/content/Context;)I
    .locals 4

    const-class v1, Lcom/samsung/android/settings/biometrics/BiometricsConfig;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "BiometricsConfig"

    const-string/jumbo v2, "getBiometricsFailedAttempts Called"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "biometrics_failed_attempt"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
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

.method public static isSamsungAccountSignedIn(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const-string/jumbo v2, "BiometricsConfig"

    const-string/jumbo v3, "isSamsungAccountSignedIn() - true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const-string/jumbo v2, "BiometricsConfig"

    const-string/jumbo v3, "isSamsungAccountSignedIn() - false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
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

.method public static declared-synchronized setBiometricsBackupTypeDB(Landroid/content/Context;I)Z
    .locals 6

    const/4 v5, 0x0

    const-class v2, Lcom/samsung/android/settings/biometrics/BiometricsConfig;

    monitor-enter v2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "BiometricsConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBiometricsBackupTypeDB : wrong backup type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v5

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "biometrics_backup_type"

    invoke-static {v1, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v1, "BiometricsConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBiometricsBackupTypeDB : result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | Backup Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getBiometricsBackupTypeDB(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setRemaingTimeToUnlock(Landroid/content/Context;)V
    .locals 6

    const-class v1, Lcom/samsung/android/settings/biometrics/BiometricsConfig;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

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

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
