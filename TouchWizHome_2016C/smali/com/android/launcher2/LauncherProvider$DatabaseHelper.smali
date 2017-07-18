.class public Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"

# interfaces
.implements Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DatabaseHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;
    }
.end annotation


# static fields
.field public static final HOMEMODE_CONTENT_URI:Landroid/net/Uri;

.field private static final MODE_ALL_To_ALL:Ljava/lang/String; = "MODE_ALL_To_ALL"

.field private static final MODE_HomeOnly_To_ALL_HomeOnly:Ljava/lang/String; = "MODE_HomeOnly_To_ALL_HomeOnly"

.field private static final MODE_HomeOnly_To_HomeOnly:Ljava/lang/String; = "MODE_HomeOnly_To_HomeOnly"

.field private static final MODE_Home_To_Home:Ljava/lang/String; = "MODE_Home_To_Home"

.field private static final RESTORE_MODE:Ljava/lang/String; = "RESTORE_MODE"

.field private static final TABLE_NAME_TEMP:Ljava/lang/String; = "temp_table"

.field private static final TAGS_ALLOWED_HOME:I = 0xf

.field private static final TAGS_ALLOWED_HOTSEAT:I = 0x7

.field private static final TAG_ALLOWED_APP:I = 0x1

.field private static final TAG_ALLOWED_FOLDER:I = 0x4

.field private static final TAG_ALLOWED_SHORTCUT:I = 0x2

.field private static final TAG_ALLOWED_WIDGET:I = 0x8

.field private static final TAG_APP:Ljava/lang/String; = "favorite"

.field private static final TAG_APPORDER:Ljava/lang/String; = "appOrder"

.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_AUTO_INSTALL:Ljava/lang/String; = "autoinstall"

.field private static final TAG_CATEGORY:Ljava/lang/String; = "category"

.field private static final TAG_CLOCK:Ljava/lang/String; = "clock"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_GRID_COLUMN:Ljava/lang/String; = "Columns"

.field private static final TAG_GRID_COLUMN_HOMEONLY:Ljava/lang/String; = "Columns_homeOnly"

.field private static final TAG_GRID_ROW:Ljava/lang/String; = "Rows"

.field private static final TAG_GRID_ROW_HOMEONLY:Ljava/lang/String; = "Rows_homeOnly"

.field private static final TAG_HOME:Ljava/lang/String; = "home"

.field private static final TAG_HOMEONLY:Ljava/lang/String; = "homeOnly"

.field private static final TAG_HOTSEAT:Ljava/lang/String; = "hotseat"

.field private static final TAG_HOTSEAT_HOMEONLY:Ljava/lang/String; = "hotseat_homeOnly"

.field private static final TAG_PAGE_COUNT:Ljava/lang/String; = "PageCount"

.field private static final TAG_PAGE_COUNT_HOMEONLY:Ljava/lang/String; = "PageCount_homeOnly"

.field private static final TAG_SCREEN_INDEX:Ljava/lang/String; = "ScreenIndex"

.field private static final TAG_SCREEN_INDEX_HOMEONLY:Ljava/lang/String; = "ScreenIndex_homeOnly"

.field private static final TAG_SEARCH:Ljava/lang/String; = "search"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_ZEROPAGE:Ljava/lang/String; = "zeroPage"


# instance fields
.field folderIds:Ljava/lang/StringBuilder;

.field private frontMenuApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mCSCFolderTitleKeyMap:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mIsDownGrade:Z

.field public mIsHomeModeChangeFeature:Z

.field private mIsHomeOnlyMode:Z

.field private mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mMaxCellIndexInApps:J

.field private mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mMaxFolderColorIndex:I

.field private mOmcAutoInstallApp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/LauncherSettings$FavoriteValue;",
            ">;"
        }
    .end annotation
.end field

.field private mOnlyLoadFrontApps:Z

.field private mPAIappOrderResParser:Landroid/content/res/XmlResourceParser;

.field private mPAItargetResources:Landroid/content/res/Resources;

.field private mPAIworkspaceResParser:Landroid/content/res/XmlResourceParser;

.field private mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

.field private mRestoreTitle:Ljava/lang/String;

.field private mRestore_columns:I

.field private mRestore_rows:I

.field mSupportFlexibleGrid:Z

.field mSupportGridSizeArray:[Ljava/lang/String;

.field mUsedGridSizeIdx:[Z

.field private mUsedOmcAutoInstallApp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserSerialNumber:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.selecthomewizard"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->HOMEMODE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 12

    const-string v7, "launcher.db"

    const/4 v8, 0x0

    const/16 v9, 0x17

    invoke-direct {p0, p1, v7, v8, v9}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestoreTitle:Ljava/lang/String;

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_rows:I

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_columns:I

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAItargetResources:Landroid/content/res/Resources;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAIworkspaceResParser:Landroid/content/res/XmlResourceParser;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAIappOrderResParser:Landroid/content/res/XmlResourceParser;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeModeChangeFeature:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeOnlyMode:Z

    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v7

    array-length v7, v7

    iput v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFolderColorIndex:I

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOmcAutoInstallApp:Ljava/util/HashMap;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mUsedOmcAutoInstallApp:Ljava/util/HashMap;

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsDownGrade:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOnlyLoadFrontApps:Z

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportGridSizeArray:[Ljava/lang/String;

    const/16 v7, 0xa

    new-array v7, v7, [Z

    iput-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mUsedGridSizeIdx:[Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportFlexibleGrid:Z

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->folderIds:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "LauncherProvider"

    const-string v8, "DATABASE_VERSION = 23"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/appwidget/AppWidgetHost;

    const/16 v8, 0x400

    invoke-direct {v7, p1, v8}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$400()Landroid/os/UserManager;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mUserSerialNumber:J

    iget-boolean v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz v7, :cond_d

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    const-string v8, "com.sec.android.app.launcher.prefs"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "home_only_mode"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "LauncherProvider"

    const-string v8, "PREFERENCES_HOME_ONLY_MODE is exist"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "home_only_mode"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/launcher2/LauncherApplication;->setHomeOnlyModeEnabled(Z)V

    :cond_1
    :goto_1
    const-string v7, "LauncherProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Home only mode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v7, 0x0

    const-string v8, "favorites"

    invoke-direct {p0, v7, v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    const-string v8, "appOrder"

    invoke-direct {p0, v7, v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getMaxFavoriteID(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    :cond_5
    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v7, :cond_6

    new-instance v7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "appOrder"

    invoke-direct {p0, v8, v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-boolean v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz v7, :cond_8

    const-string v7, "favorites_homeApps"

    invoke-direct {p0, v1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeOnlyMode:Z

    :cond_7
    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->switchFavoritesIfNecessary(Z)Z

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "appOrder"

    invoke-direct {p0, v7, v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getMaxCellIndexInApps(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxCellIndexInApps:J

    :cond_8
    iget-boolean v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsDownGrade:Z

    if-eqz v7, :cond_12

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "DB version DownGrade error!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_9
    const-string v7, "home_only_mode"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto/16 :goto_0

    :cond_a
    const-string v7, "LauncherProvider"

    const-string v8, "PREFERENCES_HOME_ONLY_MODE is not exist. Check setting DB"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getSupportHomeModeChangeIndex()I

    move-result v4

    :try_start_0
    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->HOMEMODE_CONTENT_URI:Landroid/net/Uri;

    const-string v9, "HomeMode"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v7, "HomeMode"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :cond_b
    :goto_3
    const-string v7, "LauncherProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "homeMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_c

    const/4 v5, 0x1

    :cond_c
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v7, "home_only_mode"

    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v7, "LauncherProvider"

    const-string v8, "There is not SelectHomeWizard. Homescreen will set HomeOnly mode"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LauncherProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DatabaseHelper Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_d
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v5, 0x1

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeOnlyMode:Z

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/launcher2/LauncherApplication;->setHomeOnlyModeEnabled(Z)V

    goto/16 :goto_1

    :cond_e
    iget-boolean v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyLabs()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    const-string v8, "com.sec.android.app.launcher.prefs"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "home_only_mode"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "LauncherProvider"

    const-string v8, "PREFERENCES_HOME_ONLY_MODE is exist"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "home_only_mode"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    :goto_4
    iput-boolean v5, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeOnlyMode:Z

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/launcher2/LauncherApplication;->setHomeOnlyModeEnabled(Z)V

    goto/16 :goto_1

    :cond_f
    const-string v7, "home_only_mode"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_4

    :cond_10
    const-string v7, "favorites_homeOnly"

    invoke-direct {p0, v1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    const-string v7, "favorites_homeOnly"

    iget-wide v8, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mUserSerialNumber:J

    invoke-direct {p0, v1, v7, v8, v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    const-string v7, "favorites_homeOnly"

    const/4 v8, 0x0

    invoke-direct {p0, v1, v7, v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    goto/16 :goto_2

    :cond_11
    const-string v7, "favorites_homeOnly"

    invoke-direct {p0, v1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    const-string v8, "com.sec.android.app.launcher.prefs"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "load_complete_home_only_mode"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "LauncherProvider"

    const-string v8, "Home only table is exist, but load not complete"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "DROP TABLE IF EXISTS favorites_homeOnly"

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v7, "favorites_homeOnly"

    iget-wide v8, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mUserSerialNumber:J

    invoke-direct {p0, v1, v7, v8, v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    const-string v7, "favorites_homeOnly"

    const/4 v8, 0x0

    invoke-direct {p0, v1, v7, v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    goto/16 :goto_2

    :cond_12
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;II)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesAppOrder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getOmcAutoInstallApp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->updateOmcAutoInstallApp(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private addAppAutoInstallShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 8

    const-wide/16 v2, -0x1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v2

    const-string v1, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "componentName"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    const-string v4, ""

    invoke-virtual {p2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    const-string v1, "restored"

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    const-string v1, "appOrder"

    const/4 v4, 0x0

    invoke-static {p0, p1, v1, v4, p2}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    const-wide/16 v2, -0x1

    :cond_0
    return-wide v2

    :cond_1
    const-string v1, "restored"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private addAppFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v0

    const-string v2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "appOrder"

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v3, p2}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    return-wide v0
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 14

    const-wide/16 v6, -0x1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    if-eqz p3, :cond_1

    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v6

    const-string v9, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "componentName"

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "appOrder"

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-static {p0, p1, v9, v10, v0}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gez v9, :cond_1

    const-wide/16 v6, -0x1

    :cond_1
    :goto_1
    return-wide v6

    :catch_0
    move-exception v4

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p4, v9, v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    new-instance v3, Landroid/content/ComponentName;

    const/4 v9, 0x0

    aget-object v9, v8, v9

    move-object/from16 v0, p5

    invoke-direct {v3, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v9, 0x0

    :try_start_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v4

    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get ActivityInfo for : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v5, 0x1

    and-int/lit8 v9, p7, 0x4

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/android/launcher2/XmlBackup;->isWillRestored(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v5

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$800()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$800()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    const/4 v5, 0x1

    :cond_4
    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v6

    const-string v9, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "componentName"

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "appOrder"

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-static {p0, p1, v9, v10, v0}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gez v9, :cond_1

    const-wide/16 v6, -0x1

    goto/16 :goto_1

    :catch_2
    move-exception v4

    move-object v2, v3

    goto/16 :goto_2
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;III)Z
    .locals 14

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isSafeMode()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    iget-object v11, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v6

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v11

    if-eqz v11, :cond_3

    move/from16 v3, p7

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v11, "appWidgetIdForceAllocMode"

    const-string v12, "ifEmpty"

    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "appWidgetIdForceAllocHostId"

    const/16 v12, 0x400

    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "Old_WidgetId"

    invoke-virtual {v9, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "New_WidgetId"

    invoke-virtual {v9, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move/from16 v0, p7

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1, v9}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v10, 0x1

    :goto_1
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v11, "intent"

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "itemType"

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "spanX"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "spanY"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "appWidgetId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v11, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {p0, p1, v0, v11, v1}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v2, 0x1

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$1000()Ljava/util/HashMap;

    move-result-object v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-static {v13, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "LauncherProvider"

    const-string v12, "Problem allocating appWidgetId"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string v11, "LauncherProvider"

    const-string v12, "B&R, appWidgetId; bindAppWidgetIdIfAllowed(..., cn, options) returned false"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_3
    const/16 v3, -0x3e8

    goto/16 :goto_1
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;III)Z
    .locals 15

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isSafeMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    if-eqz p5, :cond_1

    if-nez p6, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v12, 0x1

    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v12, :cond_4

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;III)Z

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v10

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    new-instance v6, Landroid/content/ComponentName;

    const/4 v2, 0x0

    aget-object v2, v14, v2

    move-object/from16 v0, p6

    invoke-direct {v6, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v11

    const/4 v13, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$900()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$900()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$900()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    const/4 v13, 0x1

    :cond_3
    move v12, v13

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has not package"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;III)Z

    move-result v2

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private addAutoInstallShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v0, -0x1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v0

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p5, p6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {p4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "intent"

    invoke-virtual {p4, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    const-string v3, ""

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "itemType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "spanX"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "spanY"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p7, :cond_1

    const-string v2, "restored"

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2, p3}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    return-wide v0

    :cond_1
    const-string v2, "restored"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 8

    const/4 v5, 0x2

    new-instance v4, Landroid/content/ComponentName;

    const-string v0, "com.android.alarmclock"

    const-string v1, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;III)Z

    move-result v0

    return v0
.end method

.method private addColumn(Lcom/android/launcher2/AddColumn;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    invoke-direct {p0, p3, p2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getColumnList(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher2/AddColumn;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher2/AddColumn;->getType()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method private addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ADD COLUMN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p3, :cond_2

    const-string v1, "INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private addColumns(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AddColumn;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getColumnList(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AddColumn;

    invoke-virtual {v0}, Lcom/android/launcher2/AddColumn;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AddColumn;

    invoke-virtual {v0}, Lcom/android/launcher2/AddColumn;->getType()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6

    const/4 v4, 0x1

    const-string v2, "itemType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v0

    const-string v2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2, p3}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    return-wide v0
.end method

.method private addHiddenAppForVoiceSearch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 22

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addHiddenAppForVoiceSearch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    const-string v21, "com.google.android.googlequicksearchbox/.VoiceSearchActivity"

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x1

    :try_start_0
    const-string v3, "appOrder"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "componentName"

    aput-object v5, v4, v2

    const-string v5, "(componentName=?)"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "com.google.android.googlequicksearchbox/.VoiceSearchActivity"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_4

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string v2, "com.google.android.googlequicksearchbox/.VoiceSearchActivity"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v19, 0x0

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldVoiceSearchAdd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v13

    :try_start_1
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addHiddenAppForVoiceSearch SQLException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v2, "com.google.android.googlequicksearchbox/.VoiceSearchActivity"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v16

    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "LauncherProvider"

    const-string v3, "add voice search to hidden app "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "hidden"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "screen"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v3, "appOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v14

    const-string v2, "_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "componentName"

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appOrder"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_3
    :goto_2
    return-void

    :cond_4
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    :catch_1
    move-exception v12

    const-string v2, "LauncherProvider"

    const-string v3, "no voice search "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private addHomeShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 20

    const-wide/16 v8, -0x1

    if-eqz p6, :cond_3

    if-eqz p7, :cond_3

    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x0

    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v15}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    const/4 v11, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v12

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v15

    move-object/from16 v0, p6

    invoke-virtual {v12, v0, v15}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    invoke-virtual {v4}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-virtual {v4}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/4 v11, 0x0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v15, 0x10200000

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v15, "intent"

    const/16 v16, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "itemType"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v15, "spanX"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v15, "spanY"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v15, "_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v15, v3}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-gez v15, :cond_3

    const-wide/16 v8, -0x1

    :cond_3
    :goto_1
    return-wide v8

    :catch_0
    move-exception v7

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object p6, v15, v16

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    new-instance v6, Landroid/content/ComponentName;

    const/4 v15, 0x0

    aget-object v15, v14, v15

    move-object/from16 v0, p7

    invoke-direct {v6, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v15, 0x0

    :try_start_3
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v15}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v5, v6

    goto/16 :goto_0

    :catch_1
    move-exception v7

    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "LauncherProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to add Home app: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v10, 0x1

    and-int/lit8 v15, p9, 0x4

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v15, v5}, Lcom/android/launcher2/XmlBackup;->isWillRestored(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v10

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$800()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$800()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    const/4 v10, 0x1

    :cond_6
    if-eqz v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v15, 0x10200000

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v15, "intent"

    const/16 v16, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, p8

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "itemType"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v15, "spanX"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v15, "spanY"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v15, "_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v15, v3}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-gez v15, :cond_3

    const-wide/16 v8, -0x1

    goto/16 :goto_1

    :catch_2
    move-exception v7

    move-object v5, v6

    goto/16 :goto_2
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;II)Z
    .locals 8

    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;III)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/4 v13, 0x0

    const/16 v20, 0x0

    if-eqz p6, :cond_0

    const/16 v24, 0x9

    const/16 v25, 0x0

    move-object/from16 v0, p6

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    const/16 v24, 0xa

    const/16 v25, 0x0

    move-object/from16 v0, p6

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    :cond_0
    if-eqz p6, :cond_1

    const/16 v24, 0xb

    :try_start_0
    move-object/from16 v0, p6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p7

    :cond_1
    const/16 v24, 0x0

    move-object/from16 v0, p7

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    if-eqz p6, :cond_5

    if-eqz v13, :cond_2

    if-nez v20, :cond_5

    :cond_2
    const-string v24, "LauncherProvider"

    const-string v25, "Shortcut is missing title or icon resource ID"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, -0x1

    :cond_3
    :goto_0
    return-wide v14

    :catch_0
    move-exception v10

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v24

    if-eqz v24, :cond_4

    const-string v24, "LauncherProvider"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Shortcut has malformed uri: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-wide/16 v14, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v14

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v24

    if-nez v24, :cond_6

    const/high16 v24, 0x10000000

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_6
    const-string v24, "intent"

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "itemType"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v24, "spanX"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v24, "spanY"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v24, "_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p6, :cond_8

    const-string v24, "iconType"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v24, "iconPackage"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "title"

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "iconResource"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v24

    move-object/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gez v24, :cond_3

    const-wide/16 v14, -0x1

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v24

    if-eqz v24, :cond_d

    const-string v24, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestoreTitle:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_a

    if-eqz p5, :cond_a

    const-string v24, "iconType"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v24, "iconPackage"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "iconResource"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz p9, :cond_b

    const-string v24, "LauncherProvider"

    const-string v25, "restore, shortcutUri road image from backup xml"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x2

    move-object/from16 v0, p9

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v12

    const-string v24, "icon"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_3
    if-eqz p10, :cond_7

    const/16 v22, 0x0

    :try_start_1
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$1100()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    :cond_9
    const-string v24, "LauncherProvider"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "vcf dir.exists():"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v24, "file://"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$1100()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const/16 v25, 0x2f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ".vcf"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v17

    new-instance v23, Ljava/io/BufferedWriter;

    new-instance v24, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct/range {v23 .. v24}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, v23

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$1200()Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v23, :cond_11

    :try_start_3
    invoke-virtual/range {v23 .. v23}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v22, v23

    goto/16 :goto_1

    :cond_a
    const-string v24, "iconType"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_b
    const-string v24, "LauncherProvider"

    const-string v25, "restore, shortcutUri road image, but imgId is null"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_1
    move-exception v10

    const-string v24, "LauncherProvider"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "makeTag_ContactShortcut IOException is thrown during close(). Ignored. "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v22, v23

    goto/16 :goto_1

    :catch_2
    move-exception v10

    :goto_4
    :try_start_4
    const-string v24, "LauncherProvider"

    const-string v25, "addUriShortcut(), FileNotFoundException thrown"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v22, :cond_7

    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v10

    const-string v24, "LauncherProvider"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "makeTag_ContactShortcut IOException is thrown during close(). Ignored. "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_4
    move-exception v10

    :goto_5
    :try_start_6
    const-string v24, "LauncherProvider"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "addUriShortcut(), IOException: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v22, :cond_7

    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v10

    const-string v24, "LauncherProvider"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "makeTag_ContactShortcut IOException is thrown during close(). Ignored. "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v24

    :goto_6
    if-eqz v22, :cond_c

    :try_start_8
    invoke-virtual/range {v22 .. v22}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_c
    :goto_7
    throw v24

    :catch_6
    move-exception v10

    const-string v25, "LauncherProvider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "makeTag_ContactShortcut IOException is thrown during close(). Ignored. "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_d
    const-string v6, ""

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    if-eqz v24, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->semGetCscPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :cond_e
    const-string v24, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_f

    if-nez v8, :cond_10

    :cond_f
    const-string v24, "LauncherProvider"

    const-string v25, "Shortcut is missing title or icon resource ID from csc resource"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, -0x1

    goto/16 :goto_0

    :cond_10
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v25, 0x64

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v24, "iconType"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v24, "icon"

    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_1

    :catchall_1
    move-exception v24

    move-object/from16 v22, v23

    goto/16 :goto_6

    :catch_7
    move-exception v10

    move-object/from16 v22, v23

    goto/16 :goto_5

    :catch_8
    move-exception v10

    move-object/from16 v22, v23

    goto/16 :goto_4

    :cond_11
    move-object/from16 v22, v23

    goto/16 :goto_1
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LauncherProvider"

    const-string v3, "converting database from an older format, but not onUpgrade"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x0

    const-string v2, "content://settings/old_favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-direct {p0, p1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-lez v2, :cond_5

    const/4 v6, 0x1

    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    if-eqz v6, :cond_2

    invoke-virtual {v0, v1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "LauncherProvider"

    const-string v3, "converted and now triggering widget upgrade"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_4
    return v6

    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    const/4 v4, 0x3

    new-array v14, v4, [I

    fill-array-data v14, :array_0

    const-string v4, "itemType"

    invoke-static {v4, v14}, Lcom/android/launcher2/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v5, "favorites"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v4

    const/4 v4, 0x1

    const-string v8, "itemType"

    aput-object v8, v6, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v5, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found upgrade cursor count="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v15, :cond_5

    const-string v4, "null"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    :cond_1
    :goto_1
    if-eqz v15, :cond_a

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v4, 0x1

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v12

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allocated appWidgetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for favoriteId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    const-string v4, "itemType"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "appWidgetId"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v4, 0x3e9

    move/from16 v0, v17

    if-ne v0, v4, :cond_6

    const-string v4, "spanX"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "spanY"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v4, "favorites"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v4, 0x3e8

    move/from16 v0, v17

    if-ne v0, v4, :cond_8

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.alarmclock"

    const-string v6, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v12, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v16

    :try_start_2
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "LauncherProvider"

    const-string v5, "Problem allocating appWidgetId"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v16

    :try_start_3
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "LauncherProvider"

    const-string v5, "Problem while allocating appWidgetIds for existing widgets"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v15, :cond_4

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto/16 :goto_0

    :cond_6
    :try_start_5
    const-string v4, "spanX"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "spanY"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v15, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v4

    :cond_8
    const/16 v4, 0x3ea

    move/from16 v0, v17

    if-ne v0, v4, :cond_9

    :try_start_6
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.camera"

    const-string v6, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v12, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    goto/16 :goto_1

    :cond_9
    const/16 v4, 0x3e9

    move/from16 v0, v17

    if-ne v0, v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v13, v12, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :cond_a
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v15, :cond_4

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_3

    nop

    :array_0
    .array-data 4
        0x3e8
        0x3ea
        0x3e9
    .end array-data
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 28

    const-string v24, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v24, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    const-string v24, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    const-string v24, "iconType"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v24, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v24, "iconPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v24, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v24, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v24, "itemType"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string v24, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    const-string v24, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v24, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v19, v0

    const/4 v9, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_0

    new-instance v23, Landroid/content/ContentValues;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/content/ContentValues;-><init>(I)V

    const-string v24, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v24, "intent"

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "title"

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "iconType"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v24, "icon"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v24, "iconPackage"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "iconResource"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "container"

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v24, "itemType"

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v24, "appWidgetId"

    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v24, "screen"

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v24, "cellX"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v24, "cellY"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v10, v9, 0x1

    aput-object v23, v19, v9

    move v9, v10

    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v18, v0

    const/4 v9, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v9, v0, :cond_2

    const-string v24, "favorites"

    const/16 v25, 0x0

    aget-object v26, v19, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gez v24, :cond_1

    const/16 v22, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_2
    return v22

    :cond_1
    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v24

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v24
.end method

.method private createAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE table appOrder (_id integer primary key,folderId integer not null default -1,screen integer not null default -1,cell integer not null default -1,hidden integer not null default 0,title text,componentName text,color integer not null default -1, secret integer not null default 0, profileId INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "modified INTEGER NOT NULL DEFAULT 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "restored INTEGER NOT NULL DEFAULT 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newCue INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private createFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id INTEGER PRIMARY KEY,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "itemType INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "container INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "screen INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellX INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellY INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spanX INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spanY INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "title TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "intent TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appWidgetId INTEGER NOT NULL DEFAULT -1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconType INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconPackage TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconResource TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconMovieUri TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icon BLOB,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "color INTEGER NOT NULL DEFAULT -1, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "secret INTEGER NOT NULL DEFAULT 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "festival INTEGER NOT NULL DEFAULT 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "profileId INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "modified INTEGER NOT NULL DEFAULT 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "restored INTEGER NOT NULL DEFAULT 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newCue INTEGER NOT NULL DEFAULT 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "options INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createPublicPreferences(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v8, "prefs"

    invoke-direct {p0, p1, v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v8

    const-string v9, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iget-object v8, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0c004a

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v8, "screencount"

    invoke-interface {v3, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_0

    if-le v5, v2, :cond_3

    :cond_0
    const-string v8, "CscFeature_Launcher_TotalPageCount"

    invoke-virtual {v0, v8}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    if-le v5, v2, :cond_3

    :cond_1
    const v8, 0x7f0c0002

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-lez v5, :cond_2

    if-le v5, v2, :cond_3

    :cond_2
    move v5, v2

    :cond_3
    const-string v8, "homescreenindex"

    const/4 v9, -0x1

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_4

    if-lt v6, v5, :cond_7

    :cond_4
    const-string v8, "CscFeature_Launcher_DefaultPageNumber"

    invoke-virtual {v0, v8}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_5

    if-lt v6, v5, :cond_7

    :cond_5
    const v8, 0x7f0c0046

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-ltz v6, :cond_6

    if-lt v6, v5, :cond_7

    :cond_6
    const/4 v6, 0x0

    :cond_7
    const-string v8, "CREATE TABLE IF NOT EXISTS prefs(key TEXT PRIMARY KEY,value INTEGER,modified INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v8, "insert into prefs values(?, ?, ?)"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    const-string v8, "defaultScreen"

    invoke-virtual {v7, v11, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    int-to-long v8, v6

    invoke-virtual {v7, v12, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v13, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const-string v8, "numScreens"

    invoke-virtual {v7, v11, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    int-to-long v8, v5

    invoke-virtual {v7, v12, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v13, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :goto_0
    return-void

    :cond_8
    :try_start_0
    const-string v8, "ALTER TABLE prefs ADD COLUMN modified INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v8, "LauncherProvider"

    const-string v9, "Current prefs Table is already altered to current DB"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private delAppFolder(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 4

    const-string v0, "appOrder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private delAppFolderAndUpdateFolderItem(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;I)Z
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "folderId"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "screen"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cell"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folderId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "appOrder"

    invoke-virtual {p1, v2, v1, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "appOrder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private delFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private delItemsInFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteHost()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    :cond_0
    return-void
.end method

.method private getColumnList(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRAGMA table_info("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    :cond_2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0
.end method

.method private getMaxCellIndexInApps(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select ifnull(max(cell),0) from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v2
.end method

.method private getMaxFavoriteID(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v2, "favorites"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v2, "favorites"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->intValue()I

    move-result v3

    if-le v2, v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private getOmcAutoInstallApp()Z
    .locals 12

    const/4 v11, 0x0

    const/4 v2, 0x0

    const-string v0, "LauncherProvider"

    const-string v3, "getOmcAutoInstallApp"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOmcAutoInstallApp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mUsedOmcAutoInstallApp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "content://com.samsung.android.omcprovider/available_title_icon"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "LauncherProvider"

    const-string v2, "getOmcAutoInstallApp uri is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v11

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v7, Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    invoke-direct {v7}, Lcom/android/launcher2/LauncherSettings$FavoriteValue;-><init>()V

    const-string v0, "package"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v0, "icon_drawable"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v8, :cond_1

    :cond_2
    iput-object v9, v7, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconPackage:Ljava/lang/String;

    iput-object v10, v7, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->title:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->icon:[B

    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOmcAutoInstallApp:Ljava/util/HashMap;

    iget-object v2, v7, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconPackage:Ljava/lang/String;

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOmcAutoInstallApp insert package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOmcAutoInstallApp insert title = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_1

    const-string v0, "LauncherProvider"

    const-string v2, "getOmcAutoInstallApp insert icon is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOmcAutoInstallApp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    move v11, v0

    goto/16 :goto_0

    :cond_5
    move v0, v11

    goto :goto_2
.end method

.method private getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v2, v6

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v6

    goto :goto_0
.end method

.method private getSearchWidgetProvider()Landroid/content/ComponentName;
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_0
.end method

.method private getTablesList(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTablesList()::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "android_metadata"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select ifnull(max(_id),0) from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: could not query max id from table "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-wide v2
.end method

.method private isValidPosition(JIILjava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-wide/16 v6, -0x64

    cmp-long v6, p1, v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportGridSizeArray:[Ljava/lang/String;

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportFlexibleGrid:Z

    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportGridSizeArray:[Ljava/lang/String;

    :cond_1
    iget-boolean v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportFlexibleGrid:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    const-string v6, ""

    invoke-virtual {p5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    const/4 v4, 0x1

    :goto_1
    if-eqz p6, :cond_4

    const-string v6, ""

    invoke-virtual {p6, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v6, v4, -0x1

    add-int/2addr p3, v6

    add-int/lit8 v6, v5, -0x1

    add-int/2addr p4, v6

    const/4 v1, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportGridSizeArray:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_8

    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportGridSizeArray:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportGridSizeArray:[Ljava/lang/String;

    aget-object v6, v6, v1

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v2, p3, :cond_7

    if-le v3, p4, :cond_7

    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mUsedGridSizeIdx:[Z

    const/4 v7, 0x1

    aput-boolean v7, v6, v1

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_6
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private loadAppOrderContainer(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;JZ)I
    .locals 45
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadAppOrderContainer. folderId: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v25

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v40

    const/16 v27, 0x0

    const/16 v35, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v33, 0x0

    const/16 v32, 0x0

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v4, ""

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v43

    const/4 v4, 0x3

    move/from16 v0, v43

    if-ne v0, v4, :cond_2

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v0, v40

    if-le v4, v0, :cond_3

    :cond_2
    const/4 v4, 0x1

    move/from16 v0, v43

    if-ne v0, v4, :cond_5

    :cond_3
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    const-string v5, "com.sec.android.app.launcher.prefs"

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v37

    const-string v4, "AppFolderNames"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return v35

    :cond_5
    const/4 v4, 0x2

    move/from16 v0, v43

    if-ne v0, v4, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadApplicationsContainer. Process tag: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v24, 0x0

    const-string v39, ""

    if-eqz p5, :cond_9

    const-string v7, ""

    const-string v8, ""

    const/4 v4, 0x0

    const-string v5, "screen"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v33, 0x0

    :goto_1
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    const-string v4, "favorite"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "autoinstall"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_7
    const/4 v15, 0x0

    if-eqz p5, :cond_a

    const/4 v4, 0x0

    const-string v5, "packageName"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    const-string v5, "className"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    const-string v5, "AppOrder_isFrontPosition"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v33

    const/4 v4, 0x0

    const-string v5, "hidden"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v32

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOnlyLoadFrontApps:Z

    if-eqz v4, :cond_b

    if-nez v32, :cond_8

    if-eqz v33, :cond_8

    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->frontMenuApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/android/app/launcher/R$styleable;->AppOrder:[I

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v24

    const/4 v4, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x3

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v39

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v32

    goto :goto_2

    :cond_b
    if-eqz v32, :cond_c

    const-string v4, "hidden"

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_c
    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-nez v4, :cond_f

    const-string v4, "screen"

    move-object/from16 v0, v39

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cell"

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/16 v16, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    const-string v5, "title"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v4, 0x0

    const-string v5, "restored"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    :cond_d
    const-string v4, "restored"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_e
    const-string v4, "autoinstall"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppAutoInstallShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-ltz v4, :cond_8

    add-int/lit8 v35, v35, 0x1

    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_3

    :cond_f
    const-string v4, "folderId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "screen"

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOmcAutoInstallApp:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOmcAutoInstallApp:Ljava/util/HashMap;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppAutoInstallShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-ltz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mUsedOmcAutoInstallApp:Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v35, v35, 0x1

    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_3

    :cond_11
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v6

    move-object v13, v7

    move-object v14, v8

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-ltz v4, :cond_8

    add-int/lit8 v35, v35, 0x1

    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOnlyLoadFrontApps:Z

    if-nez v4, :cond_1f

    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-nez v4, :cond_1f

    const-string v4, "folder"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v15, 0x0

    const/16 v41, -0x1

    const/16 v34, 0x0

    const/16 v29, 0x0

    if-eqz p5, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAItargetResources:Landroid/content/res/Resources;

    if-eqz v4, :cond_18

    move-object/from16 v4, p2

    check-cast v4, Landroid/util/AttributeSet;

    const/4 v5, 0x0

    const-string v9, "title"

    const/4 v10, 0x0

    invoke-interface {v4, v5, v9, v10}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAItargetResources:Landroid/content/res/Resources;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_5
    const/4 v4, 0x0

    const-string v5, "folderColor"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    :goto_6
    const-string v4, "Google"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/16 v34, 0x0

    :cond_13
    const-string v4, "title"

    invoke-virtual {v6, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "screen"

    move-object/from16 v0, v39

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cell"

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v6, v1, v15}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->setFolderColor(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v20

    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    const-string v5, "carrier"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/AppFolderingSpr;->getInstance(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/AppFolderingSpr;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher2/AppFolderingSpr;->setSprintFolderId(J)V

    :cond_14
    const/4 v4, 0x0

    const-string v5, "carrier"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    const-string v4, "T-Mobile"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher2/customer/TMO;->enableAppsFolderAdapt(J)V

    :cond_15
    add-int/lit8 v35, v35, 0x1

    add-int/lit8 v27, v27, 0x1

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move/from16 v22, p5

    invoke-direct/range {v17 .. v22}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderContainer(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;JZ)I

    move-result v30

    if-nez v30, :cond_1c

    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "] is empty - app pro"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->delAppFolder(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v4

    if-eqz v4, :cond_1b

    add-int/lit8 v35, v35, -0x1

    add-int/lit8 v27, v27, -0x1

    :cond_16
    :goto_7
    add-int v35, v35, v30

    if-eqz v34, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_17
    const-string v15, ""

    goto/16 :goto_5

    :cond_18
    const/4 v4, 0x0

    const-string v5, "title"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    :cond_19
    const/4 v4, 0x4

    const/4 v5, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v41

    const/4 v4, -0x1

    move/from16 v0, v41

    if-eq v0, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    :cond_1a
    const/4 v4, 0x6

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_6

    :cond_1b
    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to delete empty Appfolder. _id: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_1c
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_1d

    add-int/lit8 v23, v27, -0x1

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v22, v39

    invoke-direct/range {v18 .. v23}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->delAppFolderAndUpdateFolderItem(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_16

    add-int/lit8 v35, v35, -0x1

    goto/16 :goto_7

    :cond_1d
    move-object/from16 v42, v15

    const/4 v4, -0x1

    move/from16 v0, v41

    if-le v0, v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "en_US"

    aput-object v10, v5, v9

    move/from16 v0, v41

    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    :cond_1e
    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/customer/PostPosition;->getSharedPrefInfo()Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->APPS:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    move-object/from16 v0, v42

    move-wide/from16 v1, v20

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->writePreloadedFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;J)V

    goto/16 :goto_7

    :cond_1f
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v4

    if-eqz v4, :cond_20

    if-eqz p5, :cond_20

    const-string v4, "exclude"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, 0x0

    const-string v5, "packageNames"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/AppFolderingSpr;->getInstance(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/AppFolderingSpr;

    invoke-static/range {v28 .. v28}, Lcom/android/launcher2/AppFolderingSpr;->SetExcludePkgs(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_20
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid tag <"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "> detected while parsing favorites at line "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 26

    const/16 v20, 0x0

    const-string v3, "LauncherProvider"

    const-string v4, "loadAppOrderDefaults."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getOmcPath()Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getOmcEtcPath()Ljava/lang/String;

    move-result-object v21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/default_application_order.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/system/csc/default_application_order.xml"

    invoke-static {v3, v4}, Lcom/android/launcher2/Utilities;->checkOMCFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/default_application_order_guest.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/system/csc/default_application_order_guest.xml"

    invoke-static {v3, v4}, Lcom/android/launcher2/Utilities;->checkOMCFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/default_application_order_knox.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/system/csc/default_application_order_knox.xml"

    invoke-static {v3, v4}, Lcom/android/launcher2/Utilities;->checkOMCFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v8, 0x0

    const/4 v5, 0x0

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v18

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v19

    if-eqz v18, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v24, 0x0

    cmp-long v3, v6, v24

    if-lez v3, :cond_1

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v15}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v17

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    invoke-interface {v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v8, 0x1

    move-object v2, v9

    :goto_0
    const-wide/16 v6, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    :try_start_2
    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderContainer(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;JZ)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v20

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_1
    return v20

    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v23

    const-string v3, "appOrder"

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    move-object/from16 v5, v23

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAIappOrderResParser:Landroid/content/res/XmlResourceParser;

    if-eqz v3, :cond_3

    const-string v3, "LauncherProvider"

    const-string v4, "load PAI AppOrder layout"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAIappOrderResParser:Landroid/content/res/XmlResourceParser;

    const-string v4, "appOrder"

    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAIappOrderResParser:Landroid/content/res/XmlResourceParser;

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    if-nez v19, :cond_5

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v24, 0x0

    cmp-long v3, v6, v24

    if-lez v3, :cond_4

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v14}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v17

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    invoke-interface {v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v8, 0x1

    move-object v2, v9

    goto :goto_0

    :cond_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v23

    const-string v3, "appOrder"

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    move-object/from16 v5, v23

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v24, 0x0

    cmp-long v3, v6, v24

    if-lez v3, :cond_6

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v17

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    invoke-interface {v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v8, 0x1

    move-object v2, v9

    goto/16 :goto_0

    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v23

    const-string v3, "appOrder"

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v5, v23

    goto/16 :goto_0

    :catch_0
    move-exception v16

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing applications."

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_1
    move-exception v16

    :goto_2
    :try_start_9
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing applications."

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_7
    if-eqz v2, :cond_0

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v16

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing applications."

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_3
    move-exception v16

    :goto_3
    :try_start_b
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing applications."

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_8
    if-eqz v2, :cond_0

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v16

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing applications."

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_5
    move-exception v16

    :goto_4
    :try_start_d
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing applications."

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_9
    if-eqz v2, :cond_0

    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v16

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing applications."

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    :goto_5
    if-eqz v2, :cond_a

    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    :cond_a
    :goto_6
    throw v3

    :catch_7
    move-exception v16

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "LauncherProvider"

    const-string v6, "Got exception parsing applications."

    move-object/from16 v0, v16

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catchall_1
    move-exception v3

    move-object v2, v9

    goto :goto_5

    :catch_8
    move-exception v16

    move-object v2, v9

    goto :goto_4

    :catch_9
    move-exception v16

    move-object v2, v9

    goto :goto_3

    :catch_a
    move-exception v16

    move-object v2, v9

    goto/16 :goto_2
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    .locals 54

    const-string v2, "favorites_homeOnly"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    const/16 v38, 0x1

    :goto_0
    const/16 v43, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFavorites table: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotseatOnly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isHomeOnly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v5, "favorites_homeOnly"

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v31

    const/4 v2, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    const/4 v8, 0x0

    const/16 v51, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getOmcPath()Ljava/lang/String;

    move-result-object v45

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getOmcEtcPath()Ljava/lang/String;

    move-result-object v44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/default_workspace.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/system/csc/default_workspace.xml"

    invoke-static {v2, v3}, Lcom/android/launcher2/Utilities;->checkOMCFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/default_workspace_guest.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/system/csc/default_workspace_guest.xml"

    invoke-static {v2, v3}, Lcom/android/launcher2/Utilities;->checkOMCFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/default_workspace_knox.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/system/csc/default_workspace_knox.xml"

    invoke-static {v2, v3}, Lcom/android/launcher2/Utilities;->checkOMCFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/default_workspace_homeonly.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/system/csc/default_workspace_homeonly.xml"

    invoke-static {v2, v3}, Lcom/android/launcher2/Utilities;->checkOMCFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/default_workspace_homeonly_knox.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/system/csc/default_workspace_homeonly_knox.xml"

    invoke-static {v2, v3}, Lcom/android/launcher2/Utilities;->checkOMCFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v40

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v41

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v52

    const/16 v20, 0x0

    const/16 v22, 0x0

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v40, :cond_7

    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v38, :cond_2

    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v2, :cond_9

    const-string v2, "LauncherProvider"

    const-string v3, "loadFavorites not restored, mParserRestore is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v32, :cond_3

    :try_start_1
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    if-eqz v34, :cond_4

    :try_start_2
    invoke-virtual/range {v34 .. v34}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_3
    if-eqz v36, :cond_5

    :try_start_3
    invoke-virtual/range {v36 .. v36}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_4
    return v2

    :cond_6
    const/16 v38, 0x0

    goto/16 :goto_0

    :cond_7
    if-eqz v38, :cond_8

    :try_start_4
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeOnlyMode:Z

    if-eqz v2, :cond_11

    const-string p2, "favorites_homeApps"

    const-string v5, "favorites"

    :cond_a
    :goto_5
    if-eqz v38, :cond_b

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v48

    invoke-interface/range {v48 .. v48}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v30

    const-string v2, "load_complete_home_only_mode"

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_b
    if-eqz v51, :cond_c

    const-string v2, "favorites"

    move-object/from16 v0, v51

    invoke-static {v0, v2}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    move-object/from16 v8, v51

    :cond_c
    const/16 v19, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v48

    if-eqz v48, :cond_d

    const-string v2, "screencount.briefing"

    const/4 v3, 0x0

    move-object/from16 v0, v48

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    const/16 v19, 0x1

    :cond_d
    const-string v2, "favorites_homeOnly"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v18, v0

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    move-object/from16 v0, v18

    move/from16 v1, v39

    invoke-static {v2, v0, v1}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    aget v3, v18, v3

    const/4 v4, 0x1

    aget v4, v18, v4

    move/from16 v0, v39

    invoke-static {v2, v3, v4, v0}, Lcom/android/launcher2/Utilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    :cond_e
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v28

    :cond_f
    :goto_6
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v53

    const/4 v2, 0x3

    move/from16 v0, v53

    if-ne v0, v2, :cond_10

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v28

    if-le v2, v0, :cond_2e

    :cond_10
    const/4 v2, 0x1

    move/from16 v0, v53

    if-eq v0, v2, :cond_2e

    const/4 v2, 0x2

    move/from16 v0, v53

    if-ne v0, v2, :cond_f

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->restoreDB_items(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Z)I

    move-result v2

    add-int v43, v43, v2

    goto :goto_6

    :cond_11
    const-string p2, "favorites"

    const-string v5, "favorites_homeOnly"

    goto/16 :goto_5

    :cond_12
    if-eqz v40, :cond_15

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_13

    new-instance v37, Ljava/io/FileReader;

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    move-object/from16 v0, v37

    invoke-interface {v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_15
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v9, 0x1

    move-object/from16 v36, v37

    goto/16 :goto_5

    :cond_13
    if-eqz v38, :cond_14

    const v2, 0x7f070014

    :try_start_7
    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v51

    goto/16 :goto_5

    :cond_14
    const v2, 0x7f070015

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v51

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAIworkspaceResParser:Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_16

    const-string v2, "LauncherProvider"

    const-string v3, "load PAI workspace layout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAIworkspaceResParser:Landroid/content/res/XmlResourceParser;

    move-object/from16 v51, v0

    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_16
    if-nez v41, :cond_1a

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_17

    const v2, 0x7f070012

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v51

    goto/16 :goto_5

    :cond_17
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_18

    new-instance v35, Ljava/io/FileReader;

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-interface {v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_16
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v9, 0x1

    move-object/from16 v34, v35

    goto/16 :goto_5

    :cond_18
    :try_start_9
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_19

    new-instance v33, Ljava/io/FileReader;

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_17
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/4 v9, 0x1

    move-object/from16 v32, v33

    goto/16 :goto_5

    :cond_19
    const v2, 0x7f070011

    :try_start_b
    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v51

    goto/16 :goto_5

    :cond_1a
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_1b

    new-instance v33, Ljava/io/FileReader;

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_17
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const/4 v9, 0x1

    move-object/from16 v32, v33

    goto/16 :goto_5

    :cond_1b
    :try_start_d
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "config_voice_capable"

    const-string v4, "bool"

    const-string v6, "android"

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1c

    const v2, 0x7f070017

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v51

    goto/16 :goto_5

    :cond_1c
    const/16 v50, 0x0

    if-eqz v38, :cond_1d

    const v50, 0x7f070013

    :goto_7
    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v51

    goto/16 :goto_5

    :cond_1d
    const v50, 0x7f070010

    goto :goto_7

    :cond_1e
    const-string v2, "home"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    if-nez p3, :cond_f

    const-wide/16 v14, -0x64

    const/16 v16, 0xf

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v8

    move/from16 v17, v9

    invoke-direct/range {v10 .. v19}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ[II)I

    move-result v2

    add-int v43, v43, v2

    goto/16 :goto_6

    :cond_1f
    const-string v2, "hotseat"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-wide/16 v14, -0x65

    const/16 v16, 0x7

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v8

    move/from16 v17, v9

    invoke-direct/range {v10 .. v18}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ[I)I

    move-result v2

    add-int v43, v43, v2

    goto/16 :goto_6

    :cond_20
    const-string v2, "PageCount"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v53

    const/4 v2, 0x4

    move/from16 v0, v53

    if-ne v0, v2, :cond_f

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAG_PAGE_COUNT: isHomeOnly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",pageCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v38, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "_homeOnly"

    move/from16 v0, v46

    invoke-static {v2, v0, v3}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_6

    :catch_3
    move-exception v29

    :goto_8
    :try_start_e
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_21
    if-eqz v32, :cond_22

    :try_start_f
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    :cond_22
    :goto_9
    if-eqz v34, :cond_23

    :try_start_10
    invoke-virtual/range {v34 .. v34}, Ljava/io/FileReader;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    :cond_23
    :goto_a
    if-eqz v36, :cond_24

    :try_start_11
    invoke-virtual/range {v36 .. v36}, Ljava/io/FileReader;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    :cond_24
    :goto_b
    if-eqz v38, :cond_25

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v48

    invoke-interface/range {v48 .. v48}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v30

    const-string v2, "load_complete_home_only_mode"

    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_25
    move/from16 v2, v43

    goto/16 :goto_4

    :cond_26
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "_homeApps"

    move/from16 v0, v46

    invoke-static {v2, v0, v3}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_6

    :catch_4
    move-exception v29

    :goto_c
    :try_start_13
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_27
    if-eqz v32, :cond_28

    :try_start_14
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    :cond_28
    :goto_d
    if-eqz v34, :cond_29

    :try_start_15
    invoke-virtual/range {v34 .. v34}, Ljava/io/FileReader;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f

    :cond_29
    :goto_e
    if-eqz v36, :cond_24

    :try_start_16
    invoke-virtual/range {v36 .. v36}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_5

    goto :goto_b

    :catch_5
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    :cond_2a
    :try_start_17
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid tag <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> detected while parsing favorites at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_6

    :catch_6
    move-exception v29

    :goto_f
    :try_start_18
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :cond_2b
    if-eqz v32, :cond_2c

    :try_start_19
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileReader;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10

    :cond_2c
    :goto_10
    if-eqz v34, :cond_2d

    :try_start_1a
    invoke-virtual/range {v34 .. v34}, Ljava/io/FileReader;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_11

    :cond_2d
    :goto_11
    if-eqz v36, :cond_24

    :try_start_1b
    invoke-virtual/range {v36 .. v36}, Ljava/io/FileReader;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_7

    goto/16 :goto_b

    :catch_7
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    :cond_2e
    if-eqz v32, :cond_2f

    :try_start_1c
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileReader;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9

    :cond_2f
    :goto_12
    if-eqz v34, :cond_30

    :try_start_1d
    invoke-virtual/range {v34 .. v34}, Ljava/io/FileReader;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a

    :cond_30
    :goto_13
    if-eqz v36, :cond_24

    :try_start_1e
    invoke-virtual/range {v36 .. v36}, Ljava/io/FileReader;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8

    goto/16 :goto_b

    :catch_8
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    :catch_9
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :catch_a
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :catch_b
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    :catch_c
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    :catch_d
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    :catch_e
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    :catch_f
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    :catch_10
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    :catch_11
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    :catchall_0
    move-exception v2

    :goto_14
    if-eqz v32, :cond_31

    :try_start_1f
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileReader;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_12

    :cond_31
    :goto_15
    if-eqz v34, :cond_32

    :try_start_20
    invoke-virtual/range {v34 .. v34}, Ljava/io/FileReader;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_13

    :cond_32
    :goto_16
    if-eqz v36, :cond_33

    :try_start_21
    invoke-virtual/range {v36 .. v36}, Ljava/io/FileReader;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_14

    :cond_33
    :goto_17
    throw v2

    :catch_12
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v3

    if-eqz v3, :cond_31

    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :catch_13
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v3

    if-eqz v3, :cond_32

    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :catch_14
    move-exception v29

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v3

    if-eqz v3, :cond_33

    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v29

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :catchall_1
    move-exception v2

    move-object/from16 v36, v37

    goto :goto_14

    :catchall_2
    move-exception v2

    move-object/from16 v34, v35

    goto :goto_14

    :catchall_3
    move-exception v2

    move-object/from16 v32, v33

    goto :goto_14

    :catch_15
    move-exception v29

    move-object/from16 v36, v37

    goto/16 :goto_f

    :catch_16
    move-exception v29

    move-object/from16 v34, v35

    goto/16 :goto_f

    :catch_17
    move-exception v29

    move-object/from16 v32, v33

    goto/16 :goto_f

    :catch_18
    move-exception v29

    move-object/from16 v36, v37

    goto/16 :goto_c

    :catch_19
    move-exception v29

    move-object/from16 v34, v35

    goto/16 :goto_c

    :catch_1a
    move-exception v29

    move-object/from16 v32, v33

    goto/16 :goto_c

    :catch_1b
    move-exception v29

    move-object/from16 v36, v37

    goto/16 :goto_8

    :catch_1c
    move-exception v29

    move-object/from16 v34, v35

    goto/16 :goto_8

    :catch_1d
    move-exception v29

    move-object/from16 v32, v33

    goto/16 :goto_8
.end method

.method private loadFavoritesAppOrder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;II)I
    .locals 4

    const/4 v3, 0x0

    iput-object p2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAItargetResources:Landroid/content/res/Resources;

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAIworkspaceResParser:Landroid/content/res/XmlResourceParser;

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAIappOrderResParser:Landroid/content/res/XmlResourceParser;

    const-string v1, "favorites"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    add-int/2addr v0, v1

    iput-object v3, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAItargetResources:Landroid/content/res/Resources;

    iput-object v3, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAIworkspaceResParser:Landroid/content/res/XmlResourceParser;

    iput-object v3, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAIappOrderResParser:Landroid/content/res/XmlResourceParser;

    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getMaxFavoriteID(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v2, "appOrder"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    :cond_1
    return v0
.end method

.method private loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ[I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ[II)I

    move-result v0

    return v0
.end method

.method private loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ[II)I
    .locals 92
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "LauncherProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadFavoritesContainer. containerType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p4

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", allowedTags: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v18, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v53

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v81

    const/16 v68, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v73, 0x0

    const/16 v57, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v38, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v29, 0x0

    const/16 v40, 0x0

    const/16 v59, 0x0

    const/16 v63, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher2/LauncherFeature;->getOemDialerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v56

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getOemDialerClassName()Ljava/lang/String;

    move-result-object v55

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getCustomerDialerPackageName()Ljava/lang/String;

    move-result-object v83

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getCustomerDialerClassName()Ljava/lang/String;

    move-result-object v82

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v76

    const v6, 0x7f0d0018

    move-object/from16 v0, v76

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v78

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_1
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v87

    const/4 v6, 0x3

    move/from16 v0, v87

    if-ne v0, v6, :cond_2

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    move/from16 v0, v81

    if-le v6, v0, :cond_3

    :cond_2
    const/4 v6, 0x1

    move/from16 v0, v87

    if-ne v0, v6, :cond_5

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v6

    if-nez v6, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportFlexibleGrid:Z

    if-eqz v6, :cond_3e

    const-wide/16 v6, -0x64

    cmp-long v6, p4, v6

    if-nez v6, :cond_3e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportGridSizeArray:[Ljava/lang/String;

    if-eqz v6, :cond_3e

    const/16 v69, 0x0

    const/16 v64, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportGridSizeArray:[Ljava/lang/String;

    array-length v6, v6

    move/from16 v0, v64

    if-ge v0, v6, :cond_3c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mUsedGridSizeIdx:[Z

    aget-boolean v6, v6, v64

    if-eqz v6, :cond_4

    move/from16 v69, v64

    :cond_4
    add-int/lit8 v64, v64, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x2

    move/from16 v0, v87

    if-ne v0, v6, :cond_1

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v70

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "LauncherProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadFavoritesContainer. Process tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v70

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "hotseat"

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "homeOnly"

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "appOrder"

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "hotseat_homeOnly"

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    const-string v6, "LauncherProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wrong tag : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v70

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / break loop!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "hotseat"

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-wide/16 v10, -0x65

    const/4 v12, 0x7

    const/4 v14, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v13, p7

    invoke-direct/range {v6 .. v14}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ[I)I

    move-result v6

    add-int v68, v68, v6

    goto/16 :goto_1

    :cond_8
    const-string v79, ""

    if-eqz p7, :cond_12

    const/16 v37, 0x0

    const/4 v6, 0x0

    const-string v7, "packageName"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/4 v6, 0x0

    const-string v7, "className"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/4 v6, 0x0

    const-string v7, "packageName_replacement"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    const/4 v6, 0x0

    const-string v7, "className_replacement"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    const/4 v6, 0x0

    const-string v7, "screen"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    const/4 v6, 0x0

    const-string v7, "x"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v89

    const/4 v6, 0x0

    const-string v7, "y"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v90

    const/4 v6, 0x0

    const-string v7, "festival"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    const/4 v6, 0x0

    const-string v7, "hidden"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v63

    if-eqz v73, :cond_9

    if-eqz v57, :cond_9

    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "skt_phone20_settings"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    if-eqz v78, :cond_a

    move-object/from16 v0, v55

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object/from16 v0, v56

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-wide/16 v6, -0x65

    cmp-long v6, p4, v6

    if-nez v6, :cond_a

    move-object/from16 v19, v83

    move-object/from16 v20, v82

    const-string v6, "ChangeCallApp"

    const-string v7, "OEM -> T phone app"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, v82

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object/from16 v0, v83

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-wide/16 v6, -0x64

    cmp-long v6, p4, v6

    if-nez v6, :cond_b

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v79

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object/from16 v19, v56

    move-object/from16 v20, v55

    :cond_b
    :goto_4
    if-eqz v89, :cond_c

    const-string v6, ""

    move-object/from16 v0, v89

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    :cond_c
    const/4 v10, 0x0

    :goto_5
    if-eqz v90, :cond_d

    const-string v6, ""

    move-object/from16 v0, v90

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_d
    const/4 v11, 0x0

    :goto_6
    const-string v13, "1"

    move-object v12, v13

    if-eqz v79, :cond_e

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v66

    add-int v6, v66, p9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v79

    :cond_e
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    const-string v6, "container"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "screen"

    move-object/from16 v0, v17

    move-object/from16 v1, v79

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cellX"

    move-object/from16 v0, v17

    move-object/from16 v1, v89

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cellY"

    move-object/from16 v0, v17

    move-object/from16 v1, v90

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "secret"

    if-eqz v63, :cond_15

    const/4 v6, 0x1

    :goto_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-boolean v6, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v6, :cond_f

    const-string v7, "festival"

    if-nez v59, :cond_16

    const-string v6, "0"

    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    and-int/lit8 v6, p6, 0x1

    if-eqz v6, :cond_1a

    const-string v6, "favorite"

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const/16 v30, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v6, 0x0

    const-string v7, "restored"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v77 .. v77}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const-string v6, "restored"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_10
    const/4 v6, 0x0

    const-string v7, "icon"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v6, 0x2

    move-object/from16 v0, v40

    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v65

    move-object/from16 v0, v65

    array-length v6, v0

    if-lez v6, :cond_11

    const-string v6, "icon"

    move-object/from16 v0, v17

    move-object/from16 v1, v65

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_11
    const-string v6, "CHM"

    sget-object v7, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v6, "com.samsung.android.app.sreminder"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v6, "com.samsung.android.app.sreminder.phone.cardlist.SReminderActivity"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v6, "0"

    move-object/from16 v0, v79

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v6, "0"

    move-object/from16 v0, v89

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v6, "0"

    move-object/from16 v0, v90

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v6, "LauncherProvider"

    const-string v7, "s reminder app skip restore"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v58

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v6

    if-nez v6, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAIworkspaceResParser:Landroid/content/res/XmlResourceParser;

    if-nez v6, :cond_9

    move-object/from16 v19, v73

    move-object/from16 v20, v57

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/sec/android/app/launcher/R$styleable;->Favorite:[I

    move-object/from16 v0, v53

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v37

    const/4 v6, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v6, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v6, 0x3

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v73

    const/4 v6, 0x2

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v57

    const/4 v6, 0x4

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v79

    const/4 v6, 0x5

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v89

    const/4 v6, 0x6

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v90

    const/16 v6, 0xf

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v59

    const/16 v6, 0x11

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v63

    if-eqz v73, :cond_b

    if-eqz v57, :cond_b

    const/4 v6, 0x0

    :try_start_1
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v58

    move-object/from16 v19, v73

    move-object/from16 v20, v57

    goto/16 :goto_4

    :cond_13
    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_5

    :cond_14
    invoke-static/range {v90 .. v90}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto/16 :goto_6

    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_16
    move-object/from16 v6, v59

    goto/16 :goto_8

    :cond_17
    const/4 v6, 0x0

    const-string v7, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOmcAutoInstallApp:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_19

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOmcAutoInstallApp:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    move-object/from16 v7, p0

    move-wide/from16 v8, p4

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->isValidPosition(JIILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/16 v21, 0x1

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    invoke-direct/range {v14 .. v21}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAutoInstallShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_18

    add-int/lit8 v68, v68, 0x1

    :cond_18
    :goto_9
    if-nez p7, :cond_1

    invoke-virtual/range {v37 .. v37}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v7, p0

    move-wide/from16 v8, p4

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->isValidPosition(JIILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    move-object/from16 v21, p0

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    move-object/from16 v24, v17

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    invoke-direct/range {v21 .. v30}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addHomeShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_18

    add-int/lit8 v68, v68, 0x1

    goto :goto_9

    :cond_1a
    and-int/lit8 v6, p6, 0x1

    if-eqz v6, :cond_1b

    const-string v6, "autoinstall"

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    move-object/from16 v7, p0

    move-wide/from16 v8, p4

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->isValidPosition(JIILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/16 v21, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    invoke-direct/range {v14 .. v21}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAutoInstallShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_18

    add-int/lit8 v68, v68, 0x1

    goto :goto_9

    :cond_1b
    and-int/lit8 v6, p6, 0x2

    if-eqz v6, :cond_1f

    const-string v6, "shortcut"

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v41, 0x0

    if-eqz p7, :cond_1e

    const/4 v6, 0x0

    const-string v7, "uri"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const/4 v6, 0x0

    const-string v7, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const/4 v6, 0x0

    const-string v7, "icon"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v6

    if-eqz v6, :cond_1e

    if-eqz v38, :cond_1c

    const/16 v80, 0x0

    const/4 v6, 0x0

    :try_start_2
    move-object/from16 v0, v38

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v80

    :goto_a
    if-eqz v80, :cond_1c

    invoke-virtual/range {v80 .. v80}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1c

    const-string v6, "com.samsung.knox.rcp.components"

    invoke-virtual/range {v80 .. v80}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_1c
    const/4 v6, 0x0

    const-string v7, "restored"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string v6, "restored"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1d
    const/4 v6, 0x0

    const-string v7, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestoreTitle:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "iconPackage"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const/4 v6, 0x0

    const-string v7, "iconResource"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const/4 v6, 0x0

    const-string v7, "vcf"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    :cond_1e
    move-object/from16 v7, p0

    move-wide/from16 v8, p4

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->isValidPosition(JIILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    move-object/from16 v31, p0

    move-object/from16 v32, p1

    move-object/from16 v33, p2

    move-object/from16 v34, v17

    move-object/from16 v39, v29

    invoke-direct/range {v31 .. v41}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_18

    add-int/lit8 v68, v68, 0x1

    goto/16 :goto_9

    :catch_2
    move-exception v58

    invoke-virtual/range {v58 .. v58}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_a

    :cond_1f
    and-int/lit8 v6, p6, 0x8

    if-eqz v6, :cond_27

    const-string v6, "search"

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    const-string v12, "4"

    const-string v13, "1"

    if-eqz p7, :cond_25

    const/4 v6, 0x0

    const-string v7, "spanX"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x0

    const-string v7, "spanY"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_20
    :goto_b
    if-eqz v12, :cond_21

    const-string v6, "null"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    :cond_21
    const-string v12, "4"

    :cond_22
    if-eqz v13, :cond_23

    const-string v6, "null"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    :cond_23
    const-string v13, "1"

    :cond_24
    move-object/from16 v7, p0

    move-wide/from16 v8, p4

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->isValidPosition(JIILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    move-object/from16 v42, p0

    move-object/from16 v43, p1

    move-object/from16 v44, p2

    move-object/from16 v45, v17

    invoke-direct/range {v42 .. v47}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;II)Z

    move-result v6

    if-eqz v6, :cond_18

    add-int/lit8 v68, v68, 0x1

    goto/16 :goto_9

    :cond_25
    const/4 v6, 0x7

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_26

    const/4 v6, 0x7

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    :cond_26
    const/16 v6, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_20

    const/16 v6, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_b

    :cond_27
    and-int/lit8 v6, p6, 0x8

    if-eqz v6, :cond_28

    const-string v6, "clock"

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v12, "2"

    const-string v13, "2"

    move-object/from16 v7, p0

    move-wide/from16 v8, p4

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->isValidPosition(JIILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_18

    add-int/lit8 v68, v68, 0x1

    goto/16 :goto_9

    :cond_28
    and-int/lit8 v6, p6, 0x8

    if-eqz v6, :cond_2f

    const-string v6, "appwidget"

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    const/16 v51, -0x1

    if-eqz p7, :cond_2e

    const/4 v6, 0x0

    const-string v7, "spanX"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x0

    const-string v7, "spanY"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v6

    if-eqz v6, :cond_29

    const/4 v6, 0x0

    const-string v7, "appWidgetID"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v51

    :cond_29
    :goto_c
    if-eqz v12, :cond_2a

    const-string v6, "null"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    :cond_2a
    const-string v12, "1"

    :cond_2b
    if-eqz v13, :cond_2c

    const-string v6, "null"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    :cond_2c
    const-string v13, "1"

    :cond_2d
    move-object/from16 v7, p0

    move-wide/from16 v8, p4

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->isValidPosition(JIILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v49

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v50

    move-object/from16 v42, p0

    move-object/from16 v43, p1

    move-object/from16 v44, p2

    move-object/from16 v45, v17

    move-object/from16 v46, v25

    move-object/from16 v47, v19

    move-object/from16 v48, v20

    invoke-direct/range {v42 .. v51}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v6

    if-eqz v6, :cond_18

    add-int/lit8 v68, v68, 0x1

    goto/16 :goto_9

    :cond_2e
    const/4 v6, 0x7

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v6, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_c

    :cond_2f
    and-int/lit8 v6, p6, 0x4

    if-eqz v6, :cond_3b

    const-string v6, "folder"

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v84, 0x0

    const/16 v85, -0x1

    const/16 v67, 0x0

    const/16 v60, 0x0

    if-eqz p7, :cond_33

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAItargetResources:Landroid/content/res/Resources;

    if-eqz v6, :cond_32

    move-object/from16 v6, p3

    check-cast v6, Landroid/util/AttributeSet;

    const/4 v7, 0x0

    const-string v8, "title"

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v54

    if-eqz v54, :cond_31

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPAItargetResources:Landroid/content/res/Resources;

    move/from16 v0, v54

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v84

    :goto_d
    const/4 v6, 0x0

    const-string v7, "hideAddButton"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v67

    const/4 v6, 0x0

    const-string v7, "folderColor"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    :goto_e
    const-string v6, "Google"

    move-object/from16 v0, v84

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    const/16 v67, 0x0

    :cond_30
    const-string v6, "title"

    move-object/from16 v0, v17

    move-object/from16 v1, v84

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v60

    move-object/from16 v3, v84

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->setFolderColor(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, p0

    move-wide/from16 v8, p4

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->isValidPosition(JIILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v46

    const-wide/16 v6, 0x0

    cmp-long v6, v46, v6

    if-ltz v6, :cond_18

    add-int/lit8 v68, v68, 0x1

    and-int/lit8 v48, p6, -0xd

    move-object/from16 v42, p0

    move-object/from16 v43, p1

    move-object/from16 v44, p2

    move-object/from16 v45, p3

    move/from16 v49, p7

    move-object/from16 v50, p8

    :try_start_3
    invoke-direct/range {v42 .. v50}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ[I)I

    move-result v61

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$500()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->delFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->delItemsInFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    add-int/lit8 v68, v68, -0x1

    goto/16 :goto_0

    :cond_31
    const-string v84, ""

    goto/16 :goto_d

    :cond_32
    const/4 v6, 0x0

    const-string v7, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    goto/16 :goto_d

    :cond_33
    const/16 v6, 0xa

    const/4 v7, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v85

    const/4 v6, -0x1

    move/from16 v0, v85

    if-eq v0, v6, :cond_34

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move/from16 v0, v85

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v84

    :cond_34
    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    const/16 v6, 0x12

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v60

    goto/16 :goto_e

    :cond_35
    const/4 v6, 0x1

    move/from16 v0, v61

    if-gt v0, v6, :cond_38

    :try_start_4
    const-string v6, "LauncherProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v84

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] is empty - home pro"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->delFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_37

    add-int/lit8 v68, v68, -0x1

    const/4 v6, 0x1

    move/from16 v0, v61

    if-ne v0, v6, :cond_36

    new-instance v75, Landroid/content/ContentValues;

    invoke-direct/range {v75 .. v75}, Landroid/content/ContentValues;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "container = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v46

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    const-string v6, "container"

    const-string v7, "container"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v75

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "screen"

    const-string v7, "screen"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v75

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "cellX"

    move-object/from16 v0, v75

    move-object/from16 v1, v89

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cellY"

    move-object/from16 v0, v75

    move-object/from16 v1, v90

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v75

    move-object/from16 v3, v88

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_36
    :goto_f
    add-int v68, v68, v61

    if-eqz p7, :cond_18

    const-string v6, "T-Mobile"

    move-object/from16 v0, v84

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v6

    move-object/from16 v0, v84

    move-wide/from16 v1, v46

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/launcher2/customer/TMO;->enableHomeFolderAdapt(Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_9

    :catch_3
    move-exception v58

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v6, "LauncherProvider"

    const-string v7, "Failed to load favorites"

    move-object/from16 v0, v58

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    :cond_37
    :try_start_5
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v6

    if-eqz v6, :cond_36

    const-string v6, "LauncherProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to delete empty folder. _id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v46

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_38
    if-eqz v67, :cond_39

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->folderIds:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    move-object/from16 v86, v84

    const/4 v6, -0x1

    move/from16 v0, v85

    if-le v0, v6, :cond_3a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "en_US"

    aput-object v9, v7, v8

    move/from16 v0, v85

    invoke-virtual {v6, v0, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v86

    :cond_3a
    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/customer/PostPosition;->getSharedPrefInfo()Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->HOME:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    move-object/from16 v0, v86

    move-wide/from16 v1, v46

    invoke-virtual {v6, v7, v0, v1, v2}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->writePreloadedFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_f

    :cond_3b
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v6, "LauncherProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid tag <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v70

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> detected while parsing favorites at line "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_3c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportGridSizeArray:[Ljava/lang/String;

    aget-object v6, v6, v69

    if-eqz v6, :cond_3e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportGridSizeArray:[Ljava/lang/String;

    aget-object v6, v6, v69

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v62

    if-eqz v62, :cond_3e

    move-object/from16 v0, v62

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3e

    const/4 v6, 0x0

    aget-object v6, v62, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v71

    const/4 v6, 0x1

    aget-object v6, v62, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    if-eqz p8, :cond_3e

    const/4 v6, 0x0

    aget v6, p8, v6

    move/from16 v0, v71

    if-ne v6, v0, :cond_3d

    const/4 v6, 0x1

    aget v6, p8, v6

    move/from16 v0, v72

    if-eq v6, v0, :cond_3e

    :cond_3d
    const-string v6, "LauncherProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadFavoritesContainer() store adjust home gridsize newX : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v71

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newY : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v72

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v7, "favorites_homeOnly"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move/from16 v0, v71

    move/from16 v1, v72

    invoke-static {v6, v0, v1, v7}, Lcom/android/launcher2/Utilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    :cond_3e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->folderIds:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v6

    const-string v7, "com.sec.android.app.launcher.prefs"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v74

    const-string v6, "HomeFolderIds"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->folderIds:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v74

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v74 .. v74}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3f
    return v68
.end method

.method private migrate(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)Z
    .locals 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "LauncherProvider"

    const-string v11, "migrate(), ..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string v9, "LauncherProvider"

    const-string v10, "migrate() return, (database == null || context == null)"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v8

    :cond_2
    new-instance v4, Ljava/io/File;

    const-string v10, "pagesettings.db"

    invoke-virtual {p2, v10}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    const-string v11, "pagesettings.db"

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pagesettings.db    not   exist, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pagesettings.db : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v10, "PRAGMA table_info(favorites)"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    :try_start_1
    const-string v10, "name"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    :cond_6
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-nez v10, :cond_6

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_1
    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "columnList: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "favorites"

    invoke-direct {p0, p1, v10, p2, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->migrateFavourites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;Ljava/util/ArrayList;)V

    const-string v10, "favorites_homeApps"

    invoke-direct {p0, p1, v10}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string v10, "favorites_homeApps"

    invoke-direct {p0, p1, v10, p2, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->migrateFavourites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_8
    :goto_2
    const-string v10, "appOrder"

    invoke-direct {p0, p1, v10, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->migrateAppOrder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v10

    const-string v11, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v10, v11, v8}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    :try_start_2
    const-string v10, "home_zeropage_enable"

    invoke-interface {v6, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Launcher_ConfigMagazineHome"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "home_zeropage_enable"

    const-string v11, "off"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    :goto_3
    invoke-interface {v3, v10, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_9
    :goto_4
    const-string v8, "home_briefing_enable"

    const-string v10, "home_zeropage_enable"

    invoke-interface {v6, v10, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-interface {v3, v8, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v8, v9

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "migrate Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v8

    :cond_b
    const-string v10, "favorites_homeOnly"

    invoke-direct {p0, p1, v10}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "favorites_homeOnly"

    invoke-direct {p0, p1, v10, p2, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->migrateFavourites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_c
    move v8, v9

    goto :goto_3

    :catch_1
    move-exception v2

    const-string v8, "LauncherProvider"

    const-string v10, "CSCFeature Read error!!"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private migrateAppOrder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v4, "_id, folderId, screen, hidden, title, componentName, color"

    const-string v3, "_id, containerId, pos, hidden, title, componentName, color"

    const-string v13, "CREATE table temp_table (_id integer primary key,folderId integer not null default -1,screen integer not null default -1,cell integer not null default -1,hidden integer not null default 0,title TEXT,componentName TEXT,color INTEGER NOT NULL DEFAULT -1,secret integer not null default 0,profileId INTEGER DEFAULT 0,modified INTEGER NOT NULL DEFAULT 0,restored INTEGER NOT NULL DEFAULT 0,newCue INTEGER NOT NULL DEFAULT 0);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "profileId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, ","

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "profileId"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v13, "modified"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, ","

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "modified"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v13, "restored"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, ","

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "restored"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v13, "newCue"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, ","

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "newCue"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "INSERT INTO temp_table ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") SELECT "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " FROM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SELECT _id, containerId, pos FROM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " WHERE container=2"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "UPDATE temp_table SET folderId=?, screen=?, cell=? WHERE _id=?"

    const/4 v8, 0x0

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-nez v13, :cond_6

    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :try_start_1
    const-string v13, "UPDATE temp_table SET folderId=?, screen=?, cell=? WHERE _id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    :cond_7
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v13, 0x1

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v13, 0x2

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v13, 0x1

    const-wide/16 v14, -0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v13, 0x2

    int-to-long v14, v7

    invoke-virtual {v12, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v13, 0x3

    int-to-long v14, v11

    invoke-virtual {v12, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v13, 0x4

    int-to-long v14, v10

    invoke-virtual {v12, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-nez v13, :cond_7

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DROP TABLE "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ALTER TABLE temp_table RENAME TO "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_2
    const-string v13, "LauncherProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "migrateAppOrder Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v13

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v14

    if-nez v14, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v13
.end method

.method private migrateFavourites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v1, "_id,itemType,container,cellX,cellY,spanX,spanY,title,intent,appWidgetId,iconType,iconPackage,iconResource,icon,color"

    const-string v0, "_id,itemType,containerId,cellX,cellY,spanX,spanY,title,intent,appWidgetId,iconType,iconPackage,iconResource,icon,color"

    iget-object v8, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v5

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CREATE table temp_table (_id INTEGER PRIMARY KEY,itemType INTEGER,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,title TEXT,intent TEXT,appWidgetId INTEGER NOT NULL DEFAULT -1,iconType INTEGER,iconPackage TEXT,iconResource TEXT,iconMovieUri TEXT,icon BLOB,color INTEGER NOT NULL DEFAULT -1,secret INTEGER NOT NULL DEFAULT 0,festival INTEGER NOT NULL DEFAULT 0,profileId INTEGER DEFAULT "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "modified"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "restored"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "newCue"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ");"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "profileId"

    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "profileId"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v8, "modified"

    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "modified"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v8, "restored"

    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "restored"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v8, "newCue"

    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "newCue"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT INTO temp_table ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") SELECT "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " FROM "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->migratePagesettings(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;Landroid/util/SparseArray;)I

    move-result v3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->migrateFavourites_Hotseat(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v4, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->migrateFavourites_Workspace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/util/SparseArray;I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DROP TABLE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ALTER TABLE temp_table RENAME TO "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private migrateFavourites_Folders(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .locals 18

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SELECT _id, itemType, cellX, cellY FROM "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " WHERE container=3 and containerId=?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UPDATE temp_table SET itemType=?, screen=?, cellX=?, cellY=? WHERE _id=?"

    const/4 v8, 0x0

    const/4 v15, 0x1

    :try_start_0
    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-nez v15, :cond_2

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-nez v15, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    const/4 v4, 0x2

    const/4 v15, 0x4

    if-le v10, v15, :cond_3

    const/4 v4, 0x3

    :cond_3
    const-string v15, "UPDATE temp_table SET itemType=?, screen=?, cellX=?, cellY=? WHERE _id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    :cond_4
    const/4 v15, 0x0

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v15, 0x1

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v15, 0x2

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v15, 0x3

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v13, 0x0

    sget-object v15, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_APPLICATION:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    invoke-virtual {v15}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->ordinal()I

    move-result v15

    if-ne v11, v15, :cond_6

    const/4 v13, 0x0

    :goto_1
    mul-int v15, v4, v7

    add-int v14, v15, v6

    const/4 v15, 0x1

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v15, 0x2

    int-to-long v0, v14

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v15, 0x3

    invoke-virtual {v12, v15}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    const/4 v15, 0x4

    invoke-virtual {v12, v15}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    const/4 v15, 0x5

    int-to-long v0, v9

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v15

    if-nez v15, :cond_4

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-nez v15, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_6
    :try_start_2
    sget-object v15, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_SHORTCUT:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    invoke-virtual {v15}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->ordinal()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v15

    if-ne v11, v15, :cond_5

    const/4 v13, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_3
    const-string v15, "LauncherProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "migrateFavourites_Folders Exception : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-nez v15, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v15

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v16

    if-nez v16, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v15
.end method

.method private migrateFavourites_Hotseat(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT _id, itemType, cellX FROM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " WHERE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "container"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UPDATE temp_table SET screen=?, cellX=?, cellY=?, itemType=?, container=? WHERE _id=?"

    const/4 v3, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    const-string v9, "UPDATE temp_table SET screen=?, cellX=?, cellY=?, itemType=?, container=? WHERE _id=?"

    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    :cond_3
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v9, 0x2

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v6, 0x0

    sget-object v9, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_APPLICATION:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->ordinal()I

    move-result v9

    if-ne v5, v9, :cond_5

    const/4 v6, 0x0

    :goto_1
    const/4 v9, 0x1

    int-to-long v10, v2

    invoke-virtual {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    const/4 v9, 0x4

    int-to-long v10, v6

    invoke-virtual {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v9, 0x5

    const-wide/16 v10, -0x65

    invoke-virtual {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v9, 0x6

    int-to-long v10, v8

    invoke-virtual {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    sget-object v9, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_FOLDER:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->ordinal()I

    move-result v9

    if-ne v5, v9, :cond_4

    invoke-direct {p0, p1, p2, v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->migrateFavourites_Folders(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-nez v9, :cond_3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    :try_start_2
    sget-object v9, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_SHORTCUT:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->ordinal()I

    move-result v9

    if-ne v5, v9, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    sget-object v9, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_FOLDER:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->ordinal()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-ne v5, v9, :cond_4

    const/4 v6, 0x2

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_3
    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "migrateFavourites_Hotseat Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v9
.end method

.method private migrateFavourites_Workspace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/util/SparseArray;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SELECT _id, itemType, containerId FROM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " WHERE "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "container"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "=0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UPDATE temp_table SET itemType=?, container=?, screen=? WHERE _id=?"

    const/4 v7, 0x0

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-nez v13, :cond_2

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    const-string v13, "UPDATE temp_table SET itemType=?, container=?, screen=? WHERE _id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    :cond_3
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v13, 0x1

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v13, 0x2

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v11, 0x0

    sget-object v13, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_APPLICATION:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->ordinal()I

    move-result v13

    if-ne v10, v13, :cond_5

    const/4 v11, 0x0

    :goto_1
    const/4 v13, 0x1

    int-to-long v14, v11

    invoke-virtual {v12, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v13, 0x2

    const-wide/16 v14, -0x64

    invoke-virtual {v12, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_9

    const/4 v14, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sub-int v13, v13, p4

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_2
    const/4 v13, 0x4

    int-to-long v14, v9

    invoke-virtual {v12, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    sget-object v13, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_FOLDER:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->ordinal()I

    move-result v13

    if-ne v10, v13, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->migrateFavourites_Folders(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-nez v13, :cond_3

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    :try_start_2
    sget-object v13, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_SHORTCUT:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->ordinal()I

    move-result v13

    if-ne v10, v13, :cond_6

    const/4 v11, 0x1

    goto :goto_1

    :cond_6
    sget-object v13, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_FOLDER:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->ordinal()I

    move-result v13

    if-ne v10, v13, :cond_7

    const/4 v11, 0x2

    goto :goto_1

    :cond_7
    sget-object v13, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_WIDGET:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->ordinal()I

    move-result v13

    if-ne v10, v13, :cond_8

    const/4 v11, 0x4

    goto :goto_1

    :cond_8
    sget-object v13, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->HOME_SURFACE_WIDGET:Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$ItemType;->ordinal()I

    move-result v13

    if-ne v10, v13, :cond_4

    const/16 v11, 0x385

    goto :goto_1

    :cond_9
    const/4 v13, 0x3

    move/from16 v0, p4

    int-to-long v14, v0

    invoke-virtual {v12, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v8

    :try_start_3
    const-string v13, "LauncherProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "migrateFavourites_Workspace Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v13

    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v14

    if-nez v14, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v13
.end method

.method private migratePagesettings(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;Landroid/util/SparseArray;)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string v17, "pagesettings.db"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    new-instance v14, Ljava/lang/StringBuffer;

    const-string v17, "page_settings"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v17, "current_grid_size"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const-string v17, "favorites_homeApps"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string v9, "_homeApps"

    invoke-virtual {v14, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    const/4 v6, 0x0

    const/4 v13, 0x0

    const/16 v8, 0x3e8

    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SELECT _id, pageOrder FROM "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ORDER BY pageOrder, _id"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_a

    const/16 v16, -0x64

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_a

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v17

    if-nez v17, :cond_a

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v0, v16

    if-gt v11, v0, :cond_1

    add-int/lit8 v11, v16, 0x1

    :cond_1
    if-le v8, v11, :cond_2

    move v8, v11

    :cond_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v16, v11

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_1
    const-string v17, "LauncherProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "migratePagesettings Exception : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    if-lez v8, :cond_c

    const/4 v8, 0x1

    :goto_3
    if-eqz v9, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    add-int v18, v13, v8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v9}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;ILjava/lang/String;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/launcher2/LauncherApplication;->setBriefingScreenCount(Landroid/content/Context;I)V

    :try_start_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SELECT pageRows, pageColumns FROM "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v3, v0, [I

    const/16 v17, 0x0

    aput v10, v3, v17

    const/16 v17, 0x1

    aput v12, v3, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v3, v9}, Lcom/android/launcher2/LauncherApplication;->setGridLayout(Landroid/content/Context;[ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_5
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v17, "favorites_homeApps"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "favorites_homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    :cond_6
    const-string v17, "favorites_homeApps"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "favorites_homeOnly"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    :cond_7
    const-string v17, "pagesettings.db"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v17, "widgets.db"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_8
    :goto_6
    const-string v17, "LauncherProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "migratePagesettings(), pages : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", queryTable: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_9
    const-string v17, "favorites_homeOnly"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v9, "_homeOnly"

    invoke-virtual {v14, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_a
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v17

    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v18

    if-nez v18, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v17

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    add-int v18, v13, v8

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;IZ)V

    goto/16 :goto_4

    :catch_1
    move-exception v7

    :try_start_3
    const-string v17, "LauncherProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "migratePagesettings Exception : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :catchall_1
    move-exception v17

    if-eqz v6, :cond_e

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v18

    if-nez v18, :cond_e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v17

    :cond_f
    const-string v17, "pagesettings.db"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v17, "widgets.db"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto/16 :goto_6
.end method

.method private normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 17

    const-string v13, "LauncherProvider"

    const-string v14, "normalizing icons"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    :try_start_0
    const-string v13, "UPDATE favorites SET icon=? WHERE _id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    const-string v13, "SELECT _id, icon FROM favorites WHERE iconType=1"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_9

    if-eqz v12, :cond_9

    const-string v13, "_id"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v13, "icon"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    const/4 v13, 0x0

    :try_start_1
    array-length v14, v4

    invoke-static {v4, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v15

    iget v15, v15, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    move/from16 v16, v0

    invoke-static/range {v13 .. v16}, Lcom/android/launcher2/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-static {v2}, Lcom/android/launcher2/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v13, 0x2

    invoke-virtual {v12, v13, v4}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    if-nez v11, :cond_3

    :try_start_2
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "LauncherProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed normalizing icon "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "LauncherProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Also failed normalizing icon "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v6

    :try_start_3
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "LauncherProvider"

    const-string v14, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_8
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_9
    :try_start_5
    const-string v13, "LauncherProvider"

    const-string v14, "Failed to create cursor while normalizing icons"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v13

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a
    if-eqz v3, :cond_b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v13
.end method

.method private declared-synchronized onCreate(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "creating new launcher database, loadDefaultItems: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/databases"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v4

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x0

    invoke-direct {v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v3, "favorites"

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-direct {p0, p1, v4, v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;J)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWorkFolder()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/launcher2/ManagedProfileHeuristic;->processAllUsers(Ljava/util/List;Landroid/content/Context;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p2, :cond_3

    const-string v3, "favorites"

    const/4 v6, 0x0

    invoke-direct {p0, p1, v3, v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    :cond_3
    if-eqz p2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher2/LauncherFeature;->supportZeroPageSettingDialog(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v6, "de.axelspringer.yana.zeropage"

    invoke-static {v3, v6}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveZeroPagePackageName(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v6, "de.axelspringer.yana.activities.HomeActivity"

    invoke-static {v3, v6}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveZeroPageClassName(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->setZeroPageSettingDialog(Landroid/content/Context;Z)V

    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    const-string v6, "com.sec.android.app.launcher.prefs"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "checkChangedComponentVersion"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "checkChangedComponentVersion_HomeOnly"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->setFlagEmptyDbCreated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private removeHiddenAppForSamsungApps(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 18

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeHiddenAppForSamsungApps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    const-string v17, "com.sec.android.app.samsungapps/.SamsungAppsMainActivity"

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "secret"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v6, 0x1

    aput v6, v3, v4

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x2

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "intent"

    aput-object v3, v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "com.sec.android.app.samsungapps/.SamsungAppsMainActivity"

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add remove list cmp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v12

    :try_start_1
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeHiddenAppForSamsungApps Favorites SQLException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove hidden app id "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_1
    move-exception v12

    :try_start_2
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeHiddenAppForSamsungApps Favorites URISyntaxException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    :cond_5
    const-string v2, "hidden"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v6, 0x1

    aput v6, v3, v4

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v5

    :try_start_3
    const-string v3, "appOrder"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "componentName"

    aput-object v6, v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    :cond_6
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    const-string v2, "com.sec.android.app.samsungapps/.SamsungAppsMainActivity"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add remove list(Apps) cmp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_2
    move-exception v12

    :try_start_4
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeHiddenAppForSamsungApps AppOrder SQLException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_4
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove hidden app(Apps) id "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "appOrder"

    const-string v4, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v2

    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    :cond_a
    return-void
.end method

.method private renamePrefsFile()V
    .locals 5

    const-string v0, "com.android.launcher2.prefs"

    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.sec.android.app.launcher/shared_prefs/com.android.launcher2.prefs.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.sec.android.app.launcher/shared_prefs/com.sec.android.app.launcher.prefs.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "LauncherProvider"

    const-string v4, "renamePrefsFile:: File renamed successfull !"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v3, "LauncherProvider"

    const-string v4, "renamePrefsFile:: File renamed operation failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetSharedPref()V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private restoreDB_Mode_Grid(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;IILjava/lang/String;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "LauncherProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "restore_Grid : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportGridSizeArray:[Ljava/lang/String;

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d000c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportFlexibleGrid:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100007

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportGridSizeArray:[Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportFlexibleGrid:Z

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSupportGridSizeArray:[Ljava/lang/String;

    array-length v14, v13

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v14, :cond_1

    aget-object v5, v13, v12

    const-string v15, "LauncherProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "   support grid : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v10, 0x1

    const-string v12, "LauncherProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "(1) restored,  storeGridLayout, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p8

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_columns:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_rows:I

    move/from16 v0, p8

    invoke-static {v12, v13, v14, v0}, Lcom/android/launcher2/Utilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    :cond_1
    :goto_1
    if-nez v10, :cond_6

    const-string v12, "LauncherProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GRID restore operation failed, restore_Grid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "RESTORE_MODE"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string v15, "x"

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    array-length v15, v6

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v15, 0x0

    aget-object v15, v6, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v15, 0x1

    aget-object v15, v6, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move/from16 v0, p6

    if-gt v0, v8, :cond_4

    move/from16 v0, p5

    if-gt v0, v9, :cond_4

    const-string v15, "LauncherProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "(2) support grid, device : newCountX : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", newCountY : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0003

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0004

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move/from16 v0, p6

    if-gt v0, v3, :cond_1

    move/from16 v0, p5

    if-gt v0, v4, :cond_1

    const-string v12, "LauncherProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "(3) support grid, device : countX : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", countY : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v7, 0x0

    const-string v12, "RESTORE_MODE"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "RESTORE_MODE"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v12, "MODE_ALL_To_ALL"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const-string v12, "Columns"

    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->restoreDB_deleteAppWidgetID(Ljava/lang/String;)V

    const-string v12, "home"

    const-string v13, "home"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_7
    const-string v12, "hotseat"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "hotseat"

    const-string v13, "hotseat"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v12, "appOrder"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const-string v12, "appOrder"

    const-string v13, "appOrder"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "appOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    const-string v12, "appOrder"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_9
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$700()Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    const-string v12, "LauncherProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Last mRestoredTagMapping: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "Columns"

    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    move/from16 v0, p6

    move/from16 v1, p5

    invoke-static {v0, v1, v12}, Lcom/android/launcher2/LauncherApplication;->setLauncherGridSize(IIZ)V

    goto/16 :goto_2

    :cond_b
    const-string v12, "Columns_homeOnly"

    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->restoreDB_deleteAppWidgetID(Ljava/lang/String;)V

    const-string v12, "hotseat_homeOnly"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const-string v12, "homeOnly"

    const-string v13, "homeOnly"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_d
    const-string v12, "hotseat_homeOnly"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const-string v12, "hotseat_homeOnly"

    const-string v13, "hotseat_homeOnly"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$700()Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_f
    const-string v12, "MODE_HomeOnly_To_ALL_HomeOnly"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->restoreDB_deleteAppWidgetID(Ljava/lang/String;)V

    const-string v12, "homeOnly"

    const-string v13, "homeOnly"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_10
    const-string v12, "hotseat_homeOnly"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    const-string v12, "hotseat_homeOnly"

    const-string v13, "hotseat_homeOnly"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$700()Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_12
    const-string v12, "MODE_HomeOnly_To_HomeOnly"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->deleteHost()V

    const-string v12, "homeOnly"

    const-string v13, "home"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "favorites"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    const-string v12, "favorites"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_13
    const-string v12, "hotseat_homeOnly"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    const-string v12, "hotseat_homeOnly"

    const-string v13, "hotseat"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$700()Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, "favorites"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_15
    const-string v12, "MODE_Home_To_Home"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz v12, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->restoreDB_deleteAppWidgetID(Ljava/lang/String;)V

    :goto_4
    const-string v12, "home"

    const-string v13, "home"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_16
    const-string v12, "hotseat"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    const-string v12, "hotseat"

    const-string v13, "hotseat"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const-string v12, "appOrder"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    const-string v12, "appOrder"

    const-string v13, "appOrder"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "appOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    const-string v12, "appOrder"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_18
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$700()Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->deleteHost()V

    goto :goto_4
.end method

.method private restoreDB_SetPageInfo(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PageCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScreenIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rows"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rows"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Columns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Columns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private restoreDB_deleteAppWidgetID(Ljava/lang/String;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.sec.android.app.launcher.settings/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "notify"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=false"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v10, "itemType=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "itemType=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "appWidgetId"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v0, "LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete AppWidgetId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0, v6}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string v0, "LauncherProvider"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private restoreDB_items(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Z)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v14, 0x0

    const-string v2, "category"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/4 v2, 0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_4

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ","

    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    :goto_0
    array-length v2, v12

    if-ge v13, v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    aget-object v3, v12, v13

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "homeOnly"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v16, "MODE_ALL_To_ALL"

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->restoreDB_SetPageInfo(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "_homeOnly"

    const-string v4, "_homeOnly"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->restoreDB_SetPageInfo(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "zeroPage"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "zeroPage"

    const-string v4, "zeroPage"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v16, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "RESTORE_MODE"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "first mRestoredTagMapping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_2
    return v2

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v16, "MODE_Home_To_Home"

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->restoreDB_SetPageInfo(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "homeOnly"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v16, "MODE_HomeOnly_To_ALL_HomeOnly"

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "_homeOnly"

    const-string v4, "_homeOnly"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->restoreDB_SetPageInfo(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "homeOnly"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v16, "MODE_HomeOnly_To_HomeOnly"

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "_homeOnly"

    const-string v4, "_homeOnly"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->restoreDB_SetPageInfo(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v16, "MODE_Home_To_Home"

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->restoreDB_SetPageInfo(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "RESTORE_MODE"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-nez v15, :cond_a

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_a
    move-object/from16 p5, v15

    const-string v2, "Rows"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/4 v2, 0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_b

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_rows:I

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restored, TAG_GRID_ROW: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_rows:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    move v2, v14

    goto/16 :goto_2

    :cond_c
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not conatin in mRestoredTagMapping, RESTORE_MODE not contain"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_d
    const-string v2, "Columns"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/4 v2, 0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_b

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_columns:I

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restored, TAG_GRID_COLUMN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_columns:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_rows:I

    if-lez v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_columns:I

    if-lez v2, :cond_e

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_rows:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_columns:I

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->restoreDB_Mode_Grid(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;IILjava/lang/String;Z)V

    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_rows:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_columns:I

    goto/16 :goto_3

    :cond_f
    const-string v2, "Rows_homeOnly"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/4 v2, 0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_b

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_rows:I

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restored, TAG_GRID_ROW_HOMEONLY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_rows:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_10
    const-string v2, "Columns_homeOnly"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/4 v2, 0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_b

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_columns:I

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restored, TAG_GRID_COLUMN_HOMEONLY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_columns:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_rows:I

    if-lez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_columns:I

    if-lez v2, :cond_b

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$600()Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_rows:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mRestore_columns:I

    const/4 v10, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->restoreDB_Mode_Grid(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;IILjava/lang/String;Z)V

    goto/16 :goto_3

    :cond_11
    const-string v2, "zeroPage"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/4 v2, 0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_b

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveHomeZeroPageOnOffState(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :cond_12
    const-string v2, "PageCount"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/4 v2, 0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_b

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherApplication;->setBriefingScreenCount(Landroid/content/Context;I)V

    add-int/lit8 v17, v17, 0x1

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "_homeApps"

    move/from16 v0, v17

    invoke-static {v2, v0, v3}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_14
    const-string v2, "PageCount_homeOnly"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/4 v2, 0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_b

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherApplication;->setBriefingScreenCount(Landroid/content/Context;I)V

    add-int/lit8 v17, v17, 0x1

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "_homeOnly"

    move/from16 v0, v17

    invoke-static {v2, v0, v3}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_16
    const-string v2, "ScreenIndex"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "ScreenIndex_homeOnly"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_17
    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/4 v2, 0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_b

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_18

    add-int/lit8 v18, v18, 0x1

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move/from16 v0, v18

    invoke-static {v2, v0, v3}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;IZ)V

    goto/16 :goto_3

    :cond_19
    const-string v2, "home"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    if-nez p4, :cond_b

    const-wide/16 v6, -0x64

    const/16 v8, 0xf

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ[I)I

    move-result v2

    add-int/2addr v14, v2

    goto/16 :goto_3

    :cond_1a
    const-string v2, "hotseat"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-wide/16 v6, -0x65

    const/4 v8, 0x7

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ[I)I

    move-result v2

    add-int/2addr v14, v2

    goto/16 :goto_3

    :cond_1b
    const-string v2, "homeOnly"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    if-nez p4, :cond_b

    const-wide/16 v6, -0x64

    const/16 v8, 0xf

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ[I)I

    move-result v2

    add-int/2addr v14, v2

    goto/16 :goto_3

    :cond_1c
    const-string v2, "hotseat_homeOnly"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-wide/16 v6, -0x65

    const/4 v8, 0x7

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ[I)I

    move-result v2

    add-int/2addr v14, v2

    goto/16 :goto_3

    :cond_1d
    const-string v2, "appOrder"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-wide/16 v6, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    move/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderContainer(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;JZ)I

    move-result v2

    add-int/2addr v14, v2

    goto/16 :goto_3

    :cond_1e
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid tag <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> detected while parsing favorites at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p6 .. p6}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private setFlagEmptyDbCreated()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "EMPTY_DATABASE_CREATED"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setFolderColor(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    iget v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFolderColorIndex:I

    if-ge v1, v2, :cond_1

    const-string v2, "color"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] has invalid folder color index."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] has invalid format data for folder color index."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    const-string v2, "sqlite_master"

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tbl_name"

    aput-object v4, v3, v12

    const-string v4, "tbl_name = ?"

    new-array v5, v1, [Ljava/lang/String;

    aput-object p2, v5, v12

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    move-object v10, v6

    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return v1

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    move v1, v12

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 25

    const/4 v12, 0x0

    const-string v4, "itemType"

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v8, 0x1

    aput v8, v5, v6

    invoke-static {v4, v5}, Lcom/android/launcher2/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v5, "favorites"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v4

    const/4 v4, 0x1

    const-string v8, "intent"

    aput-object v8, v6, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found upgrade cursor count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    const-string v4, "intent"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    :cond_1
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    if-eqz v21, :cond_1

    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v21

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v19

    const-string v4, "Home"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "content://contacts/people/"

    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "content://com.android.contacts/contacts/lookup/"

    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    new-instance v19, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.QUICK_CONTACT"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x14200000

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v4, "mode"

    const/4 v5, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "exclude_mimes"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentValues;->clear()V

    const-string v4, "intent"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v4, "favorites"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v15

    :try_start_2
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "LauncherProvider"

    const-string v5, "Problem upgrading shortcut"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v15

    :try_start_3
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "LauncherProvider"

    const-string v5, "Problem while upgrading contacts"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    return v4

    :catch_2
    move-exception v14

    :try_start_4
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "LauncherProvider"

    const-string v5, "Problem upgrading shortcut"

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4

    :cond_6
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v12, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_7
    const/4 v4, 0x1

    goto :goto_1

    :cond_8
    :try_start_6
    const-string v4, "LauncherProvider"

    const-string v5, "Failed to create cursor for updateContactsShortcuts"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method private updateOmcAutoInstallApp(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    const/4 v12, 0x1

    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOmcAutoInstallApp:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "LauncherProvider"

    const-string v8, "updateOmcAutoInstallApp"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOmcAutoInstallApp:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOmcAutoInstallApp:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    iget-object v8, v1, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconPackage:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v2

    iget-object v8, v1, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconPackage:Ljava/lang/String;

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "LauncherProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateOmcAutoInstallApp already installed = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    iget-object v8, v1, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "title"

    iget-object v9, v1, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->title:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v8, v1, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->icon:[B

    if-eqz v8, :cond_5

    const-string v8, "icon"

    iget-object v9, v1, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->icon:[B

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_5
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lt v8, v12, :cond_2

    const-string v6, "(restored & 32) = 32 AND intent like ?"

    new-array v4, v12, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%component="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    const-string v8, "favorites"

    invoke-virtual {p1, v8, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v8, "LauncherProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "omc title and icon update package for home = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mUsedOmcAutoInstallApp:Ljava/util/HashMap;

    iget-object v9, v1, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v8, "_id"

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "itemType"

    const/16 v9, 0x3eb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "intent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ";component="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "restored"

    const/16 v9, 0x20

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "favorites"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v8, "LauncherProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "omc title and icon insert package for apps = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOmcAutoInstallApp:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mUsedOmcAutoInstallApp:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0
.end method


# virtual methods
.method public createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS appOrder"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method public declared-synchronized generateNewAppOrderId()J
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error: mMaxAppOrderId was not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateNewAppOrderId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0
.end method

.method public generateNewFavoritesId()J
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: mMaxFavoriteId was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewItemId(Ljava/lang/String;)J
    .locals 2

    const-string v0, "appOrder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getCurrentDBHomeOnlyMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeOnlyMode:Z

    return v0
.end method

.method public getMaxCellIndexInApps()J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxCellIndexInApps:J

    return-wide v0
.end method

.method public insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, p3, v0, p2}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public loadFrontAppOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->frontMenuApps:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOnlyLoadFrontApps:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOnlyLoadFrontApps:Z

    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->frontMenuApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "LauncherProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDowngrade triggered :: oldVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LauncherProvider"

    const-string v1, "Destroying all old data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->resetSharedPref()V

    const-string v0, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS appOrder"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DROP TABLE IF EXISTS prefs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsDownGrade:Z

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LauncherProvider"

    const-string v1, "onOpen triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createPublicPreferences(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 17

    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "LauncherProvider"

    const-string v15, "onUpgrade triggered"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move/from16 v11, p2

    const/4 v14, 0x3

    if-ge v11, v14, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v14, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    const/4 v14, 0x3

    if-ne v11, v14, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    const/4 v14, 0x4

    if-ge v11, v14, :cond_2

    const/4 v11, 0x4

    :cond_2
    const/4 v14, 0x6

    if-ge v11, v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string v14, "UPDATE favorites SET screen=(screen + 1);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v11, 0x6

    :cond_3
    const/4 v14, 0x7

    if-ge v11, v14, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v11, 0x7

    :cond_4
    const/16 v14, 0x8

    if-ge v11, v14, :cond_5

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v11, 0x8

    :cond_5
    const/16 v14, 0x9

    if-ge v11, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v14, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getMaxFavoriteID(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    :cond_6
    const-string v14, "favorites"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;J)V

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I

    const/16 v11, 0x9

    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v14

    const/16 v15, 0x258

    if-lt v14, v15, :cond_8

    const/16 v14, 0x9

    if-eq v11, v14, :cond_9

    :cond_8
    const/16 v14, 0xb

    if-ge v11, v14, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_2
    const-string v14, "ALTER TABLE favorites ADD COLUMN iconMovieUri TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v11, 0xb

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_9
    :goto_2
    const/16 v14, 0xc

    if-ne v11, v14, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_3
    const-string v14, "ALTER TABLE favorites ADD COLUMN festival INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v14, "ALTER TABLE favorites ADD COLUMN color INTEGER NOT NULL DEFAULT -1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v14, "ALTER TABLE appOrder ADD COLUMN color INTEGER NOT NULL DEFAULT -1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v11, 0xe

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->renamePrefsFile()V

    :cond_a
    const/16 v14, 0xd

    if-ge v11, v14, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_4
    const-string v14, "ALTER TABLE favorites ADD COLUMN color INTEGER NOT NULL DEFAULT -1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v14, "ALTER TABLE appOrder ADD COLUMN color INTEGER NOT NULL DEFAULT -1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/16 v11, 0xd

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->renamePrefsFile()V

    :cond_b
    const/16 v14, 0xe

    if-ne v11, v14, :cond_c

    const-string v14, "LauncherProvider"

    const-string v15, "start Upgrade 14"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "pkgName"

    const-string v16, "TEXT"

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "color"

    const-string v16, "INTEGER NOT NULL DEFAULT -1"

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "secret"

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "festival"

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v14, "favorites"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v14, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumns(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "color"

    const-string v16, "INTEGER NOT NULL DEFAULT -1"

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "secret"

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v14, "appOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v14, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumns(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const/16 v11, 0xf

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_5
    const-string v14, "LauncherProvider"

    const-string v15, "finish Upgrade 14"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v14, 0xe

    if-ge v11, v14, :cond_d

    const-string v14, "LauncherProvider"

    const-string v15, "start Upgrade 14-1"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "secret"

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "festival"

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "pkgName"

    const-string v16, "TEXT"

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v14, "favorites"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v14, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumns(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "secret"

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "appOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v15, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumn(Lcom/android/launcher2/AddColumn;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    const/16 v11, 0xe

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_6
    const-string v14, "LauncherProvider"

    const-string v15, "finish Upgrade 14-1"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/16 v14, 0xf

    if-ge v11, v14, :cond_e

    const-string v14, "LauncherProvider"

    const-string v15, "start Upgrade 15"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v10

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v12

    new-instance v7, Lcom/android/launcher2/AddColumn;

    const-string v14, "profileId"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "INTEGER DEFAULT "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v14, v15}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "favorites"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v14, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumn(Lcom/android/launcher2/AddColumn;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v14, "appOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v14, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumn(Lcom/android/launcher2/AddColumn;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    const/16 v11, 0xf

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_7
    const-string v14, "LauncherProvider"

    const-string v15, "finish Upgrade 15"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/16 v14, 0x14

    if-ge v11, v14, :cond_11

    const-string v14, "LauncherProvider"

    const-string v15, "start Upgrade 20"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->migrate(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "modified"

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "newCue"

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "restored"

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v14, "favorites"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v14, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumns(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v14, "favorites_homeApps"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v14, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumns(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v14, "favorites_homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v14, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumns(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v8, Lcom/android/launcher2/AddColumn;

    const-string v14, "restored"

    const/4 v15, 0x0

    invoke-direct {v8, v14, v15}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "appOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v14, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumn(Lcom/android/launcher2/AddColumn;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_f
    new-instance v6, Lcom/android/launcher2/AddColumn;

    const-string v14, "options"

    const/4 v15, 0x0

    invoke-direct {v6, v14, v15}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "favorites"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v14, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumn(Lcom/android/launcher2/AddColumn;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v14, "favorites_homeApps"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v14, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumn(Lcom/android/launcher2/AddColumn;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v14, "favorites_homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v14, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumn(Lcom/android/launcher2/AddColumn;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_8
    const/16 v11, 0x14

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWorkFolder()Z

    move-result v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/launcher2/ManagedProfileHeuristic;->markExistingUsersForNoFolderCreation(Landroid/content/Context;)V

    :cond_10
    const-string v14, "LauncherProvider"

    const-string v15, "finish Upgrade 20"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/16 v14, 0x15

    if-ge v11, v14, :cond_14

    const-string v14, "LauncherProvider"

    const-string v15, "start Upgrade 21"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_9
    const-string v9, "favorites"

    const-string v14, "favorites_homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    const-string v9, "favorites_homeOnly"

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->removeHiddenAppForSamsungApps(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_13
    :goto_9
    const/16 v11, 0x15

    const-string v14, "LauncherProvider"

    const-string v15, "finish Upgrade 21"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/16 v14, 0x16

    if-ge v11, v14, :cond_16

    const-string v14, "LauncherProvider"

    const-string v15, "start Upgrade 22"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_a
    const-string v9, "appOrder"

    const-string v14, "favorites_homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    const-string v9, "favorites_homeOnly"

    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addHiddenAppForVoiceSearch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_a
    const/16 v11, 0x16

    const-string v14, "LauncherProvider"

    const-string v15, "finish Upgrade 22"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/16 v14, 0x17

    if-ge v11, v14, :cond_17

    const-string v14, "LauncherProvider"

    const-string v15, "start Upgrade 23"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "modified"

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "newCue"

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "color"

    const-string v16, "INTEGER NOT NULL DEFAULT -1"

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/android/launcher2/AddColumn;

    const-string v15, "secret"

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/launcher2/AddColumn;

    const-string v14, "festival"

    const/4 v15, 0x0

    invoke-direct {v2, v14, v15}, Lcom/android/launcher2/AddColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v14, "favorites"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v14, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumns(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v14, "favorites_homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v14, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumns(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v14, "favorites_homeApps"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v14, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumns(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v14, "appOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v14, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addColumns(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_b
    const/16 v11, 0x17

    const-string v14, "LauncherProvider"

    const-string v15, "finish Upgrade 23"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/16 v14, 0x17

    if-eq v11, v14, :cond_18

    const-string v14, "LauncherProvider"

    const-string v15, "Destroying all old data."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->resetSharedPref()V

    const-string v14, "DROP TABLE IF EXISTS favorites"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v14, "DROP TABLE IF EXISTS appOrder"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v14, "DROP TABLE IF EXISTS favorites_homeOnly"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v14, "DROP TABLE IF EXISTS favorites_homeApps"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_18
    return-void

    :catch_0
    move-exception v5

    :try_start_c
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v14

    if-eqz v14, :cond_19

    const-string v14, "LauncherProvider"

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_0
    move-exception v14

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    :catch_1
    move-exception v5

    :try_start_d
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v14

    if-eqz v14, :cond_1a

    const-string v14, "LauncherProvider"

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    :catchall_1
    move-exception v14

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    :catch_2
    move-exception v5

    :try_start_e
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v14

    if-eqz v14, :cond_1b

    const-string v14, "LauncherProvider"

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_2

    :catchall_2
    move-exception v14

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    :catch_3
    move-exception v5

    :try_start_f
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v14

    if-eqz v14, :cond_1c

    const-string v14, "LauncherProvider"

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_3

    :catchall_3
    move-exception v14

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    :catch_4
    move-exception v5

    :try_start_10
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v14

    if-eqz v14, :cond_1d

    const-string v14, "LauncherProvider"

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_4

    :catchall_4
    move-exception v14

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    :catch_5
    move-exception v5

    :try_start_11
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v14

    if-eqz v14, :cond_1e

    const-string v14, "LauncherProvider"

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_5

    :catchall_5
    move-exception v14

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    :catch_6
    move-exception v5

    :try_start_12
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v14

    if-eqz v14, :cond_1f

    const-string v14, "LauncherProvider"

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_6

    :catchall_6
    move-exception v14

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    :catch_7
    move-exception v5

    :try_start_13
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v14

    if-eqz v14, :cond_20

    const-string v14, "LauncherProvider"

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_7

    :catchall_7
    move-exception v14

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    :catch_8
    move-exception v5

    :try_start_14
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v14

    if-eqz v14, :cond_21

    const-string v14, "LauncherProvider"

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_8

    :catchall_8
    move-exception v14

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    :catch_9
    move-exception v5

    :try_start_15
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v14

    if-eqz v14, :cond_22

    const-string v14, "LauncherProvider"

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_9

    :catchall_9
    move-exception v14

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    :catch_a
    move-exception v5

    :try_start_16
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v14

    if-eqz v14, :cond_23

    const-string v14, "LauncherProvider"

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_a

    :catchall_a
    move-exception v14

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    :catch_b
    move-exception v5

    :try_start_17
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v14

    if-eqz v14, :cond_24

    const-string v14, "LauncherProvider"

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_b

    :catchall_b
    move-exception v14

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14
.end method

.method public switchFavoritesIfNecessary(Z)Z
    .locals 10

    const/4 v0, 0x0

    iget-boolean v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeOnlyMode:Z

    if-eq p1, v6, :cond_0

    if-eqz p1, :cond_1

    const-string v4, "favorites_homeOnly"

    const-string v3, "favorites_homeApps"

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, v1, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ALTER table favorites rename to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ALTER table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rename to favorites"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v7, "favorites"

    invoke-direct {p0, v1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v6, "LauncherProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchFavoritesIfNecessary. old/new mMaxId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeOnlyMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    return v0

    :cond_1
    const-string v4, "favorites_homeApps"

    const-string v3, "favorites_homeOnly"

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v6, "LauncherProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is exist!! mIsHomeOnlyMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeOnlyMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
.end method
