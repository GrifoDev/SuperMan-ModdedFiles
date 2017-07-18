.class public Lcom/android/launcher2/FolderLock;
.super Ljava/lang/Object;
.source "FolderLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final APPLOCK_ENABLE_CHANGED:Ljava/lang/String; = "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final FOLDERLOCK_ACTION:Ljava/lang/String; = "com.sec.android.launcher.intent.action.FOLDERLOCK_CHANGED"

.field private static final KEY_LASTEST_LOCKED_PACKAGES:Ljava/lang/String; = "last_locked_package"

.field private static final KNOX_SHORTCUT_PACKAGE:Ljava/lang/String; = "com.samsung.knox.rcp.components"

.field public static final LAUNCHER_REQUEST:Ljava/lang/String; = "LAUNCHER_REQUEST"

.field private static final LOCKED_APP_FOLDERS:Ljava/lang/String; = "smartmanager_locked_apps_folders"

.field public static final LOCKED_CLASS_NAME:Ljava/lang/String; = "LOCKED_CLASS_NAME"

.field private static final LOCKED_PACKAGE:Ljava/lang/String; = "smartmanager_locked_apps_packages"

.field public static final LOCKED_PACKAGE_ICON:Ljava/lang/String; = "LOCKED_PACKAGE_ICON"

.field public static final LOCKED_PACKAGE_LABEL:Ljava/lang/String; = "LOCKED_PACKAGE_LABEL"

.field private static final LOCKED_PACKAGE_N:Ljava/lang/String; = "applock_locked_apps_packages"

.field public static final LOCKED_PACKAGE_NAME:Ljava/lang/String; = "LOCKED_PACKAGE_NAME"

.field public static final LOCK_CONTAINER_HOME:Ljava/lang/String; = "home_locked_items"

.field public static final LOCK_CONTAINER_HOME_ONLY:Ljava/lang/String; = "home_only_locked_items"

.field public static final LOCK_CONTAINER_MENU:Ljava/lang/String; = "menu_locked_items"

.field private static final NOTIFY_APPLOCK_UPDATE_ACTION:Ljava/lang/String; = "com.samsung.applock.intent.action.NOTIFYUPDATE"

.field public static final REQUEST_HIDE:Ljava/lang/String; = "request_hide"

.field private static final REQUEST_HIDE_OR_UNHIDE:Ljava/lang/String; = "hide_or_unhide"

.field public static final REQUEST_LOCK:Ljava/lang/String; = "request_lock"

.field private static final REQUEST_LOCK_OR_UNLOCK:Ljava/lang/String; = "lock_or_unlock"

.field public static final REQUEST_UNHIDE:Ljava/lang/String; = "request_unhide"

.field public static final REQUEST_UNLOCK:Ljava/lang/String; = "request_unlock"

.field public static final REQUEST_VERIFY_FROM:Ljava/lang/String; = "REQUEST_VERIFY_FROM"

.field private static final SEPARATOR_CLS_FOLDERID:Ljava/lang/String; = "-"

.field private static final SEPARATOR_FOLDERID:Ljava/lang/String; = ";"

.field private static final SEPARATOR_PKG_CLS:Ljava/lang/String; = ","

.field private static final SEPARATOR_STRING:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "Launcher.FolderLock"

.field public static final UNLOCK_CONTAINER_ADDITION:Ljava/lang/String; = "drag"

.field public static final UNLOCK_CONTAINER_HOME:Ljava/lang/String; = "home_tempunlocked_items"

.field public static final UNLOCK_CONTAINER_HOME_ONLY:Ljava/lang/String; = "homeonly_tempunlocked_items"

.field public static final UNLOCK_CONTAINER_MENU:Ljava/lang/String; = "menu_tempunlocked_items"

.field private static final UNLOCK_FOLDER:Ljava/lang/String; = "com.sec.android.launcher.intent.action.UNLOCK_FOLDER"

.field public static bindAppEnd:Z

.field public static bindHomeEnd:Z

.field public static isChangeMode:Ljava/lang/Boolean;

.field public static isFolderLockEnable:Ljava/lang/Boolean;

.field private static mInstance:Lcom/android/launcher2/FolderLock;

.field public static willStartActivity:Z


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mLockedFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/FolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedItemRecords:Lcom/android/launcher2/LockedItemRecords;

.field private mReceiver:Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;

.field private mUpdateDBHandler:Landroid/os/Handler;

.field private mWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/FolderLock;->mInstance:Lcom/android/launcher2/FolderLock;

    sput-boolean v1, Lcom/android/launcher2/FolderLock;->willStartActivity:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/FolderLock;->isFolderLockEnable:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/FolderLock;->isChangeMode:Ljava/lang/Boolean;

    sput-boolean v1, Lcom/android/launcher2/FolderLock;->bindHomeEnd:Z

    sput-boolean v1, Lcom/android/launcher2/FolderLock;->bindAppEnd:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/FolderLock;->am:Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/launcher2/LockedItemRecords;

    invoke-direct {v0}, Lcom/android/launcher2/LockedItemRecords;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderLock;->mLockedItemRecords:Lcom/android/launcher2/LockedItemRecords;

    iput-object p1, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderLock;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FolderLock;->am:Landroid/app/ActivityManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderLock;->mLockedFolders:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderLock;->mWhiteList:Ljava/util/List;

    new-instance v0, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;-><init>(Lcom/android/launcher2/FolderLock;Lcom/android/launcher2/FolderLock$1;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderLock;->mReceiver:Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderLock;->mUpdateDBHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->registerListener()V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->initWhiteList()V

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->isAppLockEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/FolderLock;->isFolderLockEnable:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/FolderLock;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderLock;->mLockedFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderLock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->clearTempUnlockedFolder()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/FolderLock;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/FolderLock;)Landroid/content/Context;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/FolderLock;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/FolderLock;->removeLockedRecords(Ljava/lang/String;J)V

    return-void
.end method

.method private clearTempUnlockedFolder()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/FolderLock;->mLockedItemRecords:Lcom/android/launcher2/LockedItemRecords;

    iget-object v1, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    const-string v2, "homeonly_tempunlocked_items"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/LockedItemRecords;->removeAll(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher2/FolderLock;->mLockedItemRecords:Lcom/android/launcher2/LockedItemRecords;

    iget-object v1, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    const-string v2, "menu_tempunlocked_items"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/LockedItemRecords;->removeAll(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher2/FolderLock;->mLockedItemRecords:Lcom/android/launcher2/LockedItemRecords;

    iget-object v1, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    const-string v2, "home_tempunlocked_items"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/LockedItemRecords;->removeAll(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getBindAppEnd()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/FolderLock;->bindAppEnd:Z

    return v0
.end method

.method public static getBindHomeEnd()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/FolderLock;->bindHomeEnd:Z

    return v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;
    .locals 2

    sget-object v0, Lcom/android/launcher2/FolderLock;->mInstance:Lcom/android/launcher2/FolderLock;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/launcher2/FolderLock;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher2/FolderLock;->mInstance:Lcom/android/launcher2/FolderLock;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/FolderLock;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderLock;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher2/FolderLock;->mInstance:Lcom/android/launcher2/FolderLock;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/android/launcher2/FolderLock;->mInstance:Lcom/android/launcher2/FolderLock;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getLockedAppFolderMapping()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smartmanager_locked_apps_folders"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private getLockedPackagesFromDB()Ljava/lang/String;
    .locals 4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "applock_locked_apps_packages"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const-string v1, "Launcher.FolderLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockedPackagesFromDB result is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smartmanager_locked_apps_packages"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUnlockContainer(Lcom/android/launcher2/FolderItem;Z)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-string v1, ""

    if-eqz p2, :cond_0

    const-string v1, "drag"

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "homeonly_tempunlocked_items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    instance-of v2, p1, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "home_tempunlocked_items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v2, p1, Lcom/android/launcher2/AppFolderItem;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "menu_tempunlocked_items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getViewCacheDrawable(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->getFolderIconWithPlate()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private initWhiteList()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f100000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderLock;->mWhiteList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private isAppLockEnable()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "app_lock_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isChangeModed()Z
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderLock;->isChangeMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isFolderLockEnabled()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderLock;->isFolderLockEnable:Ljava/lang/Boolean;

    return-object v0
.end method

.method private registerListener()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.launcher.intent.action.FOLDERLOCK_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.launcher.intent.action.UNLOCK_FOLDER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/FolderLock;->mReceiver:Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeLockedRecords(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/FolderLock;->mLockedItemRecords:Lcom/android/launcher2/LockedItemRecords;

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/launcher2/LockedItemRecords;->remove(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private sendUnlockBroadcast(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.launcher.intent.action.FOLDERLOCK_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendUnlockBroadcast(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "folder_id"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "folder_type"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.launcher.intent.action.UNLOCK_FOLDER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setBindAppEnd(Z)V
    .locals 2

    const/4 v1, 0x1

    sput-boolean p0, Lcom/android/launcher2/FolderLock;->bindAppEnd:Z

    sget-boolean v0, Lcom/android/launcher2/FolderLock;->bindHomeEnd:Z

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/launcher2/FolderLock;->bindAppEnd:Z

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher2/FolderLock;->isChangeMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/FolderLock;->isChangeMode:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public static setBindHomeEnd(Z)V
    .locals 2

    const/4 v1, 0x1

    sput-boolean p0, Lcom/android/launcher2/FolderLock;->bindHomeEnd:Z

    sget-boolean v0, Lcom/android/launcher2/FolderLock;->bindHomeEnd:Z

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/launcher2/FolderLock;->bindAppEnd:Z

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher2/FolderLock;->isChangeMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/FolderLock;->isChangeMode:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public static setChangeMode(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/FolderLock;->isChangeMode:Ljava/lang/Boolean;

    sget-object v0, Lcom/android/launcher2/FolderLock;->isChangeMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sput-boolean v2, Lcom/android/launcher2/FolderLock;->bindHomeEnd:Z

    sput-boolean v2, Lcom/android/launcher2/FolderLock;->bindAppEnd:Z

    :cond_0
    return-void
.end method

.method private unlockAppsInFolder(Lcom/android/launcher2/FolderItem;)V
    .locals 18

    const-string v13, ""

    const-string v2, ""

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/FolderLock;->getLockedPackagesFromDB()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/FolderLock;->getLockedAppFolderMapping()Ljava/lang/String;

    move-result-object v10

    const-string v14, ""

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v15, ","

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v15, ";"

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v15, "Launcher.FolderLock"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "lockPackages and lockedPackageList size is   "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " / "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, ""

    invoke-interface/range {p1 .. p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v7

    invoke-interface/range {p1 .. p1}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_4

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v15

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/FolderLock;->isShouldHideBar(Lcom/android/launcher2/BaseItem;)Z

    move-result v15

    if-eqz v15, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    if-eqz v5, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :try_start_0
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v15, "Launcher.FolderLock"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unlockAppsInFolder lockedPackageList error e="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v8, ""

    const-string v10, ""

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v5, v15, :cond_6

    if-nez v5, :cond_5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/android/launcher2/FolderLock;->sendUnlockBroadcast(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/launcher2/FolderLock;->updateLockedPackagesToDB(Ljava/lang/String;)V

    return-void
.end method

.method private updateLockedAppFolderMapping(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smartmanager_locked_apps_folders"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Launcher.FolderLock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLockedAppFolderMapping is  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Launcher.FolderLock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLockedAppFolderMapping Settings.System.putString error e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateLockedPackagesToDB(Ljava/lang/String;)V
    .locals 5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.applock.intent.action.NOTIFYUPDATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.applock"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "last_locked_package"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smartmanager_locked_apps_packages"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Launcher.FolderLock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLockedPackagesToDB Settings.System.putString error e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addLockedRecords(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/FolderLock;->mLockedItemRecords:Lcom/android/launcher2/LockedItemRecords;

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/launcher2/LockedItemRecords;->add(Landroid/content/Context;Ljava/lang/String;J)Z

    return-void
.end method

.method public addTempUnlockedFolder(Lcom/android/launcher2/FolderItem;Z)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/FolderLock;->getUnlockContainer(Lcom/android/launcher2/FolderItem;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderLock;->mLockedItemRecords:Lcom/android/launcher2/LockedItemRecords;

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/android/launcher2/LockedItemRecords;->add(Landroid/content/Context;Ljava/lang/String;J)Z

    return-void
.end method

.method public applyFolderNameChanged()V
    .locals 12

    const-string v6, ""

    const-string v7, ""

    const-string v0, ""

    const-string v2, ""

    iget-object v8, p0, Lcom/android/launcher2/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderItem;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    instance-of v9, v1, Lcom/android/launcher2/AppFolderItem;

    if-nez v9, :cond_0

    :cond_1
    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v5

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    invoke-interface {v1, v3}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    const-string v8, "Launcher.FolderLock"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the time before update DB is   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/android/launcher2/FolderLock;->updateLockedAppFolderMapping(Ljava/lang/String;)V

    const-string v8, "Launcher.FolderLock"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the time before update DB is   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .locals 1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    check-cast v0, Landroid/app/ActivityManager;

    return-object v0
.end method

.method public getAppLockedCheckAction()Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "android.app.ActivityManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    :try_start_1
    const-string v5, "getAppLockedCheckAction"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/FolderLock;->am:Landroid/app/ActivityManager;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-object v1

    :catch_0
    move-exception v3

    const-string v5, "Launcher.FolderLock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppLockedCheckAction Class.forName error e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v5, "Launcher.FolderLock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppLockedCheckAction clazz.getMethod error e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAppLockedPackageList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v5, "android.app.ActivityManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    const-string v5, "getAppLockedPackageList"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/FolderLock;->am:Landroid/app/ActivityManager;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-object v3

    :catch_0
    move-exception v2

    const-string v5, "Launcher.FolderLock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppLockedPackageList clazz.forName error e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v5, "Launcher.FolderLock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppLockedPackageList clazz.getMethod error e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isAppLockedPackage(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "android.app.ActivityManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    const-string v4, "isAppLockedPackage"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/FolderLock;->am:Landroid/app/ActivityManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :cond_0
    :goto_1
    return v2

    :catch_0
    move-exception v1

    const-string v4, "Launcher.FolderLock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAppLockedPackage Class.forName error e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v4, "Launcher.FolderLock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAppLockedPackage clazz.getMethod error e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isInLockedFolder(Landroid/content/ComponentName;)Z
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getLockedAppFolderMapping()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isInWhiteList(Lcom/android/launcher2/BaseItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/FolderLock;->mWhiteList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLockedApp(Lcom/android/launcher2/BaseItem;)Z
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getLockedPackagesFromDB()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v5, "Launcher.FolderLock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the pkgName and lockPackages is   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isLockedFolderId(Ljava/lang/String;J)Z
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/FolderLock;->mLockedItemRecords:Lcom/android/launcher2/LockedItemRecords;

    iget-object v1, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/launcher2/LockedItemRecords;->contains(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLockedFolderItem(Lcom/android/launcher2/FolderItem;)Z
    .locals 4

    const-string v0, "home_locked_items"

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "home_only_locked_items"

    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher2/FolderLock;->isLockedFolderId(Ljava/lang/String;J)Z

    move-result v1

    return v1

    :cond_1
    instance-of v1, p1, Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_2

    const-string v0, "menu_locked_items"

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v1, :cond_0

    const-string v0, "home_locked_items"

    goto :goto_0
.end method

.method public isShouldHideBar(Lcom/android/launcher2/BaseItem;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v4}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v4

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v5}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "Launcher.FolderLock"

    const-string v5, "shortcut without packageName true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.knox.rcp.components"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Launcher.FolderLock"

    const-string v5, "Knox shortcut true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v3

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isSSecureSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Launcher.FolderLock"

    const-string v5, "AFW user app"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public isTempUnlockedFolder(Lcom/android/launcher2/FolderItem;Z)Z
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/FolderLock;->getUnlockContainer(Lcom/android/launcher2/FolderItem;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderLock;->mLockedItemRecords:Lcom/android/launcher2/LockedItemRecords;

    iget-object v2, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher2/LockedItemRecords;->contains(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public lockApp(Lcom/android/launcher2/BaseItem;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getLockedPackagesFromDB()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderLock;->updateLockedPackagesToDB(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isSSecureSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090027

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v8}, Lcom/android/launcher2/FolderLock;->sendApppLockChangedBroadcast(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public lockApp(Lcom/android/launcher2/BaseItem;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderLock;->applyFolderNameChanged()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderLock;->lockApp(Lcom/android/launcher2/BaseItem;)V

    return-void
.end method

.method public lockAppsInFolder(Lcom/android/launcher2/FolderItem;)V
    .locals 8

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getLockedPackagesFromDB()Ljava/lang/String;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-interface {p1, v0}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/FolderLock;->isShouldHideBar(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v5

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lcom/android/launcher2/FolderLock;->updateLockedPackagesToDB(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderLock;->applyFolderNameChanged()V

    return-void
.end method

.method public lockFolder(Lcom/android/launcher2/BaseItem;)V
    .locals 8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "home_only_locked_items"

    iget-wide v4, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/launcher2/FolderLock;->addLockedRecords(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    move-object v2, v0

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v4, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-wide v4, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v6, p1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_3

    const-string v2, "menu_locked_items"

    iget-wide v4, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/launcher2/FolderLock;->addLockedRecords(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_0

    const-string v2, "home_locked_items"

    iget-wide v4, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/launcher2/FolderLock;->addLockedRecords(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/launcher2/FolderLock;->mLockedFolders:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Lcom/android/launcher2/FolderItem;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    check-cast p1, Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderLock;->lockAppsInFolder(Lcom/android/launcher2/FolderItem;)V

    return-void
.end method

.method public lockFolder(Lcom/android/launcher2/BaseItem;Z)V
    .locals 4

    if-eqz p2, :cond_0

    const-string v0, "home_locked_items"

    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher2/FolderLock;->addLockedRecords(Ljava/lang/String;J)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderLock;->lockFolder(Lcom/android/launcher2/BaseItem;)V

    :cond_0
    return-void
.end method

.method public lockItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher2/FolderItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderLock;->lockFolder(Lcom/android/launcher2/BaseItem;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderLock;->lockApp(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0
.end method

.method public refreshAppFolderItems()V
    .locals 10

    const-string v5, "Launcher.FolderLock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshAppFolderItems "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/launcher2/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FolderItem;

    if-eqz v3, :cond_0

    move-object v5, v3

    check-cast v5, Lcom/android/launcher2/BaseItem;

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v7, :cond_0

    move-object v5, v3

    check-cast v5, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v5}, Lcom/android/launcher2/AppFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderLock;->isLockedApp(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderLock;->isShouldHideBar(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->getPosition()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    move-object v5, v3

    check-cast v5, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v5}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v3

    check-cast v5, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/AppFolderItem;->removeItemForFolderLock(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    :cond_2
    move-object v5, v3

    check-cast v5, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/AppFolderItem;->removeItemForFolderLock(Lcom/android/launcher2/BaseItem;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->appModelUpdated()V

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FolderItem;

    move-object v5, v3

    check-cast v5, Lcom/android/launcher2/BaseItem;

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v5, "menu_locked_items"

    check-cast v3, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v3}, Lcom/android/launcher2/AppFolderItem;->getId()J

    move-result-wide v8

    invoke-direct {p0, v5, v8, v9}, Lcom/android/launcher2/FolderLock;->removeLockedRecords(Ljava/lang/String;J)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public refreshHomeFolderItems()V
    .locals 25

    const-string v2, "Launcher.FolderLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshHomeFolderItems "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/FolderItem;

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    if-eqz v15, :cond_2

    move-object v2, v15

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v4, :cond_2

    move-object v2, v15

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/FolderLock;->isLockedApp(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/FolderLock;->isShouldHideBar(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v2, v15

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v2

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x1

    if-gt v2, v4, :cond_2

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-enter p0

    :try_start_0
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v21

    const/4 v13, 0x0

    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutsForFolderLock()Ljava/util/List;

    move-result-object v13

    :cond_3
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_4
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/HomeItem;

    move-object v0, v15

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    if-eqz v19, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_4

    move-object/from16 v11, v19

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/launcher2/HomeFolderItem;->removeItemFolderLock(Lcom/android/launcher2/BaseItem;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v2

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    if-ne v2, v4, :cond_5

    if-eqz v21, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeView;->setMainHomeScreenshot(Z)V

    :cond_5
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    if-eqz v21, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeView;->setTakescreenshot(Z)V

    :cond_6
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    move-object/from16 v0, v16

    iget v9, v0, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->findNearVacantCell(Landroid/content/Context;ZZZIII)[I

    move-result-object v14

    const-wide/16 v4, -0x64

    iput-wide v4, v11, Lcom/android/launcher2/HomeItem;->container:J

    const/4 v2, 0x0

    aget v2, v14, v2

    iput v2, v11, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/4 v2, 0x1

    aget v2, v14, v2

    iput v2, v11, Lcom/android/launcher2/HomeItem;->cellX:I

    const/4 v2, 0x2

    aget v2, v14, v2

    iput v2, v11, Lcom/android/launcher2/HomeItem;->cellY:I

    const-string v2, "Launcher.FolderLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v11, Lcom/android/launcher2/HomeItem;->container:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mScreen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cellX "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cellY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v11}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    if-eqz v21, :cond_7

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutsForFolderLock()Ljava/util/List;

    move-result-object v13

    :cond_7
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v4

    const/4 v5, 0x0

    aget v5, v14, v5

    if-ne v4, v5, :cond_8

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/launcher2/HomeFolderItem;->container:J

    iput-wide v4, v3, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iput v2, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    iput v2, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    iput v2, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/launcher2/HomeFolderItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v2, v4, v6

    if-nez v2, :cond_b

    if-eqz v21, :cond_a

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v18

    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutHotseat;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    :cond_a
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v4, v3, Lcom/android/launcher2/HomeItem;->container:J

    iget v6, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v7, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v8, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_b
    :try_start_1
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_3

    :cond_d
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_e
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/FolderItem;

    move-object v2, v15

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v5, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v2, "menu_locked_items"

    check-cast v15, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v15}, Lcom/android/launcher2/AppFolderItem;->getId()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/android/launcher2/FolderLock;->removeLockedRecords(Ljava/lang/String;J)V

    goto :goto_4

    :cond_10
    move-object v2, v15

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v2, v15

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    invoke-static {v5, v2}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "home_only_locked_items"

    check-cast v15, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v15}, Lcom/android/launcher2/HomeFolderItem;->getId()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/android/launcher2/FolderLock;->removeLockedRecords(Ljava/lang/String;J)V

    goto :goto_4

    :cond_11
    const-string v2, "home_locked_items"

    check-cast v15, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v15}, Lcom/android/launcher2/HomeFolderItem;->getId()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/android/launcher2/FolderLock;->removeLockedRecords(Ljava/lang/String;J)V

    goto :goto_4

    :cond_12
    return-void
.end method

.method public remove(Lcom/android/launcher2/BaseItem;)V
    .locals 4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "home_only_locked_items"

    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher2/FolderLock;->removeLockedRecords(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/FolderLock;->mLockedFolders:Ljava/util/List;

    check-cast p1, Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_2

    const-string v0, "menu_locked_items"

    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher2/FolderLock;->removeLockedRecords(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_0

    const-string v0, "home_locked_items"

    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher2/FolderLock;->removeLockedRecords(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public removeLockedFolderItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public sendAppHideIntent(Lcom/android/launcher2/BaseItem;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.applock.intent.action.APP_HIDE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package_name"

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_hidden"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090026

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "APHD"

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public sendApppLockChangedBroadcast(Ljava/lang/String;Z)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.applock.intent.action.APP_LOCK_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_locked"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "APLK"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_0
    return-void
.end method

.method public startVerifyActivity(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderLock;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "REQUEST_VERIFY_FROM"

    const-string v2, "LAUNCHER_REQUEST"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/FolderLock;->willStartActivity:Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startVerifyActivity(ILcom/android/launcher2/BaseItem;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderLock;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "REQUEST_VERIFY_FROM"

    const-string v2, "LAUNCHER_REQUEST"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "lock_or_unlock"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "LOCKED_PACKAGE_ICON"

    iget-object v2, p2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "LOCKED_PACKAGE_LABEL"

    iget-object v2, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LOCKED_PACKAGE_NAME"

    invoke-virtual {p2}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/FolderLock;->willStartActivity:Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startVerifyActivity(ILcom/android/launcher2/FolderItem;Landroid/view/View;Ljava/lang/String;)V
    .locals 7

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderLock;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "lock_or_unlock"

    invoke-virtual {v1, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "REQUEST_VERIFY_FROM"

    const-string v6, "LAUNCHER_REQUEST"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "LOCKED_PACKAGE_ICON"

    invoke-direct {p0, p3}, Lcom/android/launcher2/FolderLock;->getViewCacheDrawable(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "LOCKED_PACKAGE_LABEL"

    invoke-interface {p2}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p2}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v3

    const-string v4, ""

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-interface {p2, v0}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "LOCKED_PACKAGE_NAME"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/launcher2/FolderLock;->willStartActivity:Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5, v1, p1}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startVerifyActivityForHide(ILcom/android/launcher2/BaseItem;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderLock;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "REQUEST_VERIFY_FROM"

    const-string v2, "LAUNCHER_REQUEST"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hide_or_unhide"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "LOCKED_PACKAGE_ICON"

    iget-object v2, p2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "LOCKED_PACKAGE_LABEL"

    iget-object v2, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LOCKED_PACKAGE_NAME"

    invoke-virtual {p2}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/FolderLock;->willStartActivity:Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public unlockApp(Lcom/android/launcher2/BaseItem;Z)V
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v0, ""

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getLockedPackagesFromDB()Ljava/lang/String;

    move-result-object v3

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    const/4 v1, 0x0

    :goto_0
    array-length v7, v2

    if-ge v1, v7, :cond_3

    if-eqz v4, :cond_1

    aget-object v7, v2, v1

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/launcher2/FolderLock;->sendUnlockBroadcast(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, v5}, Lcom/android/launcher2/FolderLock;->updateLockedPackagesToDB(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isSSecureSupported()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002b

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/launcher2/FolderLock;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v11}, Lcom/android/launcher2/FolderLock;->sendApppLockChangedBroadcast(Ljava/lang/String;Z)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/FolderLock;->applyFolderNameChanged()V

    goto :goto_2
.end method

.method public unlockFolder(Lcom/android/launcher2/BaseItem;)V
    .locals 4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "home_only_locked_items"

    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher2/FolderLock;->removeLockedRecords(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    check-cast p1, Lcom/android/launcher2/FolderItem;

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderLock;->unlockAppsInFolder(Lcom/android/launcher2/FolderItem;)V

    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_2

    const-string v0, "menu_locked_items"

    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher2/FolderLock;->removeLockedRecords(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_0

    const-string v0, "home_locked_items"

    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher2/FolderLock;->removeLockedRecords(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public unregisterListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/FolderLock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/FolderLock;->mReceiver:Lcom/android/launcher2/FolderLock$ScreenBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
