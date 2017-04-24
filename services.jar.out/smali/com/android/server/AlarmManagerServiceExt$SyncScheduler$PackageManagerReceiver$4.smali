.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$4;
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

.field final synthetic val$uid:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;Landroid/net/Uri;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$4;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iput-object p2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$4;->val$uri:Landroid/net/Uri;

    iput p3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$4;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$4;->val$uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$4;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$4;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v1, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v1, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$4;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v1, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get15(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$4;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v1, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v1, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppList:Ljava/util/Set;

    iget v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$4;->val$uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    const-string/jumbo v1, "AlarmManagerEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$4;->val$uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") is removed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
