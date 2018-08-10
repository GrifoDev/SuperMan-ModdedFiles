.class Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;
.super Landroid/widget/MultiSelectPopupWindow$HandleView;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiSelectPopupWindow$HandleView;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHandleType:I

    return-void
.end method

.method private isHandleViewScreenOut()Z
    .locals 5

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->-wrap0(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mPositionX:I

    invoke-virtual {v2}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->getPositionX()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHotspotX:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->getHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    iput-boolean v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isHandleViewScreenOut()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    :cond_0
    iget-boolean v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->updateDrawable()V

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHotspotX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mPositionX:I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mPositionX:I

    return v4

    :cond_1
    return v3
.end method

.method public getCurrentCursorOffset()I
    .locals 3

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "MultiSelectPopupWindow"

    const-string/jumbo v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    return v1
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected positionAtCursorOffset(IZZ)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->positionAtCursorOffset(IZZ)V

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mIsDragging:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->calculateForSwitchingCursor()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mPositionHasChanged:Z

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->invalidate()V

    :cond_0
    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isHandleViewScreenOut()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected updateDrawable()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->getCurrentCursorOffset()I

    move-result v1

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    iget-boolean v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    if-eqz v3, :cond_0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHotspotX:I

    invoke-virtual {p0, v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->getHorizontalGravity(Z)I

    move-result v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHorizontalGravity:I

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->recalHandleView()V

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mEndRange:I

    if-le v0, v3, :cond_1

    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mEndRange:I

    :cond_1
    invoke-virtual {p0, v0, v4, v4}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->positionAtCursorOffset(IZZ)V

    return-void
.end method

.method public updateSelection(I)V
    .locals 3

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "MultiSelectPopupWindow"

    const-string/jumbo v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->updateDrawable()V

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get4()Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get4()Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    return-void
.end method
