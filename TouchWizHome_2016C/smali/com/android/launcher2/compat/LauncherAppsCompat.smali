.class public abstract Lcom/android/launcher2/compat/LauncherAppsCompat;
.super Ljava/lang/Object;
.source "LauncherAppsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    }
.end annotation


# static fields
.field public static final ACTION_MANAGED_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_ADDED"

.field public static final ACTION_MANAGED_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_REMOVED"

.field private static sInstance:Lcom/android/launcher2/compat/LauncherAppsCompat;

.field private static sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/compat/LauncherAppsCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;
    .locals 3

    sget-object v1, Lcom/android/launcher2/compat/LauncherAppsCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher2/compat/LauncherAppsCompat;->sInstance:Lcom/android/launcher2/compat/LauncherAppsCompat;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/launcher2/compat/LauncherAppsCompatVL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher2/compat/LauncherAppsCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher2/compat/LauncherAppsCompat;->sInstance:Lcom/android/launcher2/compat/LauncherAppsCompat;

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/launcher2/compat/LauncherAppsCompat;->sInstance:Lcom/android/launcher2/compat/LauncherAppsCompat;

    monitor-exit v1

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/launcher2/compat/LauncherAppsCompatV16;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher2/compat/LauncherAppsCompatV16;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher2/compat/LauncherAppsCompat;->sInstance:Lcom/android/launcher2/compat/LauncherAppsCompat;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract addOnAppsChangedCallback(Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
.end method

.method public abstract getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Z
.end method

.method public isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Z
.end method

.method public abstract removeOnAppsChangedCallback(Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
.end method

.method public abstract resolveActivity(Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;
.end method

.method public abstract startActivityForProfile(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/graphics/Rect;Landroid/os/Bundle;)V
.end method
