.class Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1$1;->this$3:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->onModelRefreshed()V

    const-string v1, "Launcher.Model"

    const-string v2, "IconTitleRefreshTask, MenuAppModel.onModelRefreshed called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1$1;->this$3:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1;->this$2:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;->this$1:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1$1;->this$3:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1;->this$2:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAppsLoaded()V

    const-string v1, "Launcher.Model"

    const-string v2, "IconTitleRefreshTask, bindAppsLoaded called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
