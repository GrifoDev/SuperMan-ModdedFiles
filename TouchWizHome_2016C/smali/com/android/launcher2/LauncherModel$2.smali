.class Lcom/android/launcher2/LauncherModel$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->updateSessionDisplayInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$2;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v7, p0, Lcom/android/launcher2/LauncherModel$2;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v8, v7, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    instance-of v9, v2, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v9, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/HomeShortcutItem;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/launcher2/HomeShortcutItem;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/launcher2/HomeShortcutItem;->isPromise()Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v1, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x22

    invoke-virtual {v4, v9}, Lcom/android/launcher2/HomeShortcutItem;->hasStatusFlag(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$2;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v9, v9, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v10, v4, Lcom/android/launcher2/HomeShortcutItem;->promisedIntent:Landroid/content/Intent;

    const/4 v11, 0x0

    invoke-virtual {v9, v4, v10, v6, v11}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/HomeShortcutItem;Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;Z)V

    :goto_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$2;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v9, v9, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v4, v9}, Lcom/android/launcher2/HomeShortcutItem;->getIcon(Lcom/android/launcher2/PkgResCache;)Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v3, Lcom/android/launcher2/LauncherModel$2$1;

    invoke-direct {v3, p0, v5}, Lcom/android/launcher2/LauncherModel$2$1;-><init>(Lcom/android/launcher2/LauncherModel$2;Ljava/util/ArrayList;)V

    iget-object v7, p0, Lcom/android/launcher2/LauncherModel$2;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v7, v7, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    invoke-virtual {v7, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
