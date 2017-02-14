.class public Lcom/android/launcher2/AppWidgetBinder;
.super Ljava/lang/Object;
.source "AppWidgetBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AppWidgetBinder$Callback;
    }
.end annotation


# static fields
.field private static final REQUEST_APPWIDGET_BIND:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AppWidgetBinder"


# instance fields
.field private mHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mIsNeedToPermission:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mManager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;Landroid/appwidget/AppWidgetManager;Lcom/android/launcher2/LauncherAppWidgetHost;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetBinder;->mIsNeedToPermission:Z

    iput-object p1, p0, Lcom/android/launcher2/AppWidgetBinder;->mLauncher:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/AppWidgetBinder;->mManager:Landroid/appwidget/AppWidgetManager;

    iput-object p3, p0, Lcom/android/launcher2/AppWidgetBinder;->mHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AppWidgetBinder;Lcom/android/launcher2/AppWidgetBinder$Callback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AppWidgetBinder;->onBindSuccessful(Lcom/android/launcher2/AppWidgetBinder$Callback;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/AppWidgetBinder;Lcom/android/launcher2/AppWidgetBinder$Callback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AppWidgetBinder;->onBindFailed(Lcom/android/launcher2/AppWidgetBinder$Callback;I)V

    return-void
.end method

.method private onBindFailed(Lcom/android/launcher2/AppWidgetBinder$Callback;I)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher2/AppWidgetBinder$Callback;->onBindFail()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/AppWidgetBinder;->mHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1, p2}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AppWidgetBinder"

    const-string v2, "Problem delete appWidgetId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onBindSuccessful(Lcom/android/launcher2/AppWidgetBinder$Callback;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/android/launcher2/AppWidgetBinder$Callback;->onBindSuccess(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public allocateBindNew(Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/ComponentName;Lcom/android/launcher2/AppWidgetBinder$Callback;)V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetBinder;->mHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetBinder;->mManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p1}, Lcom/android/launcher2/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, p2, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/AppWidgetBinder;->mIsNeedToPermission:Z

    invoke-direct {p0, p3, v1}, Lcom/android/launcher2/AppWidgetBinder;->onBindSuccessful(Lcom/android/launcher2/AppWidgetBinder$Callback;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/AppWidgetBinder;->mIsNeedToPermission:Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "appWidgetProvider"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetBinder;->mLauncher:Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetBinder;->mLauncher:Lcom/android/launcher2/Launcher;

    const/16 v3, 0x64

    new-instance v4, Lcom/android/launcher2/AppWidgetBinder$1;

    invoke-direct {v4, p0, p3, v1}, Lcom/android/launcher2/AppWidgetBinder$1;-><init>(Lcom/android/launcher2/AppWidgetBinder;Lcom/android/launcher2/AppWidgetBinder$Callback;I)V

    invoke-static {v2, v0, v3, v4}, Lcom/android/launcher2/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;ILcom/android/launcher2/Launcher$ActivityResultCallback;)V

    goto :goto_0

    :cond_1
    const-string v2, "AppWidgetBinder"

    const-string v3, "AppWidgetBinder.allocateBindNew: launcher == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNeedToPermission()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AppWidgetBinder;->mIsNeedToPermission:Z

    return v0
.end method

.method public setNeedToPermission(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AppWidgetBinder;->mIsNeedToPermission:Z

    return-void
.end method
