.class Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$4;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->onFolderOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

    iget-object v1, v1, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
