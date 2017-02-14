.class public Lcom/android/launcher2/LauncherProviderID;
.super Landroid/content/ContentProvider;
.source "LauncherProviderID.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.launcher.settings.id"

.field static final CALL_DISABLE_FOLDERING:Ljava/lang/String; = "disableFoldering"

.field static final CALL_GRID_SIZE:Ljava/lang/String; = "gridSize"

.field static final CONTENT_APPWIDGET_UNBIND_URI:Landroid/net/Uri;

.field static final PARAMETER_INITID:Ljava/lang/String; = "initId"

.field private static final TAG:Ljava/lang/String; = "LauncherFacade::LauncherProviderID"

.field static final WIDGET_CLS_NAME:Ljava/lang/String; = "widgetClsName"

.field static final WIDGET_PKG_NAME:Ljava/lang/String; = "widgetPkgName"


# instance fields
.field private mLauncherProvider:Lcom/android/launcher2/LauncherProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.launcher.settings.id/appWidgetUnbind"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherProviderID;->CONTENT_APPWIDGET_UNBIND_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getLauncherProvider()Lcom/android/launcher2/LauncherProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherProviderID;->mLauncherProvider:Lcom/android/launcher2/LauncherProvider;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherProviderID;->mLauncherProvider:Lcom/android/launcher2/LauncherProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProviderID;->mLauncherProvider:Lcom/android/launcher2/LauncherProvider;

    return-object v0
.end method

.method private handleWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 22

    if-eqz p3, :cond_0

    const-string v19, "itemType"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    if-nez v19, :cond_1

    :cond_0
    const/16 v19, 0x0

    :goto_0
    return-object v19

    :cond_1
    const-string v19, "itemType"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v12, v0, :cond_7

    const-string v19, "appWidgetId"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    const-string v19, "appWidgetId"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    if-eqz v19, :cond_7

    const-string v19, "appWidgetId"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const-string v19, "widgetPkgName"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    const-string v19, "widgetPkgName"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v19, "widgetClsName"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v19, "widgetPkgName"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v19, "widgetClsName"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v13, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v8}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v15, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    if-eqz v11, :cond_8

    new-instance v6, Landroid/appwidget/AppWidgetHost;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x400

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v7

    const-string v19, "appWidgetId"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v14

    if-nez v14, :cond_4

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v14}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v19

    const-string v20, "favorites"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    const-wide/16 v20, 0x0

    cmp-long v19, v16, v20

    if-gtz v19, :cond_5

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v8, v7, v10}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    move-object/from16 v19, p2

    goto/16 :goto_0

    :cond_6
    const-string v19, "LauncherFacade::LauncherProviderID"

    const-string v20, "Problem allocating appWidgetId"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_8
    const-string v19, "LauncherFacade::LauncherProviderID"

    const-string v20, "No insertion for widget"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private initValues(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 6

    const-string v2, "initId"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    if-eqz p2, :cond_1

    const-string v2, "_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    const-string v2, "LauncherFacade::LauncherProviderID"

    const-string v3, "Generating a new ID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "_id"

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherProvider;->generateNewHomeId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "LauncherFacade::LauncherProviderID"

    const-string v3, "Using old ID on insert"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    move-object v1, v0

    :goto_2
    return-object v1

    :sswitch_0
    const-string v5, "disableFoldering"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v5, "gridSize"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/AppFolderingSpr;->getInstance(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/AppFolderingSpr;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AppFolderingSpr;->setDisableFoldering(Z)V

    goto :goto_1

    :pswitch_1
    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(I)V

    const-string v3, "gridSize"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    move-object v1, v0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77664154 -> :sswitch_0
        0x12f4cc67 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/LauncherProviderID;->CONTENT_APPWIDGET_UNBIND_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "LauncherFacade::LauncherProviderID"

    const-string v4, "Unbinding widget"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x400

    invoke-direct {v0, v3, v4}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher2/LauncherProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/LauncherProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/LauncherProviderID;->initValues(Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/LauncherProviderID;->handleWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "widgetPkgName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "widgetPkgName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_2
    const-string v3, "widgetClsName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "widgetClsName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_3
    const-string v3, "LauncherFacade::LauncherProviderID"

    const-string v4, "About to insert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/LauncherProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/LauncherProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher2/LauncherProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
