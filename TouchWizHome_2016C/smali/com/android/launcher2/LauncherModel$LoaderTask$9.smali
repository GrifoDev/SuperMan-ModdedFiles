.class Lcom/android/launcher2/LauncherModel$LoaderTask$9;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$requestRefresh:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-boolean p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->val$requestRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "step 2.5: if homeOnlyMode, no need next steps."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "step : loading all apps in another thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->val$requestRefresh:Z

    # invokes: Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindAllApps(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$800(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)V

    goto :goto_0
.end method
