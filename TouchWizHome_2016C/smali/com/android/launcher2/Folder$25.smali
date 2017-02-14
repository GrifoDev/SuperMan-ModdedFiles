.class Lcom/android/launcher2/Folder$25;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->repositionOpenFolder(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;

.field final synthetic val$showAddButton:Z

.field final synthetic val$withResize:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$25;->this$0:Lcom/android/launcher2/Folder;

    iput-boolean p2, p0, Lcom/android/launcher2/Folder$25;->val$withResize:Z

    iput-boolean p3, p0, Lcom/android/launcher2/Folder$25;->val$showAddButton:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Folder$25;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher2/Folder$25;->val$withResize:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder$25;->this$0:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder$25;->this$0:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/CellLayoutNoGap;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/launcher2/Folder$25;->this$0:Lcom/android/launcher2/Folder;

    # invokes: Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V
    invoke-static {v1, v0}, Lcom/android/launcher2/Folder;->access$2200(Lcom/android/launcher2/Folder;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Folder$25;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    iget-boolean v1, p0, Lcom/android/launcher2/Folder$25;->val$showAddButton:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Folder$25;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->showAddFolderItem()V

    :cond_1
    return-void
.end method
