.class Lcom/android/launcher2/IconMoveContainer$4;
.super Ljava/lang/Object;
.source "IconMoveContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/IconMoveContainer;->loadItem(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/IconMoveContainer;

.field final synthetic val$focusV:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/IconMoveContainer;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/IconMoveContainer$4;->this$0:Lcom/android/launcher2/IconMoveContainer;

    iput-object p2, p0, Lcom/android/launcher2/IconMoveContainer$4;->val$focusV:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer$4;->val$focusV:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer$4;->val$focusV:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer$4;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-static {v1}, Lcom/android/launcher2/IconMoveContainer;->access$400(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer$4;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-static {v1}, Lcom/android/launcher2/IconMoveContainer;->access$400(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->requestFocus()Z

    goto :goto_0
.end method
