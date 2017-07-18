.class Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$StateEdit;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$StateEdit;

.field final synthetic val$folder:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$StateEdit;Lcom/android/launcher2/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateEdit;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->val$folder:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateEdit;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->val$folder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateEdit;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateEdit;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->showSearchAppList()V

    goto :goto_0
.end method
