.class public Lcom/android/launcher2/AutoInstallsLayout;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;,
        Lcom/android/launcher2/AutoInstallsLayout$FolderParser;,
        Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;,
        Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;,
        Lcom/android/launcher2/AutoInstallsLayout$AutoInstallParser;,
        Lcom/android/launcher2/AutoInstallsLayout$AppShortcutParser;,
        Lcom/android/launcher2/AutoInstallsLayout$TagParser;
    }
.end annotation


# static fields
.field private static final ACTION_APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE:Ljava/lang/String; = "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

.field static final ACTION_LAUNCHER_CUSTOMIZATION:Ljava/lang/String; = "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

.field private static final APPORDER_CONTAINER_NAME:Ljava/lang/String; = "appOrder"

.field private static final ATTR_CLASS_NAME:Ljava/lang/String; = "className"

.field private static final ATTR_CONTAINER:Ljava/lang/String; = "container"

.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_RANK:Ljava/lang/String; = "rank"

.field private static final ATTR_SCREEN:Ljava/lang/String; = "screen"

.field private static final ATTR_SPAN_X:Ljava/lang/String; = "spanX"

.field private static final ATTR_SPAN_Y:Ljava/lang/String; = "spanY"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_URL:Ljava/lang/String; = "url"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final ATTR_WORKSPACE:Ljava/lang/String; = "workspace"

.field private static final ATTR_X:Ljava/lang/String; = "x"

.field private static final ATTR_Y:Ljava/lang/String; = "y"

.field private static final HOTSEAT_CONTAINER_NAME:Ljava/lang/String;

.field private static final LAYOUT_RES:Ljava/lang/String; = "default_layout"

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "AutoInstalls"

.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_APP_ICON:Ljava/lang/String; = "appicon"

.field private static final TAG_AUTO_INSTALL:Ljava/lang/String; = "autoinstall"

.field private static final TAG_EXTRA:Ljava/lang/String; = "extra"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_WORKSPACE:Ljava/lang/String; = "workspace"


# instance fields
.field private mAppOrderCell:I

.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field protected final mCallback:Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;

.field private final mContext:Landroid/content/Context;

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field protected final mLayoutId:I

.field protected final mPackageManager:Landroid/content/pm/PackageManager;

.field protected final mRootTag:Ljava/lang/String;

.field protected final mSourceRes:Landroid/content/res/Resources;

.field private mTableName:Ljava/lang/String;

.field private final mTemp:[J

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, -0x65

    invoke-static {v0}, Lcom/android/launcher2/LauncherSettings$Favorites;->containerToString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/AutoInstallsLayout;->HOTSEAT_CONTAINER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/AutoInstallsLayout;->mAppOrderCell:I

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/launcher2/AutoInstallsLayout;->mTemp:[J

    const-string v0, "favorites"

    iput-object v0, p0, Lcom/android/launcher2/AutoInstallsLayout;->mTableName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher2/AutoInstallsLayout;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher2/AutoInstallsLayout;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iput-object p3, p0, Lcom/android/launcher2/AutoInstallsLayout;->mCallback:Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    iput-object p6, p0, Lcom/android/launcher2/AutoInstallsLayout;->mRootTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher2/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    iput p5, p0, Lcom/android/launcher2/AutoInstallsLayout;->mLayoutId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AutoInstallsLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/appwidget/AppWidgetHost;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AutoInstallsLayout;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/AutoInstallsLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AutoInstallsLayout;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method

.method protected static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
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

.method private static copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method static get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher2/AutoInstallsLayout;
    .locals 3

    const-string v1, "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher2/Utilities;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/Resources;

    invoke-static {p0, v1, v2, p1, p2}, Lcom/android/launcher2/AutoInstallsLayout;->get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher2/AutoInstallsLayout;

    move-result-object v1

    goto :goto_0
.end method

.method static get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher2/AutoInstallsLayout;
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "default_layout"

    const-string v2, "xml"

    invoke-virtual {p2, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    const-string v1, "AutoInstalls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Layout definition not found in package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/launcher2/AutoInstallsLayout;

    const-string v6, "workspace"

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected static getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 2

    const-string v1, "http://schemas.android.com/apk/res-auto/com.android.launcher3"

    invoke-interface {p0, v1, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method protected static getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v1, "http://schemas.android.com/apk/res-auto/com.android.launcher3"

    invoke-interface {p0, v1, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected addShortcut(Ljava/lang/String;Landroid/content/Intent;I)J
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/launcher2/AutoInstallsLayout;->mCallback:Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;

    iget-object v3, p0, Lcom/android/launcher2/AutoInstallsLayout;->mTableName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appOrder"

    iget-object v3, p0, Lcom/android/launcher2/AutoInstallsLayout;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "componentName"

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/AutoInstallsLayout;->mCallback:Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;

    iget-object v3, p0, Lcom/android/launcher2/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    iget-object v5, p0, Lcom/android/launcher2/AutoInstallsLayout;->mTableName:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "intent"

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "itemType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "spanX"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "spanY"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method protected getFolderElementsMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appicon"

    new-instance v2, Lcom/android/launcher2/AutoInstallsLayout$AppShortcutParser;

    invoke-direct {v2, p0}, Lcom/android/launcher2/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/android/launcher2/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "autoinstall"

    new-instance v2, Lcom/android/launcher2/AutoInstallsLayout$AutoInstallParser;

    invoke-direct {v2, p0}, Lcom/android/launcher2/AutoInstallsLayout$AutoInstallParser;-><init>(Lcom/android/launcher2/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shortcut"

    new-instance v2, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;

    iget-object v3, p0, Lcom/android/launcher2/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;-><init>(Lcom/android/launcher2/AutoInstallsLayout;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getLayoutElementsMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appicon"

    new-instance v2, Lcom/android/launcher2/AutoInstallsLayout$AppShortcutParser;

    invoke-direct {v2, p0}, Lcom/android/launcher2/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/android/launcher2/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "autoinstall"

    new-instance v2, Lcom/android/launcher2/AutoInstallsLayout$AutoInstallParser;

    invoke-direct {v2, p0}, Lcom/android/launcher2/AutoInstallsLayout$AutoInstallParser;-><init>(Lcom/android/launcher2/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "folder"

    new-instance v2, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;

    invoke-direct {v2, p0}, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;-><init>(Lcom/android/launcher2/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appwidget"

    new-instance v2, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;

    invoke-direct {v2, p0}, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;-><init>(Lcom/android/launcher2/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shortcut"

    new-instance v2, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;

    iget-object v3, p0, Lcom/android/launcher2/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/AutoInstallsLayout$ShortcutParser;-><init>(Lcom/android/launcher2/AutoInstallsLayout;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher2/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/AutoInstallsLayout;->mAppOrderCell:I

    :try_start_0
    iget v1, p0, Lcom/android/launcher2/AutoInstallsLayout;->mLayoutId:I

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher2/AutoInstallsLayout;->parseLayout(ILjava/util/ArrayList;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "AutoInstalls"

    const-string v2, "Got exception parsing layout."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected parseAndAddNode(Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;Ljava/util/ArrayList;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/AutoInstallsLayout$TagParser;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v11, "include"

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "workspace"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher2/AutoInstallsLayout;->parseLayout(ILjava/util/ArrayList;)I

    move-result v11

    :goto_0
    return v11

    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AutoInstallsLayout;->mTemp:[J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/android/launcher2/AutoInstallsLayout;->parseContainerAndScreen(Landroid/content/res/XmlResourceParser;[J)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AutoInstallsLayout;->mTemp:[J

    const/4 v12, 0x0

    aget-wide v4, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AutoInstallsLayout;->mTemp:[J

    const/4 v12, 0x1

    aget-wide v8, v11, v12

    const-string v11, "appOrder"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/AutoInstallsLayout;->mTableName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v12, "folderId"

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v12, "screen"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v12, "cell"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AutoInstallsLayout;->mAppOrderCell:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/AutoInstallsLayout;->mAppOrderCell:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/AutoInstallsLayout;->mAppOrderCell:I

    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AutoInstallsLayout$TagParser;

    if-nez v10, :cond_4

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const-wide/16 v12, -0x64

    cmp-long v11, v12, v4

    if-nez v11, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getBriefingScreenCount()I

    move-result v2

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v12, "container"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v12, "screen"

    int-to-long v14, v2

    add-long/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v12, "cellX"

    const-string v13, "x"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v12, "cellY"

    const-string v13, "y"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lcom/android/launcher2/AutoInstallsLayout$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-ltz v11, :cond_6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-wide/16 v12, -0x64

    cmp-long v11, v4, v12

    if-nez v11, :cond_5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method protected parseContainerAndScreen(Landroid/content/res/XmlResourceParser;[J)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "favorites"

    iput-object v1, p0, Lcom/android/launcher2/AutoInstallsLayout;->mTableName:Ljava/lang/String;

    const-string v1, "container"

    invoke-static {p1, v1}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/AutoInstallsLayout;->HOTSEAT_CONTAINER_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, -0x65

    aput-wide v2, p2, v4

    const-string v1, "rank"

    invoke-static {p1, v1}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, p2, v5

    :goto_0
    return-void

    :cond_0
    const-string v1, "appOrder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "appOrder"

    iput-object v1, p0, Lcom/android/launcher2/AutoInstallsLayout;->mTableName:Ljava/lang/String;

    const-wide/16 v2, -0x1

    aput-wide v2, p2, v4

    const-string v1, "screen"

    invoke-static {p1, v1}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, p2, v5

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x64

    aput-wide v2, p2, v4

    const-string v1, "screen"

    invoke-static {p1, v1}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, p2, v5

    goto :goto_0
.end method

.method protected parseLayout(ILjava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Lcom/android/launcher2/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher2/AutoInstallsLayout;->mRootTag:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/launcher2/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/AutoInstallsLayout;->getLayoutElementsMap()Ljava/util/HashMap;

    move-result-object v3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_2

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/launcher2/AutoInstallsLayout;->parseAndAddNode(Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;Ljava/util/ArrayList;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    :cond_2
    return v0
.end method
