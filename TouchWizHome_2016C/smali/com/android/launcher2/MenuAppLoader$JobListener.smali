.class Lcom/android/launcher2/MenuAppLoader$JobListener;
.super Ljava/lang/Object;
.source "MenuAppLoader.java"

# interfaces
.implements Lcom/android/launcher2/utils/common/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher2/utils/common/FutureListener",
        "<",
        "Lcom/android/launcher2/AppItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mJob:Lcom/android/launcher2/MenuAppLoader$LoadJob;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppLoader;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppLoader;Lcom/android/launcher2/MenuAppLoader$LoadJob;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppLoader$JobListener;->this$0:Lcom/android/launcher2/MenuAppLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/MenuAppLoader$JobListener;->mJob:Lcom/android/launcher2/MenuAppLoader$LoadJob;

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/launcher2/utils/common/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/utils/common/Future",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader$JobListener;->this$0:Lcom/android/launcher2/MenuAppLoader;

    # getter for: Lcom/android/launcher2/MenuAppLoader;->mLoadJobs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppLoader;->access$100(Lcom/android/launcher2/MenuAppLoader;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader$JobListener;->this$0:Lcom/android/launcher2/MenuAppLoader;

    # getter for: Lcom/android/launcher2/MenuAppLoader;->mLoadJobs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppLoader;->access$100(Lcom/android/launcher2/MenuAppLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher2/MenuAppLoader$JobListener;->mJob:Lcom/android/launcher2/MenuAppLoader$LoadJob;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader$JobListener;->this$0:Lcom/android/launcher2/MenuAppLoader;

    # getter for: Lcom/android/launcher2/MenuAppLoader;->mLoadTasks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppLoader;->access$200(Lcom/android/launcher2/MenuAppLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/android/launcher2/utils/common/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader$JobListener;->this$0:Lcom/android/launcher2/MenuAppLoader;

    # getter for: Lcom/android/launcher2/MenuAppLoader;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppLoader;->access$500(Lcom/android/launcher2/MenuAppLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/MenuAppLoader$JobListener$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/MenuAppLoader$JobListener$1;-><init>(Lcom/android/launcher2/MenuAppLoader$JobListener;Lcom/android/launcher2/AppItem;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
