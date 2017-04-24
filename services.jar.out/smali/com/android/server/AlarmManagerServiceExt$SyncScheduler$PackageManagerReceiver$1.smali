.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$1;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->initInstalledPackagesAsUser(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

.field final synthetic val$userid:I


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iput p2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$1;->val$userid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v3, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v3, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    iget v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$1;->val$userid:I

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$1;->val$userid:I

    invoke-static {v3, v4}, Lcom/android/server/AlarmManagerServiceExt;->isApplicationUidAsUser(II)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v3, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get6(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$PackageList;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v3, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get5(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$PackageList;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v3

    :goto_2
    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v3, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get15(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v3, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v3, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppList:Ljava/util/Set;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    const-string/jumbo v3, "AlarmManagerEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") is added to mUserAppList as installed packages in Secure folder."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_3
    return-void
.end method
