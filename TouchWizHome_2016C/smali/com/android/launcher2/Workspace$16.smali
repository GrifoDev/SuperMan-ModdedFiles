.class Lcom/android/launcher2/Workspace$16;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->openFolderFromQuickOption(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$16;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace$16;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace$16;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace$16;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace$16;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->showSearchAppList()V

    goto :goto_0
.end method
