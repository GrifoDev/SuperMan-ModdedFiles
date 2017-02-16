.class Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .prologue
    .line 9188
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 9196
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 9216
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 9201
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9203
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 9204
    const/4 v0, 0x1

    return v0

    .line 9206
    :cond_0
    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x1

    .line 9221
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 9222
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 9225
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->clearChoices()V

    .line 9227
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iput-boolean v2, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 9228
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    .line 9229
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 9231
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 9220
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 9237
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 9240
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-get31(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9236
    :cond_0
    :goto_0
    return-void

    .line 9241
    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 9211
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "wrapped"    # Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    .prologue
    .line 9192
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    .line 9191
    return-void
.end method
