.class final Lcom/android/launcher2/LauncherService$1;
.super Ljava/lang/Object;
.source "LauncherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherService;->RestoreHomescreenLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Lcom/android/launcher2/LauncherApplication;

.field final synthetic val$isCurrentDBHomeOnlyMode:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherService$1;->val$app:Lcom/android/launcher2/LauncherApplication;

    iput-boolean p2, p0, Lcom/android/launcher2/LauncherService$1;->val$isCurrentDBHomeOnlyMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/launcher2/HomeScreenSettingsActivity;->instance()Lcom/android/launcher2/HomeScreenSettingsActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/HomeScreenSettingsActivity;->instance()Lcom/android/launcher2/HomeScreenSettingsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->finish()V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherService$1;->val$app:Lcom/android/launcher2/LauncherApplication;

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherService$1;->val$isCurrentDBHomeOnlyMode:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherApplication;->setScreenBriefingCountChangeMode(Landroid/content/Context;Z)I

    iget-object v0, p0, Lcom/android/launcher2/LauncherService$1;->val$app:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/LauncherService$1;->val$app:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherService$1;->val$isCurrentDBHomeOnlyMode:Z

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/LauncherModel;->resetLoadedState(ZZ)V

    sput-boolean v1, Lcom/android/launcher2/Launcher;->mIsRestartModeChange:Z

    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "LauncherService"

    const-string v1, "Launcher recreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->recreate()V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v0, "LauncherService"

    const-string v1, "LauncherActivity.instance() is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
