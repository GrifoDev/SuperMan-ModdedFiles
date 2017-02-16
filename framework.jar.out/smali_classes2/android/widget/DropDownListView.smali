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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 101
    const v0, 0x101006d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;ZI)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    iput-boolean v1, p0, Landroid/widget/DropDownListView;->mIsAutoCompleteTextPopup:Z

    .line 111
    iput-boolean p2, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    .line 113
    invoke-virtual {p0, v1}, Landroid/widget/DropDownListView;->setCacheColorHint(I)V

    .line 109
    return-void
.end method

.method private clearPressedItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 260
    iput-boolean v3, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 261
    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setPressed(Z)V

    .line 262
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->updateSelectorState()V

    .line 264
    iget v1, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/DropDownListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 259
    :cond_0
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/4 v5, 0x1

    .line 271
    iput-boolean v5, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 274
    invoke-virtual {p0, p3, p4}, Landroid/widget/DropDownListView;->drawableHotspotChanged(FF)V

    .line 275
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 276
    invoke-virtual {p0, v5}, Landroid/widget/DropDownListView;->setPressed(Z)V

    .line 280
    :cond_0
    iget-boolean v3, p0, Landroid/widget/DropDownListView;->mDataChanged:Z

    if-eqz v3, :cond_1

    .line 281
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->layoutChildren()V

    .line 286
    :cond_1
    iget v3, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    iget v4, p0, Landroid/widget/DropDownListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 287
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_2

    if-eq v2, p1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 288
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 290
    :cond_2
    iput p2, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, p3, v3

    .line 294
    .local v0, "childX":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, p4, v3

    .line 295
    .local v1, "childY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 297
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 301
    :cond_3
    invoke-virtual {p0, p2}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    .line 302
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/widget/DropDownListView;->positionSelectorLikeTouch(ILandroid/view/View;FF)V

    .line 306
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->refreshDrawableState()V

    .line 270
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v0, :cond_0

    .line 175
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 173
    :cond_0
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 371
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

    .prologue
    .line 351
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

    .prologue
    .line 361
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
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    .line 323
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 325
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 326
    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 329
    :cond_0
    return-object v0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .prologue
    .line 186
    const/4 v4, 0x1

    .line 187
    .local v4, "handledEvent":Z
    const/4 v3, 0x0

    .line 189
    .local v3, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 190
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 230
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz v3, :cond_2

    .line 231
    :cond_1
    invoke-direct {p0}, Landroid/widget/DropDownListView;->clearPressedItem()V

    .line 235
    :cond_2
    if-eqz v4, :cond_7

    .line 236
    iget-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-nez v10, :cond_3

    .line 237
    new-instance v10, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-direct {v10, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 239
    :cond_3
    iget-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 240
    iget-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v10, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 245
    :cond_4
    :goto_1
    return v4

    .line 192
    :pswitch_0
    const/4 v4, 0x0

    .line 193
    goto :goto_0

    .line 195
    :pswitch_1
    const/4 v4, 0x0

    .line 198
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 199
    .local v1, "activeIndex":I
    if-gez v1, :cond_5

    .line 200
    const/4 v4, 0x0

    .line 201
    goto :goto_0

    .line 204
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v8, v10

    .line 205
    .local v8, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v9, v10

    .line 208
    .local v9, "y":I
    if-ltz v9, :cond_0

    .line 212
    invoke-virtual {p0, v8, v9}, Landroid/widget/DropDownListView;->pointToPosition(II)I

    move-result v5

    .line 213
    .local v5, "position":I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_6

    .line 214
    const/4 v3, 0x1

    .line 215
    goto :goto_0

    .line 218
    :cond_6
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, v5, v10

    invoke-virtual {p0, v10}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 219
    .local v2, "child":Landroid/view/View;
    int-to-float v10, v8

    int-to-float v11, v9

    invoke-direct {p0, v2, v5, v10, v11}, Landroid/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 220
    const/4 v4, 0x1

    .line 222
    const/4 v10, 0x1

    if-ne v0, v10, :cond_0

    .line 223
    invoke-virtual {p0, v5}, Landroid/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    .line 224
    .local v6, "id":J
    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0

    .line 241
    .end local v1    # "activeIndex":I
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "position":I
    .end local v6    # "id":J
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_7
    iget-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-eqz v10, :cond_4

    .line 242
    iget-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    goto :goto_1

    .line 190
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
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 134
    .local v0, "action":I
    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    iget-object v4, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v4, :cond_0

    .line 137
    new-instance v4, Landroid/widget/DropDownListView$ResolveHoverRunnable;

    invoke-direct {v4, p0, v5}, Landroid/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)V

    iput-object v4, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    .line 138
    iget-object v4, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v4}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->post()V

    .line 142
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 144
    .local v1, "handled":Z
    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    .line 145
    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    .line 146
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/DropDownListView;->pointToPosition(II)I

    move-result v3

    .line 147
    .local v3, "position":I
    if-eq v3, v6, :cond_3

    iget v4, p0, Landroid/widget/DropDownListView;->mSelectedPosition:I

    if-eq v3, v4, :cond_3

    .line 148
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 149
    .local v2, "hoveredItem":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->requestFocus()Z

    .line 154
    invoke-virtual {p0, v3, v2}, Landroid/widget/DropDownListView;->positionSelector(ILandroid/view/View;)V

    .line 155
    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    .line 156
    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setNextSelectedPositionInt(I)V

    .line 158
    :cond_2
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->updateSelectorState()V

    .line 169
    .end local v2    # "hoveredItem":Landroid/view/View;
    .end local v3    # "position":I
    :cond_3
    :goto_0
    return v1

    .line 163
    :cond_4
    invoke-super {p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v4

    if-nez v4, :cond_3

    .line 164
    invoke-virtual {p0, v6}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    .line 165
    invoke-virtual {p0, v6}, Landroid/widget/DropDownListView;->setNextSelectedPositionInt(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v0}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->cancel()V

    .line 128
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListSelectionHidden(Z)V
    .locals 0
    .param p1, "hideListSelection"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    .line 255
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 118
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

    .prologue
    .line 311
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
