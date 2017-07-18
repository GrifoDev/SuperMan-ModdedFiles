.class Lcom/android/launcher2/LauncherModel$LoaderTask$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->bindPageDoing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$isStart:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$2;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-boolean p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$2;->val$isStart:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$2;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$200(Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$2;->val$isStart:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeBegin()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeEnd()V

    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/customer/PostPosition;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/customer/PostPosition;->runHomeAdd(Z)V

    goto :goto_0
.end method
