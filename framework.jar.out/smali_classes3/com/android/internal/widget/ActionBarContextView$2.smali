.class Lcom/android/internal/widget/ActionBarContextView$2;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 15

    iget-object v13, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v13, 0x2

    new-array v8, v13, [I

    iget-object v13, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13, v8}, Lcom/android/internal/widget/ActionBarContextView;->getLocationOnScreen([I)V

    iget-object v13, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarContextView;->getWidth()I

    move-result v9

    iget-object v13, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarContextView;->getHeight()I

    move-result v3

    iget-object v13, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingStart()I

    move-result v6

    iget-object v13, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingEnd()I

    move-result v5

    const/4 v13, 0x2

    new-array v10, v13, [I

    iget-object v13, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13, v10}, Lcom/android/internal/widget/ActionBarContextView;->getLocationInWindow([I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v13, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13, v2}, Lcom/android/internal/widget/ActionBarContextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    iget-object v13, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/4 v13, 0x1

    aget v13, v10, v13

    add-int v12, v13, v3

    iget-object v13, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutDirection()I

    move-result v13

    if-nez v13, :cond_0

    iget v13, v2, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    aget v14, v10, v14

    add-int/2addr v14, v9

    sub-int/2addr v13, v14

    sub-int v14, v9, v6

    sub-int/2addr v14, v5

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    add-int/2addr v13, v5

    add-int/lit8 v11, v13, 0x0

    :goto_0
    iget-object v13, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13, v11, v12}, Lcom/android/internal/widget/ActionBarContextView;->setTooltipPosition(II)V

    const/4 v13, 0x0

    return v13

    :cond_0
    const/4 v13, 0x0

    aget v13, v10, v13

    add-int/2addr v13, v9

    sub-int v14, v9, v6

    sub-int/2addr v14, v5

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    sub-int v11, v13, v6

    goto :goto_0
.end method
