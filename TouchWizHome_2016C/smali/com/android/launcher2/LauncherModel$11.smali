.class final Lcom/android/launcher2/LauncherModel$11;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$ids:Ljava/util/List;

.field final synthetic val$notify:Z


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/ContentResolver;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$11;->val$ids:Ljava/util/List;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$11;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$11;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/launcher2/LauncherModel$11;->val$notify:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v7, 0x0

    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$11;->val$ids:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v11, 0x0

    invoke-static {v2, v3, v11}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v8

    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$11;->val$cr:Landroid/content/ContentResolver;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v8, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    sget-object v11, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/launcher2/LauncherModel$37;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v12, v1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v12}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v11, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    invoke-static {v1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v11

    if-nez v11, :cond_1

    sget-object v11, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v11, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    iget-wide v12, v1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v0, :cond_0

    new-instance v5, Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$11;->val$context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v11, Lcom/android/launcher2/LauncherModel$11$1;

    invoke-direct {v11, p0, v0, v1}, Lcom/android/launcher2/LauncherModel$11$1;-><init>(Lcom/android/launcher2/LauncherModel$11;Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V

    invoke-virtual {v5, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_2
    sget-object v11, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v11, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$11;->val$context:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v11

    iget-object v12, v1, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    sget-object v11, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$11;->val$context:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v11

    iget-object v12, v1, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    if-eqz v7, :cond_4

    iget-boolean v10, p0, Lcom/android/launcher2/LauncherModel$11;->val$notify:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$11;->val$cr:Landroid/content/ContentResolver;

    sget-object v11, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
