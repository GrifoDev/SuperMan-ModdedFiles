.class public Landroid/widget/DropDownListView;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DropDownListView$ResolveHoverRunnable;
    }
.end annotation


# instance fields
.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field mIsAutoCompleteTextPopup:Z

.field private mListSelectionHidden:Z

.field private mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

.field private mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;


# direct methods
.method static synthetic -set0(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)Landroid/widget/DropDownListView$ResolveHoverRunnable;
    .locals 0

    iput-object p1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const v0, 0x101006d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Landroid/widget/DropDownListView;->mIsAutoCompleteTextPopup:Z

    iput-boolean p2, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    invoke-virtual {p0, v1}, Landroid/widget/DropDownListView;->setCacheColorHint(I)V

    return-void
.end method

.method private clearPressedItem()V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->updateSelectorState()V

    iget v1, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/DropDownListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 6

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    invoke-virtual {p0, p3, p4}, Landroid/widget/DropDownListView;->drawableHotspotChanged(FF)V

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/DropDownListView;->setPressed(Z)V

    :cond_0
    iget-boolean v3, p0, Landroid/widget/DropDownListView;->mDataChanged:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->layoutChildren()V

    :cond_1
    iget v3, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    iget v4, p0, Landroid/widget/DropDownListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eq v2, p1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    iput p2, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, p3, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, p4, v3

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    invoke-virtual {p0, p2}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/widget/DropDownListView;->positionSelectorLikeTouch(ILandroid/view/View;FF)V

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->refreshDrawableState()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    :cond_0
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.sec.feature.folder_type"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/widget/DropDownListView;->mIsAutoCompleteTextPopup:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v1, :cond_3

    :cond_2
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v1

    :goto_1
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    :cond_0
    return-object v0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 12

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    invoke-direct {p0}, Landroid/widget/DropDownListView;->clearPressedItem()V

    :cond_2
    if-eqz v4, :cond_7

    iget-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-nez v10, :cond_3

    new-instance v10, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-direct {v10, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    :cond_3
    iget-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    iget-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v10, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_4
    :goto_1
    return v4

    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x0

    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_5

    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v8, v10

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v9, v10

    if-ltz v9, :cond_0

    invoke-virtual {p0, v8, v9}, Landroid/widget/DropDownListView;->pointToPosition(II)I

    move-result v5

    const/4 v10, -0x1

    if-ne v5, v10, :cond_6

    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, v5, v10

    invoke-virtual {p0, v10}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    int-to-float v10, v8

    int-to-float v11, v9

    invoke-direct {p0, v2, v5, v10, v11}, Landroid/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    const/4 v4, 0x1

    const/4 v10, 0x1

    if-ne v0, v10, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0

    :cond_7
    iget-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    iget-object v4, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v4, :cond_0

    new-instance v4, Landroid/widget/DropDownListView$ResolveHoverRunnable;

    invoke-direct {v4, p0, v5}, Landroid/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)V

    iput-object v4, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    iget-object v4, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v4}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->post()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    if-ne v0, v4, :cond_5

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/DropDownListView;->pointToPosition(II)I

    move-result v3

    if-eq v3, v6, :cond_4

    iget v4, p0, Landroid/widget/DropDownListView;->mSelectedPosition:I

    if-eq v3, v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->requestFocus()Z

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isHovered()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/widget/DropDownListView;->setHovered(Z)V

    :cond_2
    invoke-virtual {p0, v3, v2}, Landroid/widget/DropDownListView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setNextSelectedPositionInt(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->updateSelectorState()V

    :cond_4
    :goto_0
    return v1

    :cond_5
    invoke-super {p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0, v6}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v6}, Landroid/widget/DropDownListView;->setNextSelectedPositionInt(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v0}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->cancel()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListSelectionHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isHovered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->touchModeDrawsInPressedState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
