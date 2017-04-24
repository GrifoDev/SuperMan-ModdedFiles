.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

.field final synthetic val$tUSER:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;Landroid/net/Uri;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iput-object p2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->val$uri:Landroid/net/Uri;

    iput p3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->val$tUSER:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->val$uri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->val$uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_0
    iget v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->val$tUSER:I

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    iget v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->val$tUSER:I

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->val$tUSER:I

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    iget v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->val$tUSER:I

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get13(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get6(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$PackageList;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get5(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$PackageList;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :goto_2
    :try_start_2
    monitor-exit v6

    iget v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->val$tUSER:I

    if-lez v5, :cond_4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->val$tUSER:I

    invoke-static {v5, v6}, Lcom/android/server/AlarmManagerServiceExt;->isApplicationUidAsUser(II)Z

    move-result v5

    :goto_3
    if-eqz v5, :cond_0

    if-eqz v1, :cond_5

    :cond_0
    :goto_4
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_0
    move-exception v2

    goto :goto_4

    :cond_4
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt;->isApplicationUid(I)Z

    move-result v5

    goto :goto_3

    :cond_5
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get15(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppList:Ljava/util/Set;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v6

    const-string/jumbo v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") is added to mUserAppList"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
.end method
