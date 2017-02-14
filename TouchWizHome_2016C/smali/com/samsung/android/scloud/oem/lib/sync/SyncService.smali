.class public Lcom/samsung/android/scloud/oem/lib/sync/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# static fields
.field private static final SCLOUD_INTERFACE_PROVIDER:Ljava/lang/String; = "com.samsung.android.scloud.oem.lib.sync.SyncClientProivder"

.field private static final SCLOUD_PACKAGE:Ljava/lang/String; = "com.samsung.android.scloud"

.field private static final SCLOUD_SYNC_PACKAGE:Ljava/lang/String; = "com.samsung.android.scloud.sync"

.field private static final TAG:Ljava/lang/String; = "SCloud-SyncService"

.field private static sSyncAdapter:Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# instance fields
.field private mSupportSCloud:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapterLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapter:Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->mSupportSCloud:Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 8

    const/4 v7, 0x0

    const-string v3, "SCloud-SyncService"

    const-string v4, "onBind"

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v3, "SCloud-SyncService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "SCloud-SyncService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intent bundle - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->mSupportSCloud:Z

    if-nez v3, :cond_2

    const-string v3, "SCloud-SyncService"

    const-string v4, "set sync invisible.. SCloud package is not found !!.."

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/SCloudUtil;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v3

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getContentAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/samsung/android/scloud/oem/lib/SCloudUtil;->visibleSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapter:Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->isSyncable()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "SCloud-SyncService"

    const-string v4, "set sync invisible. from xml config"

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/SCloudUtil;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v3

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getContentAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/samsung/android/scloud/oem/lib/SCloudUtil;->visibleSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getClientMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;

    invoke-interface {v0, p0}, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;->isSyncable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v1, 0x0

    :cond_5
    if-nez v1, :cond_1

    const-string v3, "SCloud-SyncService"

    const-string v4, "set sync invisible. from ISCloudSyncClient config"

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/SCloudUtil;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v3

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getContentAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/samsung/android/scloud/oem/lib/SCloudUtil;->visibleSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 7

    sget-object v3, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v2, "SCloud-SyncService"

    const-string v4, "onCreate"

    invoke-static {v2, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapter:Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;-><init>(Landroid/content/Context;Z)V

    sput-object v2, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapter:Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.samsung.android.scloud"

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->mSupportSCloud:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.android.scloud.oem.lib.sync.SyncClientProivder"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string v2, "SCloud-SyncService"

    const-string v4, "SCloud package is found... enable sync provider"

    invoke-static {v2, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.samsung.android.scloud.sync"

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->mSupportSCloud:Z

    const-string v2, "SCloud-SyncService"

    const-string v4, "SCloud package is not found !!.."

    invoke-static {v2, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    :catch_2
    move-exception v0

    :try_start_7
    const-string v2, "SCloud-SyncService"

    const-string v4, "enable err"

    invoke-static {v2, v4, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->mSupportSCloud:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method
