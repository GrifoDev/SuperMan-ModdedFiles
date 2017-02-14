.class public Lcom/android/launcher2/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherProvider$SqlArguments;,
        Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.launcher.settings"

.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

.field static final CSC_FILE_MAINMENU:Ljava/lang/String; = "/system/csc/default_application_order.xml"

.field static final CSC_FILE_MAINMENU_GUEST:Ljava/lang/String; = "/system/csc/default_application_order_guest.xml"

.field static final CSC_FILE_MAINMENU_KNOX:Ljava/lang/String; = "/system/csc/default_application_order_knox.xml"

.field static final CSC_FILE_WORKSPACE:Ljava/lang/String; = "/system/csc/default_workspace.xml"

.field static final CSC_FILE_WORKSPACE_GUEST:Ljava/lang/String; = "/system/csc/default_workspace_guest.xml"

.field static final CSC_FILE_WORKSPACE_HOMEONLY:Ljava/lang/String; = "/system/csc/default_workspace_homeonly.xml"

.field static final CSC_FILE_WORKSPACE_HOMEONLY_KNOX:Ljava/lang/String; = "/system/csc/default_workspace_homeonly_knox.xml"

.field static final CSC_FILE_WORKSPACE_KNOX:Ljava/lang/String; = "/system/csc/default_workspace_knox.xml"

.field private static final DATABASE_NAME:Ljava/lang/String; = "launcher.db"

.field private static final DATABASE_VERSION:I = 0x17

.field private static final DEBUGGABLE:Z

.field static final EMPTY_DATABASE_CREATED:Ljava/lang/String; = "EMPTY_DATABASE_CREATED"

.field private static final KNOX_SHORTCUT_PACKAGE:Ljava/lang/String; = "com.samsung.knox.rcp.components"

.field static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field public static final PREFS_HIDDENADD_APPFOLDERNAMES:Ljava/lang/String; = "AppFolderNames"

.field public static final PREFS_HIDDENADD_HOMEFOLDERIDS:Ljava/lang/String; = "HomeFolderIds"

.field public static final PREFS_PREFESTIVAL:Ljava/lang/String; = "PrefsPreFestival"

.field private static final RESTRICTION_PACKAGE_NAME:Ljava/lang/String; = "workspace.configuration.package.name"

.field static final TABLE_APPORDER:Ljava/lang/String; = "appOrder"

.field static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field static final TABLE_FAVORITES_HOME_APPS:Ljava/lang/String; = "favorites_homeApps"

.field static final TABLE_FAVORITES_HOME_ONLY:Ljava/lang/String; = "favorites_homeOnly"

.field static final TABLE_PUBLIC_PREFERENCES:Ljava/lang/String; = "prefs"

.field private static final TAG:Ljava/lang/String; = "LauncherProvider"

.field static final XML_MAINMENU:Ljava/lang/String; = "/default_application_order.xml"

.field static final XML_MAINMENU_GUEST:Ljava/lang/String; = "/default_application_order_guest.xml"

.field static final XML_MAINMENU_KNOX:Ljava/lang/String; = "/default_application_order_knox.xml"

.field static final XML_WORKSPACE:Ljava/lang/String; = "/default_workspace.xml"

.field static final XML_WORKSPACE_GUEST:Ljava/lang/String; = "/default_workspace_guest.xml"

.field static final XML_WORKSPACE_HOMEONLY:Ljava/lang/String; = "/default_workspace_homeonly.xml"

.field static final XML_WORKSPACE_HOMEONLY_KNOX:Ljava/lang/String; = "/default_workspace_homeonly_knox.xml"

.field static final XML_WORKSPACE_KNOX:Ljava/lang/String; = "/default_workspace_knox.xml"

.field private static mApp:Lcom/android/launcher2/LauncherApplication;

.field private static mBasePathForRestore:Ljava/lang/String;

.field private static mIsRestoreHomeScreen:Z

.field private static mRestoredAllocateAppWidgetIdList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mRestoredChangedComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static mRestoredChangedWidgetComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static mRestoredDBList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRestoredTagMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRestoredVcfList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUserManager:Landroid/os/UserManager;


# instance fields
.field protected mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    const-string v0, "content://com.sec.android.app.launcher.settings/appWidgetReset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->mBasePathForRestore:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->mRestoredDBList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->mRestoredVcfList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->mRestoredTagMapping:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->mRestoredAllocateAppWidgetIdList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->mRestoredChangedComponent:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->mRestoredChangedWidgetComponent:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mRestoredAllocateAppWidgetIdList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mBasePathForRestore:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mRestoredVcfList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$300()Lcom/android/launcher2/LauncherApplication;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/UserManager;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z

    return v0
.end method

.method static synthetic access$600()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mRestoredTagMapping:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mRestoredDBList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mRestoredChangedComponent:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mRestoredChangedWidgetComponent:Ljava/util/HashMap;

    return-object v0
.end method

.method private addChangedComponent(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 6

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v3}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/launcher2/LauncherProvider;->mRestoredChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addChangedComponent before = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/launcher2/LauncherProvider;->mRestoredChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addChangedComponent before = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private addChangedWidgetComponent(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/android/launcher2/LauncherProvider;->mRestoredChangedWidgetComponent:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChangedWidgetComponent before = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/android/launcher2/LauncherProvider;->mRestoredChangedWidgetComponent:Ljava/util/HashMap;

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChangedWidgetComponent before = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    if-eq v0, v2, :cond_2

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method static buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v0, :cond_0

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    const-string v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to add item without specifying an id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private loadChangedComponentForPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_2

    :cond_1
    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v8, "LauncherProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentForPackage item list size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v8, v6, -0x1

    if-ge v3, v8, :cond_4

    add-int/lit8 v5, v3, 0x1

    :goto_2
    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/LauncherProvider;->addChangedComponent(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private loadChangedComponentForWidget(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v2, :cond_2

    :cond_1
    const/4 v9, 0x1

    if-eq v7, v9, :cond_2

    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadChangedComponentForWidget item list size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v9}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v8

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v9, v6, -0x1

    if-ge v3, v9, :cond_4

    add-int/lit8 v5, v3, 0x1

    :goto_2
    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v8, v1, v0}, Lcom/android/launcher2/LauncherProvider;->addChangedWidgetComponent(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private loadChangedComponentFromPath(Ljava/lang/String;)V
    .locals 12

    const-string v8, "LauncherProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentFromPath path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/change_native_packages.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "LauncherProvider"

    const-string v9, "loadChangedComponentFromPath there is no file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    const-string v8, "utf-8"

    invoke-interface {v6, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "package"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, v6}, Lcom/android/launcher2/LauncherProvider;->loadChangedComponentForPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v4

    :goto_2
    :try_start_2
    const-string v8, "LauncherProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentFromPath exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v8, "LauncherProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentFromPath exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_4
    const-string v8, "widget"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0, v6}, Lcom/android/launcher2/LauncherProvider;->loadChangedComponentForWidget(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    move-object v3, v4

    :goto_3
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    throw v8

    :cond_5
    if-eqz v4, :cond_6

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v3, v4

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v8, "LauncherProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentFromPath exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadChangedComponentFromPath exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception v8

    goto :goto_3

    :catch_4
    move-exception v0

    goto/16 :goto_2

    :cond_6
    move-object v3, v4

    goto/16 :goto_0
.end method

.method private loadChangedComponentFromRes()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    sget-object v6, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0f0001

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v6, v3

    if-lez v6, :cond_1

    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v2, v3, v6

    const-string v9, "\\|"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v9, v4

    if-ne v9, v11, :cond_0

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    aget-object v9, v4, v7

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    aget-object v9, v4, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v10

    aget-object v9, v4, v10

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/LauncherProvider;->addChangedComponent(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0f0002

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v6, v3

    if-lez v6, :cond_3

    sget-object v6, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v6}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v5

    array-length v8, v3

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v2, v3, v6

    const-string v9, "\\|"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v9, v4

    if-ne v9, v11, :cond_2

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    aget-object v9, v4, v7

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    aget-object v9, v4, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v10

    aget-object v9, v4, v10

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v5, v1, v0}, Lcom/android/launcher2/LauncherProvider;->addChangedWidgetComponent(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public addHomeFolderItems(JLcom/android/launcher2/HomeFolderItem;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v5, 0x0

    :try_start_0
    sget-object v7, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v7}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v6

    const-string v4, "INSERT into favorites (_id, itemType, container, screen, cellX, cellY, spanX, spanY, title, intent, iconType, secret, festival, profileId, modified, restored) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    const-string v7, "INSERT into favorites (_id, itemType, container, screen, cellX, cellY, spanX, spanY, title, intent, iconType, secret, festival, profileId, modified, restored) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p3}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_6

    invoke-virtual {p3, v2}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    iget-wide v8, v0, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v7, v0, Lcom/android/launcher2/HomeShortcutItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v7, v8, :cond_0

    iget-object v7, v0, Lcom/android/launcher2/HomeShortcutItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v7, v8, :cond_2

    :cond_0
    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_1
    const/4 v7, 0x3

    invoke-virtual {v5, v7, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v7, 0x4

    iget v8, v0, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    int-to-long v8, v8

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v7, 0x5

    const-wide/16 v8, -0x1

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v7, 0x6

    const-wide/16 v8, -0x1

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v7, 0x7

    const-wide/16 v8, 0x1

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v7, 0x8

    const-wide/16 v8, 0x1

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v7, 0x9

    iget-object v8, v0, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher2/HomeShortcutItem;->isPromise()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/android/launcher2/HomeShortcutItem;->promisedIntent:Landroid/content/Intent;

    if-eqz v7, :cond_4

    const/16 v7, 0xa

    iget-object v8, v0, Lcom/android/launcher2/HomeShortcutItem;->promisedIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    const/16 v7, 0xb

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v7, 0xc

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v7, 0xd

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v7, 0xe

    iget-object v8, v0, Lcom/android/launcher2/HomeShortcutItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v6, v8}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v8

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v7, 0xf

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v0}, Lcom/android/launcher2/HomeShortcutItem;->isPromise()Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x10

    iget v8, v0, Lcom/android/launcher2/HomeShortcutItem;->status:I

    int-to-long v8, v8

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v7, 0x2

    const-wide/16 v8, 0x1

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    :cond_4
    const/16 v7, 0xa

    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 v7, 0x10

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8

    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v2

    invoke-static {v4, v1, v5, v6, v7}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    array-length v4, p2

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "getDataBaseVersion"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DBVersion"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method public checkOmcAutoInstallApp()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "LauncherProvider"

    const-string v2, "checkOmcAutoInstallApp"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    if-nez v1, :cond_0

    const-string v1, "LauncherProvider"

    const-string v2, "checkOmcAutoInstallApp mApp is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    if-nez v1, :cond_1

    const-string v1, "LauncherProvider"

    const-string v2, "checkOmcAutoInstallApp mOpenHelper is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    # invokes: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getOmcAutoInstallApp()Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$1600(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;)Z

    move-result v0

    goto :goto_0
.end method

.method public clearFlagEmptyDbCreated()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EMPTY_DATABASE_CREATED"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public declared-synchronized createEmptyDB(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    :cond_0
    return v1
.end method

.method public galaxylabsfeature(Z)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    if-nez v6, :cond_1

    const-string v4, "LauncherProvider"

    const-string v5, "galaxy labs - mOpenHelper is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "LauncherProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "galaxy labs - feature "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/launcher2/LauncherProvider;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    iput-boolean p1, v6, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    const-string v7, "favorites_homeOnly"

    # invokes: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    invoke-static {v6, v1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$000(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    const-string v7, "favorites_homeApps"

    # invokes: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    invoke-static {v6, v1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$000(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    const-string v7, "favorites_homeOnly"

    # invokes: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    invoke-static {v6, v1, v7, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$1500(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    const-string v7, "favorites_homeOnly"

    # invokes: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    invoke-static {v6, v1, v7, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$1400(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    :cond_2
    const/4 v6, 0x2

    new-array v0, v6, [I

    sget-object v6, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v6, v0, p1}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[IZ)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->modeSwitch(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/launcher2/HomeScreenSettingsActivity;->instance()Lcom/android/launcher2/HomeScreenSettingsActivity;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/launcher2/HomeScreenSettingsActivity;->instance()Lcom/android/launcher2/HomeScreenSettingsActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/HomeScreenSettingsActivity;->finish()V

    :cond_3
    aget v6, v0, v4

    aget v7, v0, v5

    invoke-static {v6, v7}, Lcom/android/launcher2/LauncherApplication;->setLauncherGridSize(II)V

    sget-object v6, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v6, p1}, Lcom/android/launcher2/LauncherApplication;->setScreenBriefingCountChangeMode(Landroid/content/Context;Z)I

    sget-object v6, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v6

    if-nez p1, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {v6, v4, v5}, Lcom/android/launcher2/LauncherModel;->resetLoadedState(ZZ)V

    sput-boolean v5, Lcom/android/launcher2/Launcher;->mIsRestartModeChange:Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->recreate()V

    goto/16 :goto_0
.end method

.method public generateNewHomeId()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewMenuId()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentDBHomeOnlyMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getCurrentDBHomeOnlyMode()Z

    move-result v0

    return v0
.end method

.method getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    return-object v0
.end method

.method public getHotseatCount()I
    .locals 7

    const/4 v3, -0x1

    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    if-nez v5, :cond_0

    move v4, v3

    :goto_0
    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    const-string v5, "SELECT count(*) FROM favorites WHERE container=\'-101\'"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v4, v3

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v5, "LauncherProvider"

    const-string v6, "could not read hotseat count from the database"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method

.method public getMaxCellIndexInApps()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getMaxCellIndexInApps()J

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenCount()I
    .locals 6

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v4

    int-to-long v2, v4

    :try_start_0
    const-string v4, "SELECT value FROM prefs WHERE key=\'numScreens\'"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    long-to-int v4, v2

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4
.end method

.method public getScreenIndex()I
    .locals 7

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v3

    int-to-long v4, v3

    :try_start_0
    const-string v3, "SELECT value  FROM prefs WHERE key=\'defaultScreen\'"

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    long-to-int v3, v4

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "LauncherProvider"

    const-string v6, "Could not get screen index from db"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method public getShortcutInfo(Lcom/android/launcher2/HomeItem;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 10

    new-instance v5, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v5}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT title, icon  FROM favorites WHERE _id=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x0

    array-length v7, v3

    invoke-static {v3, v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v5

    :catch_0
    move-exception v2

    :try_start_1
    const-string v6, "LauncherProvider"

    const-string v7, "Could not get icon from the database"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v6

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v6
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v2, v2}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vnd.android.cursor.dir/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vnd.android.cursor.item/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    const/4 v4, 0x0

    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v5, v1, v6, v4, p2}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_0

    :goto_0
    return-object v4

    :cond_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v4, p1

    goto :goto_0
.end method

.method public declared-synchronized loadDefaultFavoritesIfNecessary()Z
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    const-string v7, "LauncherProvider"

    const-string v8, "loading default workspace"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/launcher2/Utilities;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v6, "LauncherProvider"

    const-string v7, "customizationApkInfo is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v5

    :cond_0
    :try_start_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/res/Resources;

    if-eqz v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const-string v6, "LauncherProvider"

    const-string v7, "targetRes is null or pkg is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_2
    :try_start_2
    const-string v7, "default_workspace"

    const-string v8, "xml"

    invoke-virtual {v3, v7, v8, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    const-string v6, "LauncherProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "default_workspace Layout definition not found in package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v7, "default_application_order"

    const-string v8, "xml"

    invoke-virtual {v3, v7, v8, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const-string v6, "LauncherProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "default_application_order Layout definition not found in package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherProvider;->createEmptyDB(Z)V

    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    # invokes: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesAppOrder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;II)I
    invoke-static {v5, v7, v3, v4, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$100(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;II)I

    move-result v5

    if-gtz v5, :cond_5

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherProvider;->createEmptyDB(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->clearFlagEmptyDbCreated()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v5, v6

    goto :goto_0
.end method

.method public loadFrontApps()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFrontAppOrder()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadOmcLayout()V
    .locals 6

    const-string v3, "LauncherProvider"

    const-string v4, "loadOmcLayout"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    const-string v4, "com.sec.android.app.launcher.prefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherApplication;->setBriefingScreenCount(Landroid/content/Context;I)V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP TABLE IF EXISTS appOrder"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP TABLE IF EXISTS favorites_homeApps"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP TABLE IF EXISTS favorites_homeOnly"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v3, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherApplication;->setScreenBriefingCountChangeMode(Landroid/content/Context;Z)I

    return-void
.end method

.method public modeSwitch(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->switchFavoritesIfNecessary(Z)Z

    move-result v0

    return v0
.end method

.method public moveAppOrderModify(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "UPDATE appOrder set screen=? where _id=?"

    const-string v4, "UPDATE appOrder set screen=? where _id=?"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    const/4 v5, 0x1

    iget v6, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x2

    iget-wide v6, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public moveFavorites(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$FavoritePos;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "UPDATE favorites set container=?,screen=?,cellX=?,cellY=?,secret=?,festival=? where _id=?"

    const-string v4, "UPDATE favorites set container=?,screen=?,cellX=?,cellY=?,secret=?,festival=? where _id=?"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    const/4 v5, 0x1

    iget-wide v6, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->container:J

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x2

    iget v6, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x3

    iget v6, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellX:I

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x4

    iget v6, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellY:I

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x5

    iget v6, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->secret:I

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x6

    iget v6, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->festival:I

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x7

    iget-wide v6, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public moveRightScreenIndex(I)Z
    .locals 1

    const-string v0, "favorites"

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/LauncherProvider;->moveRightScreenIndex(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public moveRightScreenIndex(ILjava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v5

    # invokes: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    invoke-static {v5, v0, p2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$000(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v3, v2

    :goto_0
    return v3

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " set screen=screen+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " where container="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, -0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveRightScreenIndex SQLException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate()Z
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/LauncherApplication;->setLauncherProvider(Lcom/android/launcher2/LauncherProvider;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v5, 0x0

    new-instance v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iget-object v2, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    return-object v9
.end method

.method public restoreHomeScreenDB(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    const-string v27, "LauncherProvider"

    const-string v28, "restoreHomeScreenDB, mOpenHelper is null"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, -0x1

    :goto_0
    return v27

    :cond_0
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/TempVcfForContact"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/android/launcher2/LauncherProvider;->mBasePathForRestore:Ljava/lang/String;

    new-instance v11, Ljava/io/File;

    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mBasePathForRestore:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    const-string v27, "LauncherProvider"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Vcf dir fileList.length: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    array-length v0, v13

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v13

    move/from16 v28, v0

    const/16 v27, 0x0

    :goto_1
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    aget-object v14, v13, v27

    new-instance v12, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/android/launcher2/LauncherProvider;->mBasePathForRestore:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v29

    if-nez v29, :cond_1

    const-string v29, "LauncherProvider"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "file: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", delete failed"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    :cond_2
    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mRestoredDBList:Ljava/util/ArrayList;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mRestoredVcfList:Ljava/util/ArrayList;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mRestoredTagMapping:Ljava/util/HashMap;

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->clear()V

    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mRestoredAllocateAppWidgetIdList:Ljava/util/HashMap;

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->clear()V

    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mRestoredChangedComponent:Ljava/util/HashMap;

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->clear()V

    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mRestoredChangedWidgetComponent:Ljava/util/HashMap;

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->clear()V

    const/16 v27, 0x1

    sput-boolean v27, Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider;->loadChangedComponentFromRes()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherProvider;->loadChangedComponentFromPath(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    # setter for: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$1302(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-object/from16 v27, v0

    const-string v28, "favorites"

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v29

    # invokes: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    invoke-static {v0, v8, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$1400(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    const-string v27, "LauncherProvider"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "restored DB List : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/android/launcher2/LauncherProvider;->mRestoredDBList:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v27

    if-eqz v27, :cond_3

    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mRestoredDBList:Ljava/util/ArrayList;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_3

    if-eqz v18, :cond_3

    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mRestoredDBList:Ljava/util/ArrayList;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/16 v28, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Lcom/android/launcher2/LauncherProvider;->moveRightScreenIndex(ILjava/lang/String;)Z

    goto :goto_2

    :cond_3
    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mRestoredVcfList:Ljava/util/ArrayList;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_6

    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mRestoredVcfList:Ljava/util/ArrayList;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_4

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const-string v28, "LauncherProvider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "list :  "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const-string v27, "LauncherProvider"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "FILE_PATH :  "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/android/launcher2/LauncherProvider;->mBasePathForRestore:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Landroid/content/Intent;

    const-string v27, "com.sec.android.intent.action.REQUEST_RESTORE_CONTACT_SHORTCUT"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v27, "FILE_PATH"

    sget-object v28, Lcom/android/launcher2/LauncherProvider;->mBasePathForRestore:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v27

    const-string v28, "com.sec.permission.BACKUP_RESTORE_HOMESCREEN"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_4
    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mRestoredAllocateAppWidgetIdList:Ljava/util/HashMap;

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v27

    if-lez v27, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    new-instance v4, Landroid/appwidget/AppWidgetHost;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x400

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v4, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    const/4 v7, 0x0

    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mRestoredAllocateAppWidgetIdList:Ljava/util/HashMap;

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_5
    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mRestoredAllocateAppWidgetIdList:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/Pair;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/util/Pair;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v22

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    if-eqz v7, :cond_5

    if-eqz v21, :cond_5

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v5

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    const-string v27, "Old_WidgetId"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v27, "New_WidgetId"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v27, "LauncherProvider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "restoreDB, Old_WidgetId: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", New_WidgetId: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    invoke-virtual {v6, v5, v7, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v27

    if-eqz v27, :cond_7

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    const-string v27, "appWidgetId"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "_id="

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, v27

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    const-string v27, "LauncherProvider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "restoreDB, AllocateAppWidgetId(), update result : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_6
    const-string v27, "LauncherProvider"

    const-string v28, "not have vcf files..."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_7
    const-string v27, "LauncherProvider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "restoreDB, AllocateAppWidgetId(), bindAppWidgetIdIfAllowed failed, "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto/16 :goto_5

    :cond_8
    const-string v27, "LauncherProvider"

    const-string v28, "not have RestoredAllocateAppWidgetIdList..."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/16 v27, 0x0

    sput-boolean v27, Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v27

    if-eqz v27, :cond_a

    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mRestoredDBList:Ljava/util/ArrayList;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mRestoredDBList:Ljava/util/ArrayList;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string v27, "favorites"

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_b

    const/16 v27, 0x1

    goto/16 :goto_0

    :cond_a
    sget-object v27, Lcom/android/launcher2/LauncherProvider;->mRestoredDBList:Ljava/util/ArrayList;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-nez v27, :cond_b

    const-string v27, "LauncherProvider"

    const-string v28, "not restored because mRestoredDBList.size() is 0"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, -0x1

    goto/16 :goto_0

    :cond_b
    const/16 v27, 0x0

    goto/16 :goto_0
.end method

.method protected sendNotify(Landroid/net/Uri;)V
    .locals 3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/LauncherBackupAgentHelper;->dataChanged(Landroid/content/Context;)V

    :cond_0
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    return-void
.end method

.method public shiftScreenIndex(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE favorites SET screen=screen+1 WHERE container=-100 AND screen>="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    :cond_0
    return v1
.end method

.method public updateAppItems(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    sget-object v17, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v16

    const-string v17, "LauncherProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updateAppItems:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_24

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-boolean v18, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v18, :cond_1

    const-string v18, "LauncherProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "appOrder insert folder: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v9, :cond_2

    const-string v18, "INSERT into appOrder (_id,screen,cell,title,secret,color) values(?,?,?,?,?,?)"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    :cond_2
    const/16 v18, 0x1

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v18, 0x2

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v18, 0x3

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    :goto_1
    const/16 v18, 0x5

    const-wide/16 v20, 0x0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v18, 0x6

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->color:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const-string v18, "LauncherProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "appOrder insert folder: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string v18, "LauncherProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "duplicated appOrder.id = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConstraintException;->printStackTrace()V

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v20

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v6

    :try_start_3
    const-string v17, "LauncherProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SQLiteReadOnlyDatabaseException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_8
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_2
    return-void

    :cond_9
    const/16 v18, 0x4

    :try_start_4
    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v17

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b
    if-eqz v15, :cond_c

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d
    if-eqz v11, :cond_e

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_e
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_f
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v17

    :pswitch_1
    :try_start_5
    sget-boolean v18, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v18, :cond_10

    const-string v18, "LauncherProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "appOrder update folder: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-nez v13, :cond_11

    const-string v18, "UPDATE appOrder set screen=?,cell=?,title=?,secret=? where _id=?"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v13

    :cond_11
    const/16 v18, 0x1

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v18, 0x2

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_12

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    :goto_3
    const/16 v18, 0x4

    const-wide/16 v20, 0x0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v18, 0x5

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const-string v18, "LauncherProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "appOrder update folder: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    :cond_12
    const/16 v18, 0x3

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_3

    :pswitch_2
    sget-boolean v18, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v18, :cond_13

    const-string v18, "LauncherProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "appOrder update title: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    if-nez v15, :cond_14

    const-string v18, "UPDATE appOrder set title=? where _id=?"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v15

    :cond_14
    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_15

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    :goto_4
    const/16 v18, 0x2

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    :cond_15
    const/16 v18, 0x1

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_4

    :pswitch_3
    sget-boolean v18, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v18, :cond_16

    const-string v18, "LauncherProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "appOrder create app: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-boolean v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    if-nez v8, :cond_17

    const-string v18, "INSERT into appOrder (_id,folderId,screen,cell,hidden,title,componentName,secret,profileId) values(?,?,?,?,?,?,?,?,?)"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    :cond_17
    const/16 v18, 0x1

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v18, 0x2

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v18, 0x3

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v18, 0x4

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v20, 0x5

    iget-boolean v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    move/from16 v18, v0

    if-eqz v18, :cond_18

    const-wide/16 v18, 0x1

    :goto_5
    move/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_19

    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    :goto_6
    const/16 v18, 0x7

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/16 v18, 0x8

    const-wide/16 v20, 0x0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v18, 0x9

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v20

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const-string v18, "LauncherProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "appOrder create app: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-boolean v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_7
    :try_start_7
    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/customer/PostPosition;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_1a

    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v18

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/launcher2/customer/PostPosition;->run(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    goto/16 :goto_0

    :cond_18
    const-wide/16 v18, 0x0

    goto/16 :goto_5

    :cond_19
    const/16 v18, 0x6

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_6

    :catch_2
    move-exception v7

    const-string v18, "LauncherProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "duplicated appOrder.id = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConstraintException;->printStackTrace()V

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v20

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_7

    :cond_1a
    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/customer/TMO;->supportHomeFolderAdapt()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v18

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/launcher2/customer/TMO;->checkHomeFolderAdapt(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    goto/16 :goto_0

    :pswitch_4
    sget-boolean v18, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v18, :cond_1b

    const-string v18, "LauncherProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "appOrder update app: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-boolean v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    if-nez v11, :cond_1c

    const-string v18, "UPDATE appOrder set folderId=?,screen=?,cell=?,hidden=?,title=?,secret=?, profileId=? where _id=?"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    :cond_1c
    const/16 v18, 0x1

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v18, 0x2

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v18, 0x3

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v20, 0x4

    iget-boolean v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1d

    const-wide/16 v18, 0x1

    :goto_8
    move/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_1e

    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    :goto_9
    const/16 v18, 0x6

    const-wide/16 v20, 0x0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v18, 0x7

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v20

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v18, 0x8

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const-string v18, "LauncherProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "appOrder update app: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-boolean v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    :cond_1d
    const-wide/16 v18, 0x0

    goto/16 :goto_8

    :cond_1e
    const/16 v18, 0x5

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_9

    :pswitch_5
    const-string v18, "LauncherProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "appOrder delete item: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_1f

    const-string v18, "DELETE from appOrder where _id=?"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    :cond_1f
    const/16 v18, 0x1

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/customer/PostPosition;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_0

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v18

    iget-object v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher2/customer/PostPosition;->resetItem(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    sget-boolean v18, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v18, :cond_20

    const-string v18, "LauncherProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "appOrder update color: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->color:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    if-nez v12, :cond_21

    const-string v18, "UPDATE appOrder set color=? where _id=?"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    :cond_21
    const/16 v18, 0x1

    iget v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->color:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v12, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v18, 0x2

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v12, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    :pswitch_7
    sget-boolean v18, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v18, :cond_22

    const-string v18, "LauncherProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "appOrder update restored ID: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    if-nez v14, :cond_23

    const-string v18, "UPDATE appOrder set restored=? where _id=?"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v14

    :cond_23
    const/16 v18, 0x1

    const-wide/16 v20, 0x0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v18, 0x2

    iget-wide v0, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    :cond_24
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v9, :cond_25

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_25
    if-eqz v13, :cond_26

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_26
    if-eqz v15, :cond_27

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_27
    if-eqz v8, :cond_28

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_28
    if-eqz v11, :cond_29

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_29
    if-eqz v5, :cond_2a

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public updateOmcAutoInstallApp()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    # invokes: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->updateOmcAutoInstallApp(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$1700(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public updateScreenCount()V
    .locals 6

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "UPDATE prefs SET value=?, modified=? WHERE key=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v2, 0x3

    const-string v3, "numScreens"

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_0
    return-void
.end method

.method public updateScreenIdFavorites(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$FavoritePos;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "UPDATE favorites set screen=? where _id=?"

    const-string v4, "UPDATE favorites set screen=? where _id=?"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    const/4 v5, 0x1

    iget v6, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x2

    iget-wide v6, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public updateScreenIndex()V
    .locals 6

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "UPDATE prefs SET value=?, modified=? WHERE key=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v2, 0x3

    const-string v3, "defaultScreen"

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_0
    return-void
.end method
