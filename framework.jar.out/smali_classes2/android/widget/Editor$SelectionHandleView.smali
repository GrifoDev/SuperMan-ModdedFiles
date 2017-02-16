.class Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 8
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I
    .param p5, "handleType"    # I

    .prologue
    const/4 v7, 0x0

    .line 5517
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5519
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView;)V

    .line 5504
    iput-boolean v7, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 5510
    iput-boolean v7, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 5515
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    .line 5520
    iput p5, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    .line 5521
    invoke-static {p1}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 5522
    .local v6, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    .line 5518
    return-void
.end method

.method private getHorizontal(Landroid/text/Layout;IZ)F
    .locals 6
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "startHandle"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5772
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 5773
    .local v2, "line":I
    if-eqz p3, :cond_1

    move v3, p2

    .line 5774
    .local v3, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 5775
    .local v0, "isRtlChar":Z
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    .line 5776
    .local v1, "isRtlParagraph":Z
    :cond_0
    if-ne v0, v1, :cond_2

    .line 5777
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 5776
    :goto_1
    return v4

    .line 5773
    .end local v0    # "isRtlChar":Z
    .end local v1    # "isRtlParagraph":Z
    .end local v3    # "offsetToCheck":I
    :cond_1
    add-int/lit8 v4, p2, -0x1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 5777
    .restart local v0    # "isRtlChar":Z
    .restart local v1    # "isRtlParagraph":Z
    .restart local v3    # "offsetToCheck":I
    :cond_2
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v4

    goto :goto_1
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 5
    .param p1, "offset"    # I

    .prologue
    const/4 v3, 0x0

    .line 5691
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 5692
    .local v0, "anotherHandleOffset":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_2

    if-lt p1, v0, :cond_2

    .line 5694
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5695
    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 5697
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_0

    if-ne p1, v0, :cond_0

    .line 5698
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v4, v0, v2}, Landroid/widget/Editor;->-wrap17(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 5729
    .end local v1    # "layout":Landroid/text/Layout;
    :cond_0
    invoke-virtual {p0, p1, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZ)V

    .line 5689
    return-void

    .line 5691
    .end local v0    # "anotherHandleOffset":I
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .restart local v0    # "anotherHandleOffset":I
    goto :goto_0

    .line 5693
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-nez v2, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_1

    .line 5698
    .restart local v1    # "layout":Landroid/text/Layout;
    :cond_3
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .prologue
    const/4 v5, 0x0

    .line 5733
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5735
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v3

    if-ne p2, v3, :cond_1

    .line 5736
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 5737
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 5736
    sub-int v2, v3, v4

    .line 5738
    .local v2, "rightEdge":I
    int-to-float v3, v2

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 5743
    .end local v2    # "rightEdge":I
    .local v1, "nearEdge":Z
    :goto_0
    return v1

    .line 5738
    .end local v1    # "nearEdge":Z
    .restart local v2    # "rightEdge":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "nearEdge":Z
    goto :goto_0

    .line 5740
    .end local v1    # "nearEdge":Z
    .end local v2    # "rightEdge":I
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int v0, v3, v4

    .line 5741
    .local v0, "leftEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    const/4 v1, 0x1

    .restart local v1    # "nearEdge":Z
    goto :goto_0

    .end local v1    # "nearEdge":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "nearEdge":Z
    goto :goto_0
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 5545
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    .line 5768
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 5540
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 5531
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p2, v0, :cond_0

    .line 5532
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0

    .line 5534
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 12
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 5782
    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v3

    .line 5783
    .local v3, "localX":F
    invoke-virtual {p1, p2, v3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v6

    .line 5784
    .local v6, "primaryOffset":I
    invoke-virtual {p1, v6}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 5785
    return v6

    .line 5787
    :cond_0
    invoke-virtual {p1, p2, v3, v9}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v8

    .line 5788
    .local v8, "secondaryOffset":I
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v0

    .line 5789
    .local v0, "currentOffset":I
    sub-int v10, v6, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 5790
    .local v5, "primaryDiff":I
    sub-int v10, v8, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 5791
    .local v7, "secondaryDiff":I
    if-ge v5, v7, :cond_1

    .line 5792
    return v6

    .line 5793
    :cond_1
    if-le v5, v7, :cond_2

    .line 5794
    return v8

    .line 5796
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_3

    move v4, v0

    .line 5798
    .local v4, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    .line 5799
    .local v1, "isRtlChar":Z
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    .line 5800
    .local v2, "isRtlParagraph":Z
    :goto_1
    if-ne v1, v2, :cond_5

    .end local v6    # "primaryOffset":I
    :goto_2
    return v6

    .line 5797
    .end local v1    # "isRtlChar":Z
    .end local v2    # "isRtlParagraph":Z
    .end local v4    # "offsetToCheck":I
    .restart local v6    # "primaryOffset":I
    :cond_3
    add-int/lit8 v10, v0, -0x1

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    .restart local v1    # "isRtlChar":Z
    .restart local v4    # "offsetToCheck":I
    :cond_4
    move v2, v9

    .line 5799
    goto :goto_1

    .restart local v2    # "isRtlParagraph":Z
    :cond_5
    move v6, v8

    .line 5800
    goto :goto_2
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 3
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    .line 5762
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, p2

    .line 5763
    .local v0, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    return v1

    .line 5762
    .end local v0    # "offsetToCheck":I
    :cond_0
    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected isHandleViewScreenOut()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5748
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5749
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v4

    .line 5750
    .local v4, "positionListener":Landroid/widget/Editor$PositionListener;
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    .line 5751
    .local v1, "iconSize":I
    iget v7, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v8

    add-int v3, v7, v8

    .line 5752
    .local v3, "mSeletionEdgePosition":I
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    if-ne v7, v8, :cond_0

    const/4 v2, 0x1

    .line 5753
    .local v2, "isRtlDrawable":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5754
    if-nez v2, :cond_2

    sub-int v7, v3, v1

    if-gez v7, :cond_1

    :goto_1
    return v5

    .line 5752
    .end local v2    # "isRtlDrawable":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "isRtlDrawable":Z
    goto :goto_0

    :cond_1
    move v5, v6

    .line 5754
    goto :goto_1

    :cond_2
    add-int v7, v3, v1

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v7, v8, :cond_1

    goto :goto_1

    .line 5756
    :cond_3
    if-nez v2, :cond_5

    add-int v7, v3, v1

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v7, v8, :cond_4

    :goto_2
    return v5

    :cond_4
    move v5, v6

    goto :goto_2

    :cond_5
    sub-int v7, v3, v1

    if-gez v7, :cond_4

    goto :goto_2
.end method

.method public isStartHandle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5526
    iget v1, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5647
    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v10, v10, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v10, :cond_0

    .line 5648
    const/4 v10, 0x1

    return v10

    .line 5650
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 5652
    .local v5, "offset":I
    :goto_0
    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierView;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 5654
    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v0

    .line 5655
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 5657
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 5658
    .local v2, "lineBottom":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 5659
    .local v4, "lineTop":I
    sub-int v3, v2, v4

    .line 5661
    .local v3, "lineHeight":I
    const/4 v10, 0x2

    new-array v8, v10, [I

    .line 5662
    .local v8, "positionOnScreen":[I
    const/4 v10, 0x2

    new-array v7, v10, [I

    .line 5663
    .local v7, "positionInWindow":[I
    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5664
    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5666
    const/4 v10, 0x1

    aget v10, v8, v10

    const/4 v11, 0x1

    aget v11, v7, v11

    sub-int v6, v10, v11

    .line 5668
    .local v6, "offsetY":I
    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierView;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    const/4 v13, 0x1

    aget v13, v8, v13

    iget-object v14, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v13, v2

    div-int/lit8 v14, v3, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/Editor$MagnifierView;->handleTouchEvent(IFF)V

    .line 5670
    .end local v0    # "layout":Landroid/text/Layout;
    .end local v1    # "line":I
    .end local v2    # "lineBottom":I
    .end local v3    # "lineHeight":I
    .end local v4    # "lineTop":I
    .end local v6    # "offsetY":I
    .end local v7    # "positionInWindow":[I
    .end local v8    # "positionOnScreen":[I
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 5671
    .local v9, "superResult":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 5686
    :goto_1
    return v9

    .line 5650
    .end local v5    # "offset":I
    .end local v9    # "superResult":Z
    :cond_2
    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 5674
    .restart local v9    # "superResult":Z
    :pswitch_0
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5675
    const/high16 v10, -0x40800000    # -1.0f

    iput v10, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    goto :goto_1

    .line 5679
    :pswitch_1
    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroid/widget/Editor;->-set1(Landroid/widget/Editor;Z)Z

    goto :goto_1

    .line 5683
    :pswitch_2
    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/widget/Editor;->-set1(Landroid/widget/Editor;Z)Z

    goto :goto_1

    .line 5671
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z

    .prologue
    const/4 v0, 0x0

    .line 5641
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 5642
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-wrap1(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 5640
    return-void

    .line 5642
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 17
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 5565
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    .line 5566
    .local v8, "layout":Landroid/text/Layout;
    if-nez v8, :cond_0

    .line 5569
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 5570
    return-void

    .line 5573
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 5574
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 5577
    :cond_1
    const/4 v11, 0x0

    .line 5579
    .local v11, "positionCursor":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 5580
    .local v2, "anotherHandleOffset":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v15, v8, v0, v1}, Landroid/widget/Editor;->-wrap16(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v4

    .line 5581
    .local v4, "currLine":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v8, v4, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v6

    .line 5583
    .local v6, "initialOffset":I
    move v10, v6

    .line 5584
    .local v10, "offset":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15, v6}, Landroid/widget/Editor;->-wrap18(Landroid/widget/Editor;I)I

    move-result v13

    .line 5585
    .local v13, "wordEnd":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15, v6}, Landroid/widget/Editor;->-wrap19(Landroid/widget/Editor;I)I

    move-result v14

    .line 5587
    .local v14, "wordStart":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v15, v15, v16

    if-nez v15, :cond_2

    .line 5588
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 5591
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v5

    .line 5592
    .local v5, "currentOffset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v12

    .line 5593
    .local v12, "rtlAtCurrentOffset":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v6}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v3

    .line 5594
    .local v3, "atRtl":Z
    invoke-virtual {v8, v6}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v7

    .line 5599
    .local v7, "isLvlBoundary":Z
    if-nez v7, :cond_4

    if-eqz v12, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    if-nez v12, :cond_6

    if-eqz v3, :cond_6

    .line 5602
    :cond_4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 5603
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5604
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 5605
    return-void

    .line 5579
    .end local v2    # "anotherHandleOffset":I
    .end local v3    # "atRtl":Z
    .end local v4    # "currLine":I
    .end local v5    # "currentOffset":I
    .end local v6    # "initialOffset":I
    .end local v7    # "isLvlBoundary":Z
    .end local v10    # "offset":I
    .end local v12    # "rtlAtCurrentOffset":Z
    .end local v13    # "wordEnd":I
    .end local v14    # "wordStart":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .restart local v2    # "anotherHandleOffset":I
    goto :goto_0

    .line 5606
    .restart local v3    # "atRtl":Z
    .restart local v4    # "currLine":I
    .restart local v5    # "currentOffset":I
    .restart local v6    # "initialOffset":I
    .restart local v7    # "isLvlBoundary":Z
    .restart local v10    # "offset":I
    .restart local v12    # "rtlAtCurrentOffset":Z
    .restart local v13    # "wordEnd":I
    .restart local v14    # "wordStart":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    if-eqz v15, :cond_7

    if-eqz v7, :cond_9

    .line 5615
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 5616
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 5617
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v15

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getScrollX()I

    move-result v15

    if-eqz v15, :cond_a

    .line 5620
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v15

    if-eqz v15, :cond_d

    if-ge v6, v5, :cond_d

    .line 5625
    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5626
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v15

    if-ne v3, v15, :cond_e

    .line 5627
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    invoke-virtual {v8, v15}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v9

    .line 5629
    .local v9, "nextOffset":I
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 5630
    return-void

    .line 5609
    .end local v9    # "nextOffset":I
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 5610
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5611
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 5612
    return-void

    .line 5618
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v15

    if-nez v15, :cond_b

    .line 5619
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v16

    if-eqz v3, :cond_c

    const/4 v15, -0x1

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v15

    .line 5616
    if-nez v15, :cond_8

    .line 5634
    :cond_b
    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 5635
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 5636
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 5564
    return-void

    .line 5619
    :cond_c
    const/4 v15, 0x1

    goto :goto_3

    .line 5621
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v15

    if-nez v15, :cond_b

    if-le v6, v5, :cond_b

    goto :goto_1

    .line 5628
    :cond_e
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    invoke-virtual {v8, v15}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v9

    goto :goto_2
.end method

.method protected updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 5550
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5551
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 5552
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 5551
    invoke-static {v0, p1, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 5557
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 5558
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 5559
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 5549
    :cond_0
    return-void

    .line 5554
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 5555
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 5554
    invoke-static {v0, v1, p1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method
