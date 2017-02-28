.class Lcom/android/launcher2/LauncherModel$LoaderTask$21;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$item:Lcom/android/launcher2/HomeItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/HomeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$21;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$21;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$21;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    # invokes: Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$200(Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$21;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeRemovePrvItem(Lcom/android/launcher2/HomeItem;)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$21;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeShortcut(Lcom/android/launcher2/HomeItem;)V

    :cond_0
    return-void
.end method
