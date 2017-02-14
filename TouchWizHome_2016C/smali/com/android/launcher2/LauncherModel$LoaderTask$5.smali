.class Lcom/android/launcher2/LauncherModel$LoaderTask$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->removeShortcutHomeOnly(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$deleteItem:Lcom/android/launcher2/HomeItem;

.field final synthetic val$removeFolder:Lcom/android/launcher2/HomeFolderItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$5;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$5;->val$removeFolder:Lcom/android/launcher2/HomeFolderItem;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$5;->val$deleteItem:Lcom/android/launcher2/HomeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$5;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$5;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$5;->val$removeFolder:Lcom/android/launcher2/HomeFolderItem;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$5;->val$deleteItem:Lcom/android/launcher2/HomeItem;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeRemoveCurrentItem(Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V

    :cond_0
    return-void
.end method
