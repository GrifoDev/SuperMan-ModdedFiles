.class Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;

.field final synthetic val$origCallbacks:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;->this$1:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "if homeOnlyMode, no need next steps."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;->this$1:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v0}, Lcom/android/launcher2/PkgResCache;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;->this$1:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1;-><init>(Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuAppLoader;->refreshAllApps(ILcom/android/launcher2/MenuAppLoader$BindListener;)V

    goto :goto_0
.end method
