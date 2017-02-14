.class final Lcom/android/launcher2/LauncherModel$10;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZZ)Landroid/content/ContentValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/android/launcher2/HomeItem;

.field final synthetic val$notify:Z

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/android/launcher2/HomeItem;[Ljava/lang/StackTraceElement;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$10;->val$cr:Landroid/content/ContentResolver;

    iput-boolean p2, p0, Lcom/android/launcher2/LauncherModel$10;->val$notify:Z

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$10;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    iput-object p5, p0, Lcom/android/launcher2/LauncherModel$10;->val$stackTrace:[Ljava/lang/StackTraceElement;

    iput-object p6, p0, Lcom/android/launcher2/LauncherModel$10;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$10;->val$cr:Landroid/content/ContentResolver;

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$10;->val$notify:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$10;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v2, v2, Lcom/android/launcher2/HomeItem;->mId:J

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$10;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher2/LauncherModel;->checkItemInfoLocked(JLcom/android/launcher2/HomeItem;[Ljava/lang/StackTraceElement;)V

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v4, v3, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/launcher2/LauncherModel$36;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    iget-object v3, v3, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :pswitch_0
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v4, v2, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v2, v2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v2, v2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :cond_2
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sAddedHomeItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    check-cast v2, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    iget-object v3, v3, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$10;->val$item:Lcom/android/launcher2/HomeItem;

    iget-object v3, v3, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
