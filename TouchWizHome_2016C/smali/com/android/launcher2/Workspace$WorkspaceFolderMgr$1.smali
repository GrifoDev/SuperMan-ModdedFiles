.class Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIconView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

.field final synthetic val$this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;Lcom/android/launcher2/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;->this$1:Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;->val$this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;->this$1:Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;->this$1:Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    :cond_1
    return-void
.end method
