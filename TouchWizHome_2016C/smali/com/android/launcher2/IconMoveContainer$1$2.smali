.class Lcom/android/launcher2/IconMoveContainer$1$2;
.super Ljava/lang/Object;
.source "IconMoveContainer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/IconMoveContainer$1;->onViewAdded(Landroid/view/View;Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/IconMoveContainer$1;


# direct methods
.method constructor <init>(Lcom/android/launcher2/IconMoveContainer$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/IconMoveContainer$1$2;->this$1:Lcom/android/launcher2/IconMoveContainer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_1

    move v1, v3

    :goto_0
    packed-switch p2, :pswitch_data_0

    :cond_0
    move v3, v4

    :goto_1
    return v3

    :cond_1
    move v1, v4

    goto :goto_0

    :pswitch_0
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/IconMoveContainer$1$2;->this$1:Lcom/android/launcher2/IconMoveContainer$1;

    iget-object v5, v5, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v5}, Lcom/android/launcher2/IconMoveContainer;->access$400(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/IconMoveContainer$1$2;->this$1:Lcom/android/launcher2/IconMoveContainer$1;

    iget-object v5, v5, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v5}, Lcom/android/launcher2/IconMoveContainer;->access$400(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    iget-object v2, v5, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->playSoundEffect(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method
