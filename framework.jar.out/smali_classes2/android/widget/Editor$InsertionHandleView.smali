.class Landroid/widget/Editor$InsertionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionHandleView"
.end annotation


# static fields
.field private static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field private static final RECENT_CUT_COPY_DURATION:I = 0x3a98


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    const v4, 0x1020327

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView;)V

    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mCursorCount:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v2, v3

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$InsertionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2, v0, v1}, Landroid/widget/Editor;->-wrap15(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    return v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v2

    return v2
.end method

.method protected getCursorOffset()I
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mCursorCount:I

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v2, v3

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected hideAfterDelay()V
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$InsertionHandleView$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$2;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    return-void
.end method

.method onHandleMoved()V
    .locals 0

    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->offsetHasBeenChanged()Z

    move-result v6

    if-nez v6, :cond_3

    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    sub-float v0, v6, v7

    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float v1, v6, v7

    mul-float v6, v0, v0

    mul-float v7, v1, v1

    add-float v2, v6, v7

    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    mul-int v6, v4, v4

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_1

    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_1
    :goto_1
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->startInsertionActionMode()V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected removeHiderCallback()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public show()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    invoke-super {p0}, Landroid/widget/Editor$HandleView;->show()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    sub-long v0, v2, v4

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get1(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)I

    move-result v2

    if-eq v2, v6, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)I

    move-result v2

    if-ne v2, v7, :cond_4

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get1(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)I

    move-result v2

    if-eq v2, v6, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get11(Landroid/widget/Editor;)I

    move-result v2

    if-eq v2, v7, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-wrap6(Landroid/widget/Editor;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x3a98

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get1(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    new-instance v3, Landroid/widget/Editor$InsertionHandleView$1;

    invoke-direct {v3, p0}, Landroid/widget/Editor$InsertionHandleView$1;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    invoke-static {v2, v3}, Landroid/widget/Editor;->-set1(Landroid/widget/Editor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_2
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get1(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-wrap6(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 12

    iget v10, p0, Landroid/widget/Editor$InsertionHandleView;->mLastParentYOnScreen:I

    int-to-float v10, v10

    sub-float v10, p2, v10

    iget v11, p0, Landroid/widget/Editor$InsertionHandleView;->mFirstParentY:I

    int-to-float v11, v11

    add-float v3, v10, v11

    iget-object v10, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_3

    iget v10, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    iget-object v10, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v10

    iput v10, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    :cond_0
    iget-object v10, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget v11, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    invoke-static {v10, v4, v11, v3}, Landroid/widget/Editor;->-wrap16(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v0

    invoke-virtual {p0, v4, v0, p1}, Landroid/widget/Editor$InsertionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v5

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    iget v10, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v4, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    iget-object v10, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v10

    iget-object v11, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v11

    add-int v7, v10, v11

    sub-int v10, v1, v6

    sub-int v2, v10, v7

    iput v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    iget v10, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchToWindowOffsetX:F

    add-float/2addr v10, p1

    iget v11, p0, Landroid/widget/Editor$InsertionHandleView;->mHotspotX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getHorizontalOffset()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Landroid/widget/Editor$InsertionHandleView;->mHorizontalOffset:F

    sub-float/2addr v10, v11

    iget v11, p0, Landroid/widget/Editor$InsertionHandleView;->mLastParentXOnScreen:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Landroid/widget/Editor$InsertionHandleView;->mLastParentX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    float-to-int v8, v10

    iget-boolean v10, p0, Landroid/widget/Editor$InsertionHandleView;->mIsVerticalScrolled:Z

    if-eqz v10, :cond_2

    sub-int v9, v1, v2

    :goto_0
    invoke-virtual {p0, v8, v9}, Landroid/widget/Editor$InsertionHandleView;->updatePositionDuringDragging(II)V

    :goto_1
    const/4 v10, 0x0

    invoke-virtual {p0, v5, v10}, Landroid/widget/Editor$InsertionHandleView;->positionAtCursorOffset(IZ)V

    iget-object v10, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-wrap21(Landroid/widget/Editor;)V

    :cond_1
    return-void

    :cond_2
    iget v10, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchToWindowOffsetY:F

    add-float/2addr v10, p2

    iget v11, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchOffsetY:F

    sub-float/2addr v10, v11

    iget v11, p0, Landroid/widget/Editor$InsertionHandleView;->mVerticalScrolledYOffset:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Landroid/widget/Editor$InsertionHandleView;->mVerticalOffset:F

    sub-float/2addr v10, v11

    float-to-int v9, v10

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public updateSelection(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    return-void
.end method
