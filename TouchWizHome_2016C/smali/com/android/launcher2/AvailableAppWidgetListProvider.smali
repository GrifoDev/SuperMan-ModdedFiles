.class public Lcom/android/launcher2/AvailableAppWidgetListProvider;
.super Ljava/lang/Object;
.source "AvailableAppWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidgetListProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;
    }
.end annotation


# static fields
.field private static final ACTION_APPWIDGET_SINGLE_INSTANCE:Ljava/lang/String; = "com.sec.launcher.action.APPWIDGET_SINGLE_INSTANCE"

.field private static final ACTION_APPWIDGET_SINGLE_INSTANCE_PACKAGE:Ljava/lang/String; = "com.sec.launcher.action.APPWIDGET_SINGLE_INSTANCE_PACKAGE"

.field private static final LOG_TAG:Ljava/lang/String; = "AvailableAppWidgetListProvider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mManager:Lcom/android/launcher2/compat/AppWidgetManagerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mManager:Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Lcom/android/launcher2/compat/AppWidgetManagerCompat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mManager:Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    return-object v0
.end method


# virtual methods
.method public checkAppWidgetSingleInstanceList()V
    .locals 15

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "itemType=4 AND intent like ?"

    new-array v2, v5, [Ljava/lang/String;

    const-string v1, "profileId"

    aput-object v1, v2, v4

    sget-object v11, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetListLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    sget-object v1, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    :try_start_1
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "%component="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    sget-object v1, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_0

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_1
    if-eqz v6, :cond_0

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :cond_3
    sget-object v1, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v6, 0x0

    :try_start_5
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "%component="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    sget-object v1, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v8

    :try_start_6
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v6, :cond_4

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_2
    move-exception v1

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    :cond_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void
.end method

.method public getAvailableWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/AvailableWidget;
    .locals 14

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v8, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v7

    new-array v2, v12, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v2, v9

    const-string v8, "android.appwidget.AppWidgetManager"

    const-string v11, "getInstalledProviders"

    invoke-static {v8, v11, v2, v12}, Lcom/android/launcher2/Reflection;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    new-array v11, v12, [Ljava/lang/Object;

    const/16 v12, 0x200

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v8, v3, v11}, Lcom/android/launcher2/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v7, :cond_0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-nez v7, :cond_1

    move-object v1, v10

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/appwidget/AppWidgetProviderInfo;

    iget v8, v6, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-lez v8, :cond_3

    iget v8, v6, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-gtz v8, :cond_4

    :cond_3
    sget-boolean v8, Lcom/android/launcher2/AvailableAppWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v8, :cond_2

    const-string v8, "AvailableAppWidgetListProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AppWidget specifies an invalid size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v8, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;

    if-eqz v5, :cond_5

    invoke-static {v5, v4}, Lcom/android/launcher2/AvailableWidgetListProvider$Util;->canUninstall(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v8

    :goto_2
    invoke-direct {v1, p0, v6, v8}, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;-><init>(Lcom/android/launcher2/AvailableAppWidgetListProvider;Landroid/appwidget/AppWidgetProviderInfo;Z)V

    iget-object v8, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_5
    move v8, v9

    goto :goto_2

    :cond_6
    move-object v1, v10

    goto :goto_0
.end method

.method public getAvailableWidgets()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    if-nez v12, :cond_0

    :goto_0
    return-object v10

    :cond_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Landroid/content/Intent;

    const-string v19, "android.appwidget.action.EASY_MODE"

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v6, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    new-instance v20, Landroid/content/ComponentName;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v19

    if-eqz v19, :cond_2

    new-instance v19, Landroid/content/ComponentName;

    const-string v20, "com.android.settings"

    const-string v21, "com.android.settings.dualsimwidget.DualsimWidget_data"

    invoke-direct/range {v19 .. v21}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_3
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "com.sec.android.widget.myeventwidget"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    :cond_4
    sget-boolean v20, Lcom/android/launcher2/AvailableAppWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v20, :cond_3

    const-string v20, "AvailableAppWidgetListProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "AppWidget ignored: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move-object/from16 v0, v17

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_6

    move-object/from16 v0, v17

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move/from16 v20, v0

    if-gtz v20, :cond_7

    :cond_6
    sget-boolean v20, Lcom/android/launcher2/AvailableAppWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v20, :cond_3

    const-string v20, "AvailableAppWidgetListProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "AppWidget specifies an invalid size: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    new-instance v3, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;

    invoke-static {v12, v11}, Lcom/android/launcher2/AvailableWidgetListProvider$Util;->canUninstall(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v3, v0, v1, v2}, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;-><init>(Lcom/android/launcher2/AvailableAppWidgetListProvider;Landroid/appwidget/AppWidgetProviderInfo;Z)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v20, Lcom/android/launcher2/AvailableAppWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v20, :cond_3

    const-string v20, "AvailableAppWidgetListProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Widget{"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "} "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " added"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    new-instance v13, Landroid/content/Intent;

    const-string v19, "com.sec.launcher.action.APPWIDGET_SINGLE_INSTANCE"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v13, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    sget-object v20, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetListLock:Ljava/lang/Object;

    monitor-enter v20

    if-eqz v14, :cond_a

    :try_start_0
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_a

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_9
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_9

    sget-object v21, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    const-string v21, "AvailableAppWidgetListProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "This widget is single instance - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v21, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    :cond_a
    :try_start_1
    new-instance v15, Landroid/content/Intent;

    const-string v19, "com.sec.launcher.action.APPWIDGET_SINGLE_INSTANCE_PACKAGE"

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v15, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_b
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    sget-object v21, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    const-string v21, "AvailableAppWidgetListProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "This widget is single instance package - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v21, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_c
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public isShortcutWidget(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
