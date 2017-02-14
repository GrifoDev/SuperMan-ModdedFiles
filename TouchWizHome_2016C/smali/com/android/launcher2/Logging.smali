.class public Lcom/android/launcher2/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Logging$PreferecesLogging;,
        Lcom/android/launcher2/Logging$LoggingInfo;
    }
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final FEATURE_NAME_ADD_SHORTCUT_FROM_SEARCH:Ljava/lang/String; = "SHAD"

.field public static final FEATURE_NAME_APPS_FOLDER_COUNT:Ljava/lang/String; = "APFO"

.field public static final FEATURE_NAME_APPS_FOLDER_NAME:Ljava/lang/String; = "APFN"

.field public static final FEATURE_NAME_APPS_ICON_STARTED:Ljava/lang/String; = "APIS"

.field public static final FEATURE_NAME_APPS_PAGE_COUNT:Ljava/lang/String; = "APPS"

.field public static final FEATURE_NAME_APPS_QUICK_OPTION:Ljava/lang/String; = "APQO"

.field public static final FEATURE_NAME_APP_SEARCH:Ljava/lang/String; = "APSC"

.field public static final FEATURE_NAME_ATOZ_APPS_REORDER:Ljava/lang/String; = "AZBT"

.field public static final FEATURE_NAME_AUTO_ALIGN:Ljava/lang/String; = "ATAN"

.field public static final FEATURE_NAME_BADGE_CLEAR:Ljava/lang/String; = "BGCR"

.field public static final FEATURE_NAME_CANCEL_MAKE_SHORTCUT:Ljava/lang/String; = "HCMS"

.field public static final FEATURE_NAME_DELETE_APPS_FOLDER:Ljava/lang/String; = "DTAF"

.field public static final FEATURE_NAME_DELETE_HOME_FOLDER:Ljava/lang/String; = "DTHF"

.field public static final FEATURE_NAME_DISABLE_APP:Ljava/lang/String; = "HSDS"

.field public static final FEATURE_NAME_ENTER_ZEROPAGE:Ljava/lang/String; = "ZPEN"

.field public static final FEATURE_NAME_FOLDER_ADD_APPS_IN_APPS:Ljava/lang/String; = "FAAA"

.field public static final FEATURE_NAME_FOLDER_ADD_APPS_IN_HOME:Ljava/lang/String; = "FAAH"

.field public static final FEATURE_NAME_FOLDER_ADD_MULTIPLE_APPS:Ljava/lang/String; = "FAMA"

.field public static final FEATURE_NAME_FOLDER_N_SEC_OPEN:Ljava/lang/String; = "FNSO"

.field public static final FEATURE_NAME_GRID_STATUS:Ljava/lang/String; = "HSGR"

.field public static final FEATURE_NAME_HOME_DEFAULT_ICON_CLICK:Ljava/lang/String; = "HDIC"

.field public static final FEATURE_NAME_HOME_DEFAULT_PAGE_INDEX:Ljava/lang/String; = "HDPI"

.field public static final FEATURE_NAME_HOME_EDIT_ENTER:Ljava/lang/String; = "HOEE"

.field public static final FEATURE_NAME_HOME_EDIT_OPTION:Ljava/lang/String; = "HOEO"

.field public static final FEATURE_NAME_HOME_EMPTY_PAGE_COUNT:Ljava/lang/String; = "HEPC"

.field public static final FEATURE_NAME_HOME_FOLDER_COUNT:Ljava/lang/String; = "HSFO"

.field public static final FEATURE_NAME_HOME_FOLDER_NAME:Ljava/lang/String; = "HOFN"

.field public static final FEATURE_NAME_HOME_ICON_STARTED:Ljava/lang/String; = "HOIS"

.field public static final FEATURE_NAME_HOME_ITEM_COUNT:Ljava/lang/String; = "HOIC"

.field public static final FEATURE_NAME_HOME_ONLY_MODE_ENABLED:Ljava/lang/String; = "HOMD"

.field public static final FEATURE_NAME_HOME_PAGE_COUNT:Ljava/lang/String; = "HOME"

.field public static final FEATURE_NAME_HOME_PAGE_REORDER:Ljava/lang/String; = "HPRO"

.field public static final FEATURE_NAME_HOME_QUICK_OPTION:Ljava/lang/String; = "HSQO"

.field public static final FEATURE_NAME_HOTSEAT_ADD:Ljava/lang/String; = "HSAD"

.field public static final FEATURE_NAME_HOTSEAT_DELETE:Ljava/lang/String; = "HSDT"

.field public static final FEATURE_NAME_HOTSEAT_LIST:Ljava/lang/String; = "HST"

.field public static final FEATURE_NAME_ICON_WIDGET_ARRANGMENT:Ljava/lang/String; = "IWAR"

.field public static final FEATURE_NAME_MOVE_APPS:Ljava/lang/String; = "MVAP"

.field public static final FEATURE_NAME_SEARCH_WIDGET_STARTED:Ljava/lang/String; = "GSWS"

.field public static final FEATURE_NAME_WIDGET_ADD:Ljava/lang/String; = "WGAD"

.field public static final FEATURE_NAME_WIDGET_COUNT:Ljava/lang/String; = "WGCT"

.field public static final FEATURE_NAME_WIDGET_DELETE:Ljava/lang/String; = "WGDT"

.field public static final FEATURE_NAME_WIDGET_LIST:Ljava/lang/String; = "LIST"

.field public static final FEATURE_NAME_WIDGET_SEARCH:Ljava/lang/String; = "WGSC"

.field public static final FEATURE_NAME_ZERO_PAGE_ENABLED:Ljava/lang/String; = "ZPON"

.field public static final FEATURE_NAME_ZERO_PAGE_STAY_TIME:Ljava/lang/String; = "ZPST"

.field public static final HOME_EDIT_OPTION_GRID:Ljava/lang/String; = "Grid"

.field public static final HOME_EDIT_OPTION_WALLPAPER_AND_THEME:Ljava/lang/String; = "Wallpaper and theme"

.field public static final HOME_EDIT_OPTION_WIDGET:Ljava/lang/String; = "Widget"

.field public static final HOME_EDIT_OPTION_ZEROPAGE:Ljava/lang/String; = "Zero page"

.field private static final PREFERECES_WEEKLOGGING_ENABLE:Ljava/lang/String; = "week_logging_enable"

.field private static final PREFERECES_WEEKLOGGING_WEEK_NUMBER:Ljava/lang/String; = "week_of_year_number"

.field private static final TAG:Ljava/lang/String; = "Launcher.Logging"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classifyZeroPageStayTime(J)I
    .locals 2

    const-wide/16 v0, 0x12c

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/16 v0, 0x12c

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, 0x3c

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const/16 v0, 0x3c

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1e

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2

    const/16 v0, 0x1e

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-ltz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static firstStatusLogging(Landroid/app/Activity;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/Logging$LoggingInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportContextServiceSurveyMode()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Logging$LoggingInfo;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v1, v2

    aget-object v4, v1, v2

    const-string v5, "app_id"

    const-string v6, "com.sec.android.app.launcher"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v1, v2

    const-string v5, "feature"

    invoke-virtual {v3}, Lcom/android/launcher2/Logging$LoggingInfo;->getFeatures()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/launcher2/Logging$LoggingInfo;->getExtras()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    aget-object v4, v1, v2

    const-string v5, "extra"

    invoke-virtual {v3}, Lcom/android/launcher2/Logging$LoggingInfo;->getExtras()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Lcom/android/launcher2/Logging$LoggingInfo;->getValues()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    aget-object v4, v1, v2

    const-string v5, "value"

    invoke-virtual {v3}, Lcom/android/launcher2/Logging$LoggingInfo;->getValues()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.android.providers.context.log.action.REPORT_MULTI_APP_STATUS_SURVEY"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "data"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "com.samsung.android.providers.context"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method private getAppsCount(Landroid/app/Activity;)I
    .locals 9

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "folderId , screen"

    aput-object v1, v2, v0

    const-string v3, "folderId is -1"

    const-string v5, "screen desc"

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "screen"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v6, v0, 0x1

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v6

    :catch_0
    move-exception v8

    :try_start_1
    const-string v0, "Launcher.Logging"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppsCount Exception : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getFolderNameValue(Landroid/app/Activity;Z)I
    .locals 12

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportContextServiceSurveyMode()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    if-eqz p1, :cond_1

    const-string v3, "itemType is 2"

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_3

    :try_start_0
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const/4 v8, 0x0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v11

    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "componentName is null"

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v7

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    if-nez v11, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :catch_1
    move-exception v7

    :try_start_2
    const-string v0, "Launcher.Logging"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFolderNameValue Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    if-nez v9, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    if-ne v9, v11, :cond_6

    const/4 v0, 0x3

    goto :goto_3

    :cond_6
    const/4 v0, 0x2

    goto :goto_3

    :cond_7
    const/4 v0, -0x1

    goto :goto_3
.end method

.method private getGridInfo(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-static {p1, v0}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getHomeCount()I
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method private static getHomeDefaultIndex()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getHomeEmptyPageCount()I
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/android/launcher2/Logging;->getHomeCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeView;->isIncludeItem(I)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getItemCount(Landroid/app/Activity;ZZ)I
    .locals 9

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportContextServiceSurveyMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x0

    const/4 v8, -0x1

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    const-string v3, "itemType is 2"

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    return v8

    :cond_1
    const-string v3, "itemType is 0 or itemType is 1"

    goto :goto_0

    :cond_2
    const-string v3, "componentName is null"

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_1
    const-string v0, "Launcher.Logging"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemCount Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    const/4 v8, -0x1

    goto :goto_2
.end method

.method private static getZeroPageStatus()Z
    .locals 4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "home_briefing_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getZeroPageStayTime()J
    .locals 10

    const-wide/16 v6, -0x1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportContextServiceSurveyMode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    const-string v8, "com.sec.android.app.launcher.prefs"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "ZPST"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v8, "ZPST"

    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    cmp-long v3, v4, v0

    if-gtz v3, :cond_0

    sub-long v6, v0, v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    :cond_0
    return-wide v6
.end method

.method public static homeDefaultPageIndexLogging()V
    .locals 7

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HDPI"

    invoke-static {}, Lcom/android/launcher2/Logging;->getHomeDefaultIndex()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public static homeEmptyPageLogging()V
    .locals 7

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HEPC"

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher2/Logging;->getHomeEmptyPageCount()I

    move-result v0

    int-to-long v4, v0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public static homeItemCountLogging(Landroid/app/Activity;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v6, v1}, Lcom/android/launcher2/Logging;->getItemCount(Landroid/app/Activity;ZZ)I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HOIC"

    const/4 v3, 0x0

    int-to-long v4, v0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method private static homeScreenModeLogging()V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v6

    :goto_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HOMD"

    const/4 v3, 0x0

    int-to-long v4, v0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static homeWidgetListLogging(Landroid/app/Activity;)V
    .locals 22

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportContextServiceSurveyMode()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const-string v5, "itemType is 4"

    const-string v7, "screen"

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    :try_start_0
    const-string v2, "intent"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    const-string v21, ""

    const/16 v19, 0x0

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v21

    :cond_0
    :try_start_2
    new-instance v20, Lcom/android/launcher2/Logging$LoggingInfo;

    const-string v2, "LIST"

    const-wide/16 v10, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1, v10, v11}, Lcom/android/launcher2/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v15

    :try_start_3
    const-string v2, "Launcher.Logging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "homeWidgetListLogging Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :catch_1
    move-exception v15

    :cond_2
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    const-string v10, "WGCT"

    const/4 v11, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v12, v2

    const/4 v14, 0x1

    invoke-static/range {v9 .. v14}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/launcher2/Logging;->firstStatusLogging(Landroid/app/Activity;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_2
    move-exception v15

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 7

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportContextServiceSurveyMode()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.sec.android.app.launcher"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-eqz v2, :cond_1

    const-string v2, "value"

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p5, :cond_3

    const-string v2, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void

    :cond_3
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static setWeekLogging(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/Logging$PreferecesLogging;->getWeekOfYearNumber()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-static {p0}, Lcom/android/launcher2/Logging;->homeWidgetListLogging(Landroid/app/Activity;)V

    invoke-static {}, Lcom/android/launcher2/Logging;->homeDefaultPageIndexLogging()V

    invoke-static {p0}, Lcom/android/launcher2/Logging;->homeItemCountLogging(Landroid/app/Activity;)V

    invoke-static {}, Lcom/android/launcher2/Logging;->homeEmptyPageLogging()V

    invoke-static {}, Lcom/android/launcher2/Logging;->zeroPageStatusLogging()V

    invoke-static {}, Lcom/android/launcher2/Logging;->homeScreenModeLogging()V

    invoke-static {v1}, Lcom/android/launcher2/Logging$PreferecesLogging;->setWeekOfYearNumber(I)V

    :cond_0
    return-void
.end method

.method public static setZeroPageStartTime()V
    .locals 6

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportContextServiceSurveyMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v4, "com.sec.android.app.launcher.prefs"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "ZPST"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static topFiveItemListLogging(Landroid/app/Activity;)V
    .locals 22

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportContextServiceSurveyMode()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "cellX , title, intent"

    aput-object v5, v6, v4

    const-string v7, "container is -101"

    const-string v9, "cellX"

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    :try_start_0
    const-string v4, "intent"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v18, ""

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v17, v17, 0x1

    :try_start_1
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    const/4 v4, 0x0

    invoke-static {v15, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    :goto_1
    :try_start_2
    new-instance v16, Lcom/android/launcher2/Logging$LoggingInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HST"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v20, -0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/launcher2/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v11

    :try_start_3
    const-string v4, "Launcher.Logging"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "topFiveItemListLogging Exception : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_4
    const-string v18, "Folder"
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v11

    :cond_2
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/launcher2/Logging;->firstStatusLogging(Landroid/app/Activity;Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_2
    move-exception v11

    goto :goto_3

    :catchall_0
    move-exception v4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private static zeroPageStatusLogging()V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/launcher2/Logging;->getZeroPageStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "ZPON"

    const-wide/16 v4, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "ZPON"

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0
.end method


# virtual methods
.method public startFisrtLoggingForLauncherStatus(Landroid/app/Activity;)V
    .locals 18

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher2/Logging;->getHomeCount()I

    move-result v13

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Logging;->getAppsCount(Landroid/app/Activity;)I

    move-result v11

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/android/launcher2/Logging;->getItemCount(Landroid/app/Activity;ZZ)I

    move-result v12

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/android/launcher2/Logging;->getItemCount(Landroid/app/Activity;ZZ)I

    move-result v10

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/launcher2/Logging;->getFolderNameValue(Landroid/app/Activity;Z)I

    move-result v8

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/launcher2/Logging;->getFolderNameValue(Landroid/app/Activity;Z)I

    move-result v2

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Logging;->getGridInfo(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    if-lez v13, :cond_0

    new-instance v7, Lcom/android/launcher2/Logging$LoggingInfo;

    const-string v14, "HOME"

    const/4 v15, 0x0

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v7, v14, v15, v0, v1}, Lcom/android/launcher2/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lez v11, :cond_1

    new-instance v3, Lcom/android/launcher2/Logging$LoggingInfo;

    const-string v14, "APPS"

    const/4 v15, 0x0

    int-to-long v0, v11

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v3, v14, v15, v0, v1}, Lcom/android/launcher2/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-ltz v12, :cond_2

    new-instance v5, Lcom/android/launcher2/Logging$LoggingInfo;

    const-string v14, "HSFO"

    const/4 v15, 0x0

    int-to-long v0, v12

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v5, v14, v15, v0, v1}, Lcom/android/launcher2/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-ltz v10, :cond_3

    new-instance v5, Lcom/android/launcher2/Logging$LoggingInfo;

    const-string v14, "APFO"

    const/4 v15, 0x0

    int-to-long v0, v10

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v5, v14, v15, v0, v1}, Lcom/android/launcher2/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-ltz v8, :cond_4

    new-instance v5, Lcom/android/launcher2/Logging$LoggingInfo;

    const-string v14, "HOFN"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-direct {v5, v14, v15, v0, v1}, Lcom/android/launcher2/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-ltz v2, :cond_5

    new-instance v5, Lcom/android/launcher2/Logging$LoggingInfo;

    const-string v14, "APFN"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-direct {v5, v14, v15, v0, v1}, Lcom/android/launcher2/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v4, :cond_6

    new-instance v6, Lcom/android/launcher2/Logging$LoggingInfo;

    const-string v14, "HSGR"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-direct {v6, v14, v4, v0, v1}, Lcom/android/launcher2/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Logging;->topFiveItemListLogging(Landroid/app/Activity;)V

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/launcher2/Logging;->firstStatusLogging(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method
