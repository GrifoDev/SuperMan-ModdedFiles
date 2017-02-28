.class Lcom/android/launcher2/LauncherModel$30;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->loadAllAppsWithoutBinding(Lcom/android/launcher2/Folder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$folder:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$30;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$30;->val$folder:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$30;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v1, v1, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$30;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppLoader;->loadAllItems(I)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$30;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$30;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v2, Lcom/android/launcher2/LauncherModel$30$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/LauncherModel$30$1;-><init>(Lcom/android/launcher2/LauncherModel$30;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
