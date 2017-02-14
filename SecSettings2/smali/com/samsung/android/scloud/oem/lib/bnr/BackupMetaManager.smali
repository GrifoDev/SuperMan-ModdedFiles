.class public Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;
.super Ljava/lang/Object;
.source "BackupMetaManager.java"


# static fields
.field private static mMetaManager:Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;


# instance fields
.field private mBackupMeta:Landroid/content/SharedPreferences;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->mMetaManager:Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->mBackupMeta:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "BackupMeta"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->mBackupMeta:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;
    .locals 2

    const-class v1, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->mMetaManager:Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->mMetaManager:Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->mMetaManager:Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Z
    .locals 2

    const-string/jumbo v0, "BackupMetaManager, VERSION : 1.7.5"

    const-string/jumbo v1, "BackupMetaManager cleared!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->mBackupMeta:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public isFirstBackup(Ljava/lang/String;)Z
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->mBackupMeta:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "FIRST_BACKUP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "BackupMetaManager, VERSION : 1.7.5"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFirstBackup(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setFirstBackup(Ljava/lang/String;Z)V
    .locals 3

    const-string/jumbo v0, "BackupMetaManager, VERSION : 1.7.5"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setFirstBackup(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->mBackupMeta:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "FIRST_BACKUP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
