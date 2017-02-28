.class final Lcom/android/launcher2/LauncherModel$12;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/android/launcher2/HomeItem;

.field final synthetic val$uriToDelete:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeItem;Landroid/content/ContentResolver;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$12;->val$item:Lcom/android/launcher2/HomeItem;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$12;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$12;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$12;->val$uriToDelete:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v6, 0x0

    const/4 v10, 0x0

    sget-object v4, Lcom/android/launcher2/LauncherModel$37;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$12;->val$item:Lcom/android/launcher2/HomeItem;

    iget-object v5, v5, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v5}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$12;->val$cr:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$12;->val$uriToDelete:Landroid/net/Uri;

    invoke-virtual {v4, v5, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$12;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v6, v5, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$12;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$12;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v6, v5, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$12;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$12;->val$cr:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "container="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/LauncherModel$12;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v8, v7, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$12;->val$item:Lcom/android/launcher2/HomeItem;

    check-cast v1, Lcom/android/launcher2/HomeFolderItem;

    iget-object v4, v1, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    iget-wide v6, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$12;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$12;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$12;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$12;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$12;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$12;->val$item:Lcom/android/launcher2/HomeItem;

    iget-object v5, v5, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    sget-object v4, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$12;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$12;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$12;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$12;->val$item:Lcom/android/launcher2/HomeItem;

    iget-object v5, v5, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
