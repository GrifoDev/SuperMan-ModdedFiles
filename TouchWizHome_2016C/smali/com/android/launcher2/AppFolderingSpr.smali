.class public Lcom/android/launcher2/AppFolderingSpr;
.super Ljava/lang/Object;
.source "AppFolderingSpr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AppFolderingSpr$Singleton;
    }
.end annotation


# static fields
.field private static final CALL_DISABLE_LOADER:Ljava/lang/String; = "disableLoader"

.field public static final DEBUG:Z

.field private static final FLAG_SPRINT_DB_DISABLED:I = 0x0

.field private static final FLAG_SPRINT_DB_ENABLED:I = 0x1

.field private static final FLAG_SPRINT_DB_NOT_SET:I = -0x1

.field private static final PREF_FOLDER_PKG_LIST:Ljava/lang/String; = "folderPkgList"

.field private static final PREF_KEY_PKG_EXCLUDE_SET:Ljava/lang/String; = "PkgExcludeSet"

.field private static final PREF_KEY_SPRINT_FOLDER_ID:Ljava/lang/String; = "sprintFolderID"

.field private static final SPRINT_DB_AUTHORITY:Ljava/lang/String;

.field private static final SPRINT_DB_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "LauncherFacade::AppFolderingSpr"

.field private static mDisableFolder:Z

.field private static mDisableLoader:Z

.field private static mExcludePkg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mFolderId:J

.field private static mSprintFolderPkg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sApplication:Lcom/android/launcher2/LauncherApplication;

.field private static sIsSprintDBReady:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/AppFolderingSpr;->DEBUG:Z

    const-string v0, "content://com.sec.sprextension.phoneinfo.db.GlobalProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/AppFolderingSpr;->SPRINT_DB_URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/launcher2/AppFolderingSpr;->SPRINT_DB_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/AppFolderingSpr;->SPRINT_DB_AUTHORITY:Ljava/lang/String;

    sput-object v2, Lcom/android/launcher2/AppFolderingSpr;->sApplication:Lcom/android/launcher2/LauncherApplication;

    sput-object v2, Lcom/android/launcher2/AppFolderingSpr;->mSprintFolderPkg:Ljava/util/Set;

    sput-boolean v3, Lcom/android/launcher2/AppFolderingSpr;->mDisableFolder:Z

    sput-boolean v3, Lcom/android/launcher2/AppFolderingSpr;->mDisableLoader:Z

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/launcher2/AppFolderingSpr;->mFolderId:J

    sput-object v2, Lcom/android/launcher2/AppFolderingSpr;->mExcludePkg:Ljava/util/Set;

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher2/AppFolderingSpr;->sIsSprintDBReady:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/AppFolderingSpr;->sApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-direct {p0}, Lcom/android/launcher2/AppFolderingSpr;->loadSprintFolderPackages()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/AppFolderingSpr$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/AppFolderingSpr;-><init>()V

    return-void
.end method

.method static declared-synchronized SetExcludePkgs(Ljava/lang/String;)V
    .locals 9

    const/4 v4, 0x0

    const-class v5, Lcom/android/launcher2/AppFolderingSpr;

    monitor-enter v5

    :try_start_0
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/launcher2/AppFolderingSpr;->mExcludePkg:Ljava/util/Set;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sput-object v6, Lcom/android/launcher2/AppFolderingSpr;->mExcludePkg:Ljava/util/Set;

    :cond_0
    array-length v6, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v3, v4

    sget-object v7, Lcom/android/launcher2/AppFolderingSpr;->mExcludePkg:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/launcher2/AppFolderingSpr;->mExcludePkg:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    const-string v6, "com.sec.android.app.launcher.prefs"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "PkgExcludeSet"

    sget-object v6, Lcom/android/launcher2/AppFolderingSpr;->mExcludePkg:Ljava/util/Set;

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private addItemtoFolder(Lcom/android/launcher2/AppItem;)Z
    .locals 8

    const/4 v3, 0x1

    const-string v4, "LauncherFacade::AppFolderingSpr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addItemtoFolder ::  folderId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/android/launcher2/AppFolderingSpr;->mFolderId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v4, Lcom/android/launcher2/AppFolderingSpr;->mFolderId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->getAppItems()Ljava/util/Map;

    move-result-object v4

    sget-wide v6, Lcom/android/launcher2/AppFolderingSpr;->mFolderId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    iput-object v0, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    new-instance v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v2}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v4, 0x4

    iput v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    sget-wide v4, Lcom/android/launcher2/AppFolderingSpr;->mFolderId:J

    iput-wide v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    iget-boolean v4, p1, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    iget-wide v4, p1, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget v4, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget-object v4, p1, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/launcher2/AppFolderingSpr;->sApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v4, v1}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    sget-boolean v4, Lcom/android/launcher2/AppFolderingSpr;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "LauncherFacade::AppFolderingSpr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addItemtoFolder :: ADDED:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 4

    invoke-static {}, Lcom/android/launcher2/AppFolderingSpr;->isSprintDBReady()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LauncherFacade::AppFolderingSpr"

    const-string v2, "Not able to access Sprint DB. Failed to get boolean"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p2

    :cond_0
    sget-object v1, Lcom/android/launcher2/AppFolderingSpr;->SPRINT_DB_URI:Landroid/net/Uri;

    const-string v2, "GET:boolean"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0

    :cond_1
    const-string v1, "LauncherFacade::AppFolderingSpr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get boolean for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getInstance(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/AppFolderingSpr;
    .locals 1

    # getter for: Lcom/android/launcher2/AppFolderingSpr$Singleton;->instance:Lcom/android/launcher2/AppFolderingSpr;
    invoke-static {}, Lcom/android/launcher2/AppFolderingSpr$Singleton;->access$100()Lcom/android/launcher2/AppFolderingSpr;

    move-result-object v0

    return-object v0
.end method

.method private isExcludeSprFolder(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/android/launcher2/AppFolderingSpr;->mExcludePkg:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/AppFolderingSpr;->mExcludePkg:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/launcher2/AppFolderingSpr;->mExcludePkg:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isSTUB(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ".vpl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSprintDBReady()Z
    .locals 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sget v7, Lcom/android/launcher2/AppFolderingSpr;->sIsSprintDBReady:I

    if-eq v6, v7, :cond_1

    const-string v6, "LauncherFacade::AppFolderingSpr"

    const-string v7, "isSprintDBReady :: Flag is already set"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v6, Lcom/android/launcher2/AppFolderingSpr;->sIsSprintDBReady:I

    if-ne v4, v6, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/android/launcher2/AppFolderingSpr;->sApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_4

    array-length v8, v3

    move v6, v5

    :goto_1
    if-ge v6, v8, :cond_4

    aget-object v2, v3, v6

    sget-object v9, Lcom/android/launcher2/AppFolderingSpr;->SPRINT_DB_AUTHORITY:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v5, "LauncherFacade::AppFolderingSpr"

    const-string v6, "isSprintDBReady :: Found Sprint DB"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v4, Lcom/android/launcher2/AppFolderingSpr;->sIsSprintDBReady:I

    goto :goto_0

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    const-string v4, "LauncherFacade::AppFolderingSpr"

    const-string v6, "isSprintDBReady :: Unable to find Sprint DB"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v5, Lcom/android/launcher2/AppFolderingSpr;->sIsSprintDBReady:I

    move v4, v5

    goto :goto_0
.end method

.method private declared-synchronized loadSprintFolderPackages()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "disableFoldering"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppFolderingSpr;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/AppFolderingSpr;->mDisableFolder:Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "disableLoader"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppFolderingSpr;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/AppFolderingSpr;->mDisableLoader:Z

    new-instance v1, Ljava/util/HashSet;

    const-string v2, "folderPkgList"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/launcher2/AppFolderingSpr;->mSprintFolderPkg:Ljava/util/Set;

    const-string v1, "sprintFolderID"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/launcher2/AppFolderingSpr;->mFolderId:J

    new-instance v1, Ljava/util/HashSet;

    const-string v2, "PkgExcludeSet"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/launcher2/AppFolderingSpr;->mExcludePkg:Ljava/util/Set;

    const-string v1, "LauncherFacade::AppFolderingSpr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSprintFolderPackages ::  mSprintFolderPkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/AppFolderingSpr;->mSprintFolderPkg:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/launcher2/AppFolderingSpr;->isSprintDBReady()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/AppFolderingSpr;->SPRINT_DB_URI:Landroid/net/Uri;

    const-string v2, "SET:boolean"

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized checkAndAddAppItemToSprintFolder(Lcom/android/launcher2/AppItem;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-wide v4, Lcom/android/launcher2/AppFolderingSpr;->mFolderId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    const-string v3, "LauncherFacade::AppFolderingSpr"

    const-string v4, "checkAndAddAppItemToSprintFolder : No Sprint folder exists;ignoring"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v3, "LauncherFacade::AppFolderingSpr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAndAddAppItemToSprintFolder :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/launcher2/AppFolderingSpr;->mDisableFolder:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/launcher2/AppFolderingSpr;->mDisableFolder:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/AppFolderingSpr;->mSprintFolderPkg:Ljava/util/Set;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/launcher2/AppFolderingSpr;->mSprintFolderPkg:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/launcher2/AppFolderingSpr;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "LauncherFacade::AppFolderingSpr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAndAddAppItemToSprintFolder :: itemPkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppFolderingSpr;->addItemtoFolder(Lcom/android/launcher2/AppItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppFolderingSpr;->removePackagesInSprintfolder(Lcom/android/launcher2/AppItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppFolderingSpr;->isInstalledBySprint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lcom/android/launcher2/AppFolderingSpr;->isExcludeSprFolder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/AppFolderingSpr;->addItemtoFolder(Lcom/android/launcher2/AppItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/launcher2/AppFolderingSpr;->isSTUB(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/launcher2/AppFolderingSpr;->sApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v3, v0}, Lcom/android/launcher2/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/android/launcher2/AppFolderingSpr;->mSprintFolderPkg:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/launcher2/AppFolderingSpr;->mSprintFolderPkg:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/AppFolderingSpr;->updateSprintFolderPackages(Ljava/util/Set;Z)V

    goto/16 :goto_0

    :cond_4
    const-string v3, "LauncherFacade::AppFolderingSpr"

    const-string v4, "checkAndAddAppItemToSprintFolder : full pkg of this VPL already exist; SKIP"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method declared-synchronized getFolderIdIfAvail(Ljava/lang/String;Lcom/android/launcher2/AppItem;)J
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/launcher2/AppFolderingSpr;->mDisableLoader:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v0, :cond_1

    sget-wide v0, Lcom/android/launcher2/AppFolderingSpr;->mFolderId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppFolderingSpr;->isInstalledBySprint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher2/AppFolderingSpr;->isExcludeSprFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/AppFolderingSpr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LauncherFacade::AppFolderingSpr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is belong to Sprint Installer so added to folder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-wide v0, Lcom/android/launcher2/AppFolderingSpr;->mFolderId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSprintFolderID()J
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-wide v0, Lcom/android/launcher2/AppFolderingSpr;->mFolderId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isInstalledBySprint(Ljava/lang/String;)Z
    .locals 2

    sget-object v1, Lcom/android/launcher2/AppFolderingSpr;->sApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sprint.ce.updater"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method declared-synchronized removePackagesInSprintfolder(Lcom/android/launcher2/AppItem;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppFolderingSpr;->removePackagesInSprintfolder(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized removePackagesInSprintfolder(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v3, "LauncherFacade::AppFolderingSpr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removePackagesInSprintfolder ::  removedList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v4, Lcom/android/launcher2/AppFolderingSpr;->mFolderId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    sget-object v3, Lcom/android/launcher2/AppFolderingSpr;->mSprintFolderPkg:Ljava/util/Set;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/launcher2/AppFolderingSpr;->mSprintFolderPkg:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, ".vpl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/launcher2/AppFolderingSpr;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "LauncherFacade::AppFolderingSpr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removePackagesInSprintfolder : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", remove corresponding full pkg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3
    sget-object v4, Lcom/android/launcher2/AppFolderingSpr;->mSprintFolderPkg:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/launcher2/AppFolderingSpr;->mSprintFolderPkg:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/AppFolderingSpr;->updateSprintFolderPackages(Ljava/util/Set;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized setDisableFoldering(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/launcher2/AppFolderingSpr;->mDisableFolder:Z

    if-eq v0, p1, :cond_0

    sput-boolean p1, Lcom/android/launcher2/AppFolderingSpr;->mDisableFolder:Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disableFoldering"

    sget-boolean v2, Lcom/android/launcher2/AppFolderingSpr;->mDisableFolder:Z

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/AppFolderingSpr;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setDisableLoader(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/launcher2/AppFolderingSpr;->mDisableLoader:Z

    if-eq v0, p1, :cond_0

    sput-boolean p1, Lcom/android/launcher2/AppFolderingSpr;->mDisableLoader:Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disableLoader"

    sget-boolean v2, Lcom/android/launcher2/AppFolderingSpr;->mDisableLoader:Z

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/AppFolderingSpr;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setSprintFolderId(J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    sput-wide p1, Lcom/android/launcher2/AppFolderingSpr;->mFolderId:J

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    const-string v2, "sprintFolderID"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v2, "sprintFolderID"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized tryToUpdateFolderList(Lcom/android/launcher2/AppItem;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v0, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    sget-wide v2, Lcom/android/launcher2/AppFolderingSpr;->mFolderId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AppFolderingSpr;->isSTUB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppFolderingSpr;->removePackagesInSprintfolder(Lcom/android/launcher2/AppItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateSprintFolderPackages(Ljava/util/Set;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v2, "LauncherFacade::AppFolderingSpr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSprintFolderPackages ::  pkgs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v2, Lcom/android/launcher2/AppFolderingSpr;->mFolderId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const-string v2, "LauncherFacade::AppFolderingSpr"

    const-string v3, "updateSprintFolderPackages : No Sprint folder exists;ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/launcher2/AppFolderingSpr;->sApplication:Lcom/android/launcher2/LauncherApplication;

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "LauncherFacade::AppFolderingSpr"

    const-string v3, "updateSprintFolderPackages : given pkgs is empty, so clear out"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "folderPkgList"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/AppFolderingSpr;->setSprintFolderId(J)V

    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/AppFolderingSpr;->loadSprintFolderPackages()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    :try_start_2
    const-string v2, "folderPkgList"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
