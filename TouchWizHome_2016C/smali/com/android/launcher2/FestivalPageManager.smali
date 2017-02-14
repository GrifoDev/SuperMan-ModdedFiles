.class public Lcom/android/launcher2/FestivalPageManager;
.super Ljava/lang/Object;
.source "FestivalPageManager.java"


# static fields
.field private static final ACTION_FESTIVAL_CARDWIDGET_ADDED:Ljava/lang/String; = "com.android.launcher.action.FESTIVAL_CARDWIDGET_ADDED"

.field private static final ACTION_FESTIVAL_EVENTWIDGET_ADDED:Ljava/lang/String; = "com.android.launcher.action.FESTIVAL_MYEVENTWIDGET_ADDED"

.field public static final ACTION_FESTIVAL_EVENTWIDGET_PERMISSION_DENY:Ljava/lang/String; = "com.sec.android.widget.myeventwidget.FESTIVAL_CANCEL_ACTION"

.field public static final ACTION_FESTIVAL_EVENTWIDGET_UPDATE:Ljava/lang/String; = "com.sec.android.widget.myeventwidget.FESTIVAL_PERMISSION_CHECK_CALLBACK"

.field private static final ACTION_FESTIVAL_GREETINGWIDGET_ADDED:Ljava/lang/String; = "com.android.launcher.action.FESTIVAL_GREETINGWIDGET_ADDED"

.field private static final BIRTHDAY_FESTIVAL:I = 0x3e7

.field private static final CHILDREN_DAY_FESTIVAL:I = 0x6

.field private static final CHINESE_VALENTINE_DAY_FESTIVAL:I = 0xf

.field private static final CHRISTMAS_FESTIVAL:I = 0xb

.field private static final CONGRATULATION_FESTIVAL:I = 0x3e6

.field private static final CURRENT_FESTIVAL_STRING_KEY:Ljava/lang/String; = "current_sec_theme_package_event_title"

.field public static final DEBUG:Z = false

.field private static final DEBUGGABLE:Z

.field private static final DOUBLE_NINTH_DAY_FESTIVAL:I = 0x11

.field private static final DRAGON_BOAT_FESTIVAL:I = 0xe

.field private static final FESTIVAL_EFFECT_ENABLED:Ljava/lang/String; = "current_sec_theme_package_festival_enabled"

.field private static final LANTERN_FESTIVAL:I = 0xd

.field private static final MAY_DAY_FESTIVAL:I = 0x4

.field private static final MID_AUTUMN_FESTIVAL:I = 0x10

.field private static final MYEVENT_ENABLED:Ljava/lang/String; = "current_sec_theme_package_myevent_enabled"

.field private static final NATIONAL_DAY_FESTIVAL:I = 0xa

.field private static final NEW_YEAR_DAY_FESTIVAL:I = 0x1

.field private static final PREFERENCES_FESTIVAL_INTENT_STRING:Ljava/lang/String; = "festivalstring"

.field private static final PREFERENCES_FESTIVAL_INTENT_STRING_HOMEONLY:Ljava/lang/String; = "festivalstring_homeonly"

.field private static final PREFERENCES_FESTIVAL_PERMISSION_ENABLE:Ljava/lang/String; = "festivalpermission_enable"

.field private static final SPRING_FESTIVAL:I = 0xc

.field public static final TAG:Ljava/lang/String; = "FestivalPageManager"

.field private static final TEACHER_DAY_FESTIVAL:I = 0x9

.field private static final THANK_YOU_DAY_FESTIVAL:I = 0x3

.field private static final TOMB_SWEEPING_DAY_FESTIVAL:I = 0x82

.field private static final VALENTINE_DAY_FESTIVAL:I = 0x2

.field private static final festivalIndexArray:[I

.field private static final festivalNameArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLauncher:Lcom/android/launcher2/Launcher;


# instance fields
.field private mBackupPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mHidedPage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    new-instance v0, Lcom/android/launcher2/FestivalPageManager$1;

    invoke-direct {v0}, Lcom/android/launcher2/FestivalPageManager$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/FestivalPageManager;->festivalNameArray:Landroid/util/SparseArray;

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x6
        0x9
        0xa
        0x11
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x82
        0x3e6
        0x3e7
    .end array-data
.end method

.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FestivalPageManager;->mBackupPages:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    sput-object p1, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/FestivalPageManager;)Lcom/android/launcher2/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/FestivalPageManager;)Lcom/android/launcher2/HomeView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FestivalPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FestivalPageManager;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/FestivalPageManager;->sendFestivalWidgetType(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/LauncherApplication;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher2/FestivalPageManager;->setFestivalString(Lcom/android/launcher2/LauncherApplication;)V

    return-void
.end method

.method public static getCurrentFestivalString(Lcom/android/launcher2/LauncherApplication;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_theme_package_event_title"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFestivalPermissionEnabled(Lcom/android/launcher2/LauncherApplication;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "festivalpermission_enable"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getFestivalString(Lcom/android/launcher2/LauncherApplication;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "festivalstring_homeonly"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "festivalstring"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFestivalType(Ljava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->festivalNameArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    aget v0, v3, v2

    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->festivalNameArray:Landroid/util/SparseArray;

    sget-object v4, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "FestivalPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFestivalType of festivalName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " festivalIndexArray[ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v0

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private isApplicationInstalled(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    sget-object v4, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v4, "FestivalPageManager"

    const-string v5, "festival widget is not installed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFestivalChanged(Lcom/android/launcher2/LauncherApplication;Z)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/android/launcher2/FestivalPageManager;->isFestivalSettingsEnabled(Lcom/android/launcher2/LauncherApplication;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p0}, Lcom/android/launcher2/FestivalPageManager;->isMyEventSettingsEnabled(Lcom/android/launcher2/LauncherApplication;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {p0}, Lcom/android/launcher2/FestivalPageManager;->getCurrentFestivalString(Lcom/android/launcher2/LauncherApplication;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/android/launcher2/FestivalPageManager;->getFestivalString(Lcom/android/launcher2/LauncherApplication;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "FestivalPageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isFestivalChanged prevFestivalString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , festivalString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_6

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/android/launcher2/FestivalPageManager;->setFestivalString(Lcom/android/launcher2/LauncherApplication;Ljava/lang/String;)V

    :cond_2
    const-string v5, "FestivalPageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isFestivalChanged : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " themeEnable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    const/4 v4, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static isFestivalSettingsEnabled(Lcom/android/launcher2/LauncherApplication;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_theme_package_festival_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isMyEventSettingsEnabled(Lcom/android/launcher2/LauncherApplication;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_theme_package_myevent_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private sendFestivalWidgetType(IILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.FESTIVAL_GREETINGWIDGET_ADDED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/launcher2/FestivalPageManager;->isFestivalChanged(Lcom/android/launcher2/LauncherApplication;Z)Z

    move-result v1

    if-eqz v0, :cond_1

    const-string v2, "widgetId"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "festivalType"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isFestivalChanged"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v2, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    sget-boolean v2, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    if-eqz v2, :cond_2

    const-string v2, "FestivalPageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFestivalWidgetType  [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ]  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.FESTIVAL_MYEVENTWIDGET_ADDED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.FESTIVAL_CARDWIDGET_ADDED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setFestivalPermissionEnabled(Lcom/android/launcher2/LauncherApplication;Z)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "festivalpermission_enable"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static setFestivalString(Lcom/android/launcher2/LauncherApplication;)V
    .locals 5

    invoke-static {p0}, Lcom/android/launcher2/FestivalPageManager;->getCurrentFestivalString(Lcom/android/launcher2/LauncherApplication;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "festivalstring_homeonly"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    const-string v3, "festivalstring"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private static setFestivalString(Lcom/android/launcher2/LauncherApplication;Ljava/lang/String;)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "festivalstring_homeonly"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    const-string v2, "festivalstring"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public bindFestivalWidget(Lcom/android/launcher2/AppWidgetBinder;IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "com.sec.android.widget.greetingcardwidget"

    invoke-direct {p0, v1}, Lcom/android/launcher2/FestivalPageManager;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.widget.greetingcardwidget"

    const-string v2, "com.sec.android.widget.greetingcardwidget.CardTempleteProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/FestivalPageManager$2;

    invoke-direct {v2, p0, p2, p4, p3}, Lcom/android/launcher2/FestivalPageManager$2;-><init>(Lcom/android/launcher2/FestivalPageManager;ILjava/lang/String;I)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/launcher2/AppWidgetBinder;->allocateBindNew(Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/ComponentName;Lcom/android/launcher2/AppWidgetBinder$Callback;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "com.sec.android.widget.myeventwidget"

    invoke-direct {p0, v1}, Lcom/android/launcher2/FestivalPageManager;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.widget.myeventwidget"

    const-string v2, "com.sec.android.widget.myeventwidget.MyEventWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string v1, "com.sec.android.widget.festivalsawidget"

    invoke-direct {p0, v1}, Lcom/android/launcher2/FestivalPageManager;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.widget.festivalsawidget"

    const-string v2, "com.sec.android.widget.festivalsawidget.FestivalSAProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFestivalPageCount()I
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public hideFestivalPages()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager;->mBackupPages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager;->mBackupPages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Workspace;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public initFestivalPage(Lcom/android/launcher2/HomeView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/FestivalPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v0, p0, Lcom/android/launcher2/FestivalPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-void
.end method

.method public printWorkspaceInfo()V
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "F|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "N|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "FestivalPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Festival WorkspaceInfo - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "FestivalPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HidedPage size - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showFestivalPages()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/FestivalPageManager;->mBackupPages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/FestivalPageManager;->mBackupPages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/FestivalPageManager;->mBackupPages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
