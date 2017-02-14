.class Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconTitleRefreshTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsIconRefresh:Z

.field private mIsTitleRefresh:Z

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;ZZ)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->mIsIconRefresh:Z

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->mIsTitleRefresh:Z

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->mIsIconRefresh:Z

    iput-boolean p4, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->mIsTitleRefresh:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    sget-boolean v10, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v10, :cond_0

    const-string v10, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IconTitleRefreshTask start !, mIsIconRefresh : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->mIsIconRefresh:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mIsTitleRefresh : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->mIsTitleRefresh:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v10, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v10, v10, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v10}, Lcom/android/launcher2/PkgResCache;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    instance-of v10, v1, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v10, :cond_3

    move-object v7, v1

    check-cast v7, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v10, v7, Lcom/android/launcher2/HomeShortcutItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v12, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v10, v12, :cond_4

    invoke-virtual {v7}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-static {v10}, Lcom/android/launcher2/HomeShortcutItem;->isAppShortcut(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_4
    invoke-virtual {v7}, Lcom/android/launcher2/HomeShortcutItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/launcher2/HomeShortcutItem;->getUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v9

    if-eqz v0, :cond_3

    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v10, v10, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    new-instance v12, Lcom/android/launcher2/PkgResCache$CacheKey;

    invoke-direct {v12, v0, v9}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-virtual {v10, v12}, Lcom/android/launcher2/PkgResCache;->getLauncherActivityInfoCompat(Lcom/android/launcher2/PkgResCache$CacheKey;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->mContext:Landroid/content/Context;

    invoke-static {v10, v0, v9}, Lcom/android/launcher2/AppItem;->makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v4

    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v10, v10, Lcom/android/launcher2/LauncherModel;->mLauncherApps:Lcom/android/launcher2/compat/LauncherAppsCompat;

    invoke-virtual {v10, v4, v9}, Lcom/android/launcher2/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_3

    iget-boolean v10, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->mIsIconRefresh:Z

    if-eqz v10, :cond_9

    iget-boolean v10, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->mIsTitleRefresh:Z

    if-eqz v10, :cond_9

    const/4 v3, 0x1

    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isSafeMode()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/launcher2/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v3, 0x0

    :cond_6
    new-instance v8, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v8}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v12, v10, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    if-eqz v3, :cond_a

    sget v10, Lcom/android/launcher2/PkgResCache;->LOAD_ALL:I

    :goto_3
    invoke-virtual {v12, v0, v2, v8, v10}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/PkgResCache$TitleIconInfo;I)V

    if-eqz v3, :cond_7

    iget-object v10, v8, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v10, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_7
    iget-object v10, v8, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v10, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    sget-boolean v10, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v10, :cond_8

    const-string v10, "Launcher.Model"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "refresh Items !, title : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    :cond_a
    sget v10, Lcom/android/launcher2/PkgResCache;->LOAD_TITLE:I

    goto :goto_3

    :cond_b
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v5, v10, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_d

    :cond_c
    const-string v10, "Launcher.Model"

    const-string v11, "Nobody to tell about the app changes. Launcher is not running."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v10, v10, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v11, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$1;

    invoke-direct {v11, p0, v5, v6}, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$1;-><init>(Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v11}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_e
    sget-object v10, Lcom/android/launcher2/LauncherModel;->appsHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;

    invoke-direct {v11, p0, v5}, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;-><init>(Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
