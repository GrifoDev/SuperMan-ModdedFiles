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
.field private final mHandleType:I

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 7

    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    iput p5, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    invoke-static {p1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    return-void
.end method

.method private getHorizontal(Landroid/text/Layout;IZ)F
    .locals 6

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    if-eqz p3, :cond_0

    move v3, p2

    :goto_0
    invoke-virtual {p1, v3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-ne v0, v1, :cond_2

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    :goto_2
    return v4

    :cond_0
    add-int/lit8 v4, p2, -0x1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v4

    goto :goto_2
.end method

.method private isStartHandle()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 4

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_2

    if-lt p1, v0, :cond_2

    :goto_1
    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ne p1, v0, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Editor;->-wrap17(Landroid/widget/Editor;IZ)I

    move-result p1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZ)V

    return-void

    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-nez v2, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_1
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v3

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    int-to-float v3, v2

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int v0, v3, v4

    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

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

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 11

    const/4 v10, 0x0

    iget-object v9, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v3

    const/4 v9, 0x1

    invoke-virtual {p1, p2, v3, v9}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v9

    if-nez v9, :cond_0

    return v6

    :cond_0
    invoke-virtual {p1, p2, v3, v10}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v0

    sub-int v9, v6, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v9, v8, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v5, v7, :cond_1

    return v6

    :cond_1
    if-le v5, v7, :cond_2

    return v8

    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v9

    if-eqz v9, :cond_3

    move v4, v0

    :goto_0
    invoke-virtual {p1, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    const/4 v2, 0x1

    :goto_1
    if-ne v1, v2, :cond_5

    :goto_2
    return v6

    :cond_3
    add-int/lit8 v9, v0, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_2
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 3

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, p2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    return v1

    :cond_0
    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected isScreenOut(IZ)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v4

    if-ne v4, p2, :cond_1

    move v3, p1

    add-int v1, p1, v2

    :goto_0
    if-ltz v3, :cond_0

    if-gez v1, :cond_2

    :cond_0
    const/4 v4, 0x1

    return v4

    :cond_1
    sub-int v3, p1, v2

    move v1, p1

    goto :goto_0

    :cond_2
    if-gt v3, v0, :cond_0

    if-gt v1, v0, :cond_0

    return v5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    :cond_0
    return v0
.end method

.method public updatePosition(FF)V
    .locals 19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mLastParentYOnScreen:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, p2, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mFirstParentY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v7, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v9, v1, v7}, Landroid/widget/Editor;->-wrap16(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v9, v3, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    move/from16 v17, v0

    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v17, v17, v18

    if-nez v17, :cond_2

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v5}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v2

    invoke-virtual {v9, v11}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v13, :cond_3

    xor-int/lit8 v17, v2, 0x1

    if-nez v17, :cond_4

    :cond_3
    if-nez v13, :cond_5

    if-eqz v2, :cond_5

    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    xor-int/lit8 v17, v8, 0x1

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    return-void

    :cond_6
    invoke-virtual {v9, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v18

    add-int v14, v17, v18

    sub-int v17, v4, v12

    sub-int v6, v17, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchToWindowOffsetX:F

    move/from16 v17, v0

    add-float v17, v17, p1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mHotspotX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontalOffset()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mHorizontalOffset:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mLastParentXOnScreen:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mLastParentX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v15, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionHandleView;->mIsVerticalScrolled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    sub-int v16, v4, v6

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/widget/Editor$SelectionHandleView;->updatePositionDuringDragging(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getScrollX()I

    move-result v17

    if-eqz v17, :cond_9

    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v17

    if-eqz v17, :cond_c

    if-ge v11, v5, :cond_c

    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v17

    move/from16 v0, v17

    if-ne v2, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v10

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    return-void

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchToWindowOffsetY:F

    move/from16 v17, v0

    add-float v17, v17, p2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchOffsetY:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mVerticalScrolledYOffset:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mVerticalOffset:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_0

    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    if-eqz v2, :cond_b

    const/16 v17, -0x1

    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v17

    if-nez v17, :cond_7

    :cond_a
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    return-void

    :cond_b
    const/16 v17, 0x1

    goto :goto_3

    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v17

    if-nez v17, :cond_a

    if-le v11, v5, :cond_a

    goto :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v10

    goto :goto_2
.end method

.method protected updateSelection(I)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->updateDrawable()V

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap21(Landroid/widget/Editor;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method
