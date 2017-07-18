.class Lcom/android/launcher2/MenuAppLoader$JobListener$1;
.super Ljava/lang/Object;
.source "MenuAppLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppLoader$JobListener;->onFutureDone(Lcom/android/launcher2/utils/common/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppLoader$JobListener;

.field final synthetic val$item:Lcom/android/launcher2/AppItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppLoader$JobListener;Lcom/android/launcher2/AppItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppLoader$JobListener$1;->this$1:Lcom/android/launcher2/MenuAppLoader$JobListener;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppLoader$JobListener$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader$JobListener$1;->val$item:Lcom/android/launcher2/AppItem;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MenuAppLoader"

    const-string v2, "createApp load titleAndIcon(%s)(%s)(%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader$JobListener$1;->val$item:Lcom/android/launcher2/AppItem;

    iget-object v5, v5, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader$JobListener$1;->val$item:Lcom/android/launcher2/AppItem;

    iget-object v5, v5, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader$JobListener$1;->val$item:Lcom/android/launcher2/AppItem;

    iget-object v5, v5, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v5}, Lcom/android/launcher2/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader$JobListener$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->notifyLoaded()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader$JobListener$1;->this$1:Lcom/android/launcher2/MenuAppLoader$JobListener;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppLoader$JobListener;->this$0:Lcom/android/launcher2/MenuAppLoader;

    invoke-static {v1}, Lcom/android/launcher2/MenuAppLoader;->access$100(Lcom/android/launcher2/MenuAppLoader;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader$JobListener$1;->this$1:Lcom/android/launcher2/MenuAppLoader$JobListener;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppLoader$JobListener;->this$0:Lcom/android/launcher2/MenuAppLoader;

    invoke-static {v1}, Lcom/android/launcher2/MenuAppLoader;->access$100(Lcom/android/launcher2/MenuAppLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader$JobListener$1;->this$1:Lcom/android/launcher2/MenuAppLoader$JobListener;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppLoader$JobListener;->this$0:Lcom/android/launcher2/MenuAppLoader;

    invoke-static {v1}, Lcom/android/launcher2/MenuAppLoader;->access$200(Lcom/android/launcher2/MenuAppLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/android/launcher2/MenuAppLoader;->access$402(Z)Z

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->access$300()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MenuAppLoader"

    const-string v2, "createApp item is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
