.class Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$1;
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

.field final synthetic val$refreshItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$1;->this$1:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$1;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$1;->val$refreshItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$1;->this$1:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$1;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-boolean v1, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "Launcher.Model"

    const-string v2, "IconTitleRefreshTask, bindRefreshItems!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$1;->val$refreshItems:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindRefreshItems(Ljava/util/List;)V

    :cond_1
    return-void
.end method
