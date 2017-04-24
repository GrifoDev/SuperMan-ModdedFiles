.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v5, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "AlarmManagerEXT"

    const-string/jumbo v6, "ACTION_BOOT_COMPLETED"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get13(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get7(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get8(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get15(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt;->isApplicationUid(I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get6(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$PackageList;

    move-result-object v4

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get5(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$PackageList;

    move-result-object v4

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v4

    :goto_2
    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppList:Ljava/util/Set;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v7

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit v6

    throw v4

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    :try_start_3
    monitor-exit v7

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get16(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get16(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->-wrap0(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    monitor-exit v6

    const-string/jumbo v4, "account"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, v4, v9, v5}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    :cond_6
    return-void
.end method
