.class public Lcom/samsung/android/animation/SemDragAndDropListAnimator;
.super Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;
.source "SemDragAndDropListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemDragAndDropListAnimator"


# instance fields
.field private mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

.field private mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mListView:Landroid/widget/ListView;

.field mNonMovableItems:Landroid/util/SparseIntArray;

.field private final mScrollBarSize:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->initDragIfNecessary(I)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/ListView;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 91
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    .line 93
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mScrollBarSize:I

    .line 107
    iput-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->initListeners()V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->setAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 104
    return-void
.end method

.method private addNewTranslation(II)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "totalHeight"    # I

    .prologue
    const/4 v4, 0x0

    .line 644
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v0

    .line 645
    .local v0, "a":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    instance-of v3, v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 646
    nop

    nop

    .line 651
    .local v1, "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    :goto_0
    const/4 v2, 0x0

    .line 652
    .local v2, "yCurrentOffset":I
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 653
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v3

    float-to-int v2, v3

    .line 655
    :cond_0
    sub-int v3, p2, v2

    invoke-virtual {v1, v4, v4, p2, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 656
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 657
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 661
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    .line 642
    return-void

    .line 648
    .end local v1    # "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    .end local v2    # "yCurrentOffset":I
    :cond_1
    new-instance v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    .restart local v1    # "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    goto :goto_0

    .line 659
    .restart local v2    # "yCurrentOffset":I
    :cond_2
    invoke-virtual {v1, v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(I)V

    goto :goto_1
.end method

.method private addReturningTranslation(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 631
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v0

    .line 632
    .local v0, "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    instance-of v3, v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-nez v3, :cond_0

    .line 633
    return-void

    :cond_0
    move-object v1, v0

    .line 636
    nop

    nop

    .line 637
    .local v1, "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v3

    float-to-int v2, v3

    .line 638
    .local v2, "yCurrentOffset":I
    neg-int v3, v2

    invoke-virtual {v1, v4, v4, v4, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 639
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 629
    return-void
.end method

.method private checkDndGrabHandle(III)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "itemPosition"    # I

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->activatedByLongPress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    const/4 v2, 0x1

    return v2

    .line 191
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 193
    .local v0, "childRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 195
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 198
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 201
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method private checkStartDnd(III)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "itemPosition"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->checkDndGrabHandle(III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    const/4 v1, 0x0

    return v1

    .line 178
    :cond_0
    const-string/jumbo v1, "SemDragAndDropListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkStartDnd : canDrag #1 itemPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-interface {v1, p3}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result v0

    .line 180
    .local v0, "canDrag":Z
    if-nez v0, :cond_1

    .line 181
    invoke-virtual {p0, p3}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->speakNotDraggableForAccessibility(I)V

    .line 183
    :cond_1
    return v0
.end method

.method private drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "childRect"    # Landroid/graphics/Rect;
    .param p3, "isDraggedItem"    # Z
    .param p4, "isAllowDragItem"    # Z

    .prologue
    .line 770
    const-string/jumbo v0, "SemDragAndDropListAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "drawDragHandle : isAllowDragItem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 772
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 774
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 775
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    sget-object v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->PRESSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 776
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragHandleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 777
    const-string/jumbo v0, "SemDragAndDropListAnimator"

    const-string/jumbo v1, "drawDragHandle : call mDragGrabHandleDrawable.draw.. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 769
    :goto_1
    return-void

    .line 775
    :cond_0
    sget-object v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->EMPTY_STATE_SET:[I

    goto :goto_0

    .line 780
    :cond_1
    const-string/jumbo v0, "SemDragAndDropListAnimator"

    const-string/jumbo v1, "drawDragHandle : not draw drageGrabHandle~~!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 814
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 815
    .local v0, "index":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    .line 816
    .local v1, "pos":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isHeaderOrFooterViewPos(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 812
    .end local v0    # "index":I
    .end local v1    # "pos":I
    :cond_0
    :goto_0
    return-void

    .line 817
    .restart local v0    # "index":I
    .restart local v1    # "pos":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 818
    const-string/jumbo v2, "SemDragAndDropListAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "drawDragHandlerIfNeeded : canDrag #2 pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-interface {v3, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v3}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    goto :goto_0
.end method

.method private findDragItemPosition(I)I
    .locals 6
    .param p1, "y"    # I

    .prologue
    .line 587
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 588
    .local v0, "childCount":I
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    .line 589
    .local v1, "firstVisiblePosition":I
    if-lez v0, :cond_1

    .line 590
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 591
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 592
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 593
    iget-object v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v4, v5, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 594
    add-int v4, v2, v1

    return v4

    .line 590
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 598
    .end local v2    # "i":I
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method private findMovedItemPosition(I)I
    .locals 9
    .param p1, "y"    # I

    .prologue
    .line 602
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 603
    .local v0, "childCount":I
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    .line 604
    .local v1, "firstVisiblePosition":I
    if-lez v0, :cond_2

    .line 605
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 607
    iget v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    sub-int/2addr v6, v1

    if-ne v2, v6, :cond_1

    .line 605
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 611
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 612
    .local v4, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 614
    const/4 v5, 0x0

    .line 615
    .local v5, "yPosAdjust":I
    iget-object v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    add-int v7, v2, v1

    invoke-virtual {v6, v7}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v3

    .line 616
    .local v3, "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    instance-of v6, v3, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-eqz v6, :cond_0

    .line 617
    nop

    nop

    .end local v3    # "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    invoke-virtual {v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getDestOffsetY()I

    move-result v5

    .line 621
    iget-object v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    sub-int v8, p1, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 622
    add-int v6, v2, v1

    return v6

    .line 626
    .end local v2    # "i":I
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "yPosAdjust":I
    :cond_2
    const/4 v6, -0x1

    return v6
.end method

.method private getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "childRect"    # Landroid/graphics/Rect;
    .param p2, "outGrabHandleRect"    # Landroid/graphics/Rect;

    .prologue
    .line 738
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 740
    .local v1, "drawableWidth":I
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 741
    .local v2, "drawableHeight":I
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v6

    .line 743
    .local v6, "isLayoutRtl":Z
    if-eqz v6, :cond_1

    .line 744
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 745
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 746
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 747
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 749
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 750
    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 752
    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePosGravity:I

    .line 753
    const/4 v5, 0x1

    move-object v3, p1

    move-object v4, p2

    .line 752
    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 737
    .end local v1    # "drawableWidth":I
    .end local v2    # "drawableHeight":I
    .end local v6    # "isLayoutRtl":Z
    :cond_0
    :goto_0
    return-void

    .line 755
    .restart local v1    # "drawableWidth":I
    .restart local v2    # "drawableHeight":I
    .restart local v6    # "isLayoutRtl":Z
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 756
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 757
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 758
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 760
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 761
    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 763
    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePosGravity:I

    .line 764
    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    .line 763
    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method private initDrag(I)Z
    .locals 4
    .param p1, "itemPosition"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    .line 298
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 299
    return v2

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setEnableHoverDrawable(Z)V

    .line 304
    iput v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchMode:I

    .line 305
    iput p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    .line 306
    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    .line 308
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->speakDragStartForAccessibility(I)V

    .line 312
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mUserSetDragItemBitmap:Z

    if-nez v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 320
    :cond_2
    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDragViewAlpha(I)V

    .line 322
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 323
    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchOffsetY:I

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->startSelectHighlightingAnimation(Landroid/view/View;)V

    .line 326
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v0, :cond_4

    .line 327
    const-string/jumbo v0, "SemDragAndDropListAnimator"

    const-string/jumbo v1, "dndListener.OnDragAndDropStart() initDrag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropStart()V

    .line 330
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 331
    return v3
.end method

.method private initDragIfNecessary(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 282
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 283
    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchX:I

    iget v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->checkStartDnd(III)Z

    move-result v0

    .line 282
    if-eqz v0, :cond_0

    .line 285
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->initDrag(I)Z

    move-result v0

    return v0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndState()V

    .line 291
    :cond_1
    return v2
.end method

.method private initListeners()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;-><init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    .line 143
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator$2;-><init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 114
    return-void
.end method

.method private isHeaderOrFooterViewPos(I)Z
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 825
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 826
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 828
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 383
    iget v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 384
    .local v3, "pointerIndex":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    .line 385
    const/4 v3, 0x0

    .line 386
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mActivePointerId:I

    .line 389
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchX:I

    .line 390
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    .line 392
    iget v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_b

    .line 393
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    .line 398
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v6}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 405
    :cond_2
    :goto_1
    iput v11, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchMode:I

    .line 407
    const/4 v2, 0x0

    .line 408
    .local v2, "needScroll":Z
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 409
    .local v5, "top":I
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 410
    .local v4, "temp":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 411
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 413
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v0, v6, v7

    .line 414
    .local v0, "bottom":I
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 415
    if-eqz v4, :cond_4

    .line 416
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v0, v6

    .line 418
    :cond_4
    iget v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    if-gt v6, v0, :cond_5

    iget v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    if-ge v6, v5, :cond_8

    .line 419
    :cond_5
    const/4 v2, 0x1

    .line 420
    iget v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAutoScrollMode:I

    if-nez v6, :cond_6

    .line 423
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 425
    :cond_6
    iget v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    if-le v6, v0, :cond_7

    .line 426
    iput v11, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAutoScrollMode:I

    .line 428
    :cond_7
    iget v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    if-ge v6, v5, :cond_8

    .line 429
    const/4 v6, 0x1

    iput v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAutoScrollMode:I

    .line 433
    :cond_8
    if-nez v2, :cond_9

    .line 434
    iput v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAutoScrollMode:I

    .line 437
    :cond_9
    iget v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAutoScrollMode:I

    if-nez v6, :cond_a

    .line 438
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {v6, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 441
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->reorderIfNeeded()V

    .line 381
    return-void

    .line 394
    .end local v0    # "bottom":I
    .end local v2    # "needScroll":Z
    .end local v4    # "temp":Landroid/view/View;
    .end local v5    # "top":I
    :cond_b
    iget v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 395
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    goto/16 :goto_0

    .line 399
    :cond_c
    iget v6, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    iget v7, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstTouchY:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 400
    .local v1, "distance":I
    int-to-float v6, v1

    const/high16 v7, 0x41700000    # 15.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 401
    iput-boolean v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mListItemSelectionAnimating:Z

    goto/16 :goto_1
.end method

.method private onTouchUpCancel(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 467
    const/4 v10, -0x1

    iput v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mActivePointerId:I

    .line 468
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v6

    .line 470
    .local v6, "firstVisiblePosition":I
    iget v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndState()V

    .line 472
    iget-object v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v10, :cond_0

    .line 473
    const-string/jumbo v10, "SemDragAndDropListAnimator"

    const-string/jumbo v11, "dndListener.onDragAndDropEnd() onTouchUpCancel DND_TOUCH_STATUS_START #2"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v10}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    .line 477
    :cond_0
    iget v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchMode:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    return-void

    .line 479
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-nez v10, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndState()V

    .line 481
    return-void

    .line 483
    :cond_2
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget v11, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    sub-int/2addr v11, v6

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 484
    .local v2, "dragView":Landroid/view/View;
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget v11, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    sub-int/2addr v11, v6

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 485
    .local v4, "dropView":Landroid/view/View;
    if-eqz v2, :cond_3

    if-nez v4, :cond_8

    .line 490
    :cond_3
    iget v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    iget v11, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchOffsetY:I

    sub-int v3, v10, v11

    .line 491
    .local v3, "draggedBitmapTop":I
    if-eqz v4, :cond_5

    const/4 v5, 0x1

    .line 492
    .local v5, "dropViewVisible":Z
    :goto_0
    if-eqz v5, :cond_6

    .line 493
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v1, v10, v3

    .line 503
    .local v1, "distance":I
    :goto_1
    const-string/jumbo v10, "SemDragAndDropListAnimator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "dndListener.onTouchUp() dragView == null, distance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x1

    aput v1, v10, v11

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 505
    .local v9, "va":Landroid/animation/ValueAnimator;
    new-instance v10, Lcom/samsung/android/animation/SemDragAndDropListAnimator$3;

    invoke-direct {v10, p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator$3;-><init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 512
    new-instance v10, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;

    invoke-direct {v10, p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;-><init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 529
    const-wide/16 v10, 0xd2

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 530
    sget-object v10, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->SINE_IN_OUT_70:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 531
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 569
    .end local v1    # "distance":I
    .end local v3    # "draggedBitmapTop":I
    .end local v5    # "dropViewVisible":Z
    .end local v9    # "va":Landroid/animation/ValueAnimator;
    :cond_4
    :goto_2
    const/4 v10, 0x0

    iput v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAutoScrollMode:I

    .line 570
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {v10, v11}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 571
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    .line 466
    return-void

    .line 491
    .restart local v3    # "draggedBitmapTop":I
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 497
    .restart local v5    # "dropViewVisible":Z
    :cond_6
    iget v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    if-ge v10, v6, :cond_7

    .line 498
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v3, v10

    iget-object v11, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    neg-int v1, v10

    .restart local v1    # "distance":I
    goto :goto_1

    .line 500
    .end local v1    # "distance":I
    :cond_7
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v1, v10, v3

    .restart local v1    # "distance":I
    goto/16 :goto_1

    .line 532
    .end local v1    # "distance":I
    .end local v3    # "draggedBitmapTop":I
    .end local v5    # "dropViewVisible":Z
    :cond_8
    iget-boolean v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mListItemSelectionAnimating:Z

    if-eqz v10, :cond_9

    .line 535
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndState()V

    .line 536
    iget-object v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v10, :cond_4

    .line 537
    const-string/jumbo v10, "SemDragAndDropListAnimator"

    const-string/jumbo v11, "dndListener.onDragAndDropEnd() mListItemSelectionAnimating is true #4"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v10}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    goto :goto_2

    .line 541
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v7, v10, v11

    .line 542
    .local v7, "offsetY":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    iget v12, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v11, v12

    sub-int v0, v10, v11

    .line 544
    .local v0, "deltaY":I
    new-instance v8, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v8}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    .line 546
    .local v8, "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11, v7, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 547
    const v10, 0x3f333333    # 0.7f

    invoke-virtual {v8, v10}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 549
    iget-object v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iget v11, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    invoke-virtual {v10, v11, v8}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    .line 550
    iget-object v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v10}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    .line 552
    iget v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    sub-int/2addr v10, v6

    iput v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    .line 556
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 561
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDropDonePending:Z

    .line 565
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndTouchValuesAndBitmap()V

    .line 566
    const-string/jumbo v10, "SemDragAndDropListAnimator"

    const-string/jumbo v11, "onTouchUp() start last animation"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private recalculateOffset(II)V
    .locals 13
    .param p1, "prevPos"    # I
    .param p2, "newPos"    # I

    .prologue
    .line 665
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    .line 666
    .local v4, "dividerHeight":I
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v5

    .line 667
    .local v5, "firstVisiblePosition":I
    iget-object v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int v2, v10, v4

    .line 668
    .local v2, "childHeight":I
    if-le p2, p1, :cond_5

    .line 669
    add-int/lit8 v7, p1, 0x1

    .local v7, "i":I
    :goto_0
    if-gt v7, p2, :cond_b

    .line 670
    iget v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    if-le v7, v10, :cond_3

    .line 671
    const-string/jumbo v10, "SemDragAndDropListAnimator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "recalculateOffset : canDrop #2 mFirstDragPos = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", i = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v11, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    invoke-interface {v10, v11, v7}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 674
    move v9, v2

    .line 675
    .local v9, "totalHeight":I
    move v3, v7

    .line 676
    .local v3, "currentIdx":I
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_0

    .line 677
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_1

    .line 680
    :cond_0
    neg-int v10, v9

    invoke-direct {p0, v7, v10}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->addNewTranslation(II)V

    .line 669
    .end local v3    # "currentIdx":I
    .end local v9    # "totalHeight":I
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 682
    :cond_2
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 683
    .local v6, "fixedView":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 688
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 691
    .end local v6    # "fixedView":Landroid/view/View;
    :cond_3
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 692
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_4

    .line 693
    const-string/jumbo v10, "SemDragAndDropListAnimator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "recalculateOffset(\'dragging down\') no such item, i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 696
    :cond_4
    invoke-static {v1}, Lcom/samsung/android/animation/SemAnimatorUtils;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    .line 697
    .local v0, "centerY":I
    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->findMovedItemPosition(I)I

    move-result v8

    .line 698
    .local v8, "movedPos":I
    invoke-direct {p0, v8}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->addReturningTranslation(I)V

    goto :goto_2

    .line 702
    .end local v0    # "centerY":I
    .end local v1    # "child":Landroid/view/View;
    .end local v7    # "i":I
    .end local v8    # "movedPos":I
    :cond_5
    add-int/lit8 v7, p1, -0x1

    .restart local v7    # "i":I
    :goto_3
    if-lt v7, p2, :cond_b

    .line 703
    iget v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    if-ge v7, v10, :cond_9

    .line 704
    const-string/jumbo v10, "SemDragAndDropListAnimator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "recalculateOffset : canDrop #3 mFirstDragPos = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", i = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v10, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v11, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    invoke-interface {v10, v11, v7}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 707
    move v9, v2

    .line 708
    .restart local v9    # "totalHeight":I
    move v3, v7

    .line 709
    .restart local v3    # "currentIdx":I
    :goto_4
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_6

    .line 710
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_4

    .line 713
    :cond_6
    invoke-direct {p0, v7, v9}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->addNewTranslation(II)V

    .line 702
    .end local v3    # "currentIdx":I
    .end local v9    # "totalHeight":I
    :cond_7
    :goto_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 714
    :cond_8
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    const/4 v11, -0x1

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    .line 715
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 716
    .restart local v6    # "fixedView":Landroid/view/View;
    if-eqz v6, :cond_7

    .line 721
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5

    .line 724
    .end local v6    # "fixedView":Landroid/view/View;
    :cond_9
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 725
    .restart local v1    # "child":Landroid/view/View;
    if-nez v1, :cond_a

    .line 726
    const-string/jumbo v10, "SemDragAndDropListAnimator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "recalculateOffset(\'dragging up\') no such item, i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 729
    :cond_a
    invoke-static {v1}, Lcom/samsung/android/animation/SemAnimatorUtils;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    .line 730
    .restart local v0    # "centerY":I
    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->findMovedItemPosition(I)I

    move-result v8

    .line 731
    .restart local v8    # "movedPos":I
    invoke-direct {p0, v8}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->addReturningTranslation(I)V

    goto :goto_5

    .line 664
    .end local v0    # "centerY":I
    .end local v1    # "child":Landroid/view/View;
    .end local v8    # "movedPos":I
    :cond_b
    return-void
.end method

.method private startSelectHighlightingAnimation(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 335
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 336
    .local v0, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 337
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mListItemSelectionAnimating:Z

    .line 339
    new-instance v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-direct {v1, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    .line 340
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->setStartAndDuration(I)V

    .line 341
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iget v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    .line 342
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    .line 334
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 833
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 834
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 835
    .local v0, "draggedItemX":I
    iget v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    iget v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchOffsetY:I

    sub-int v1, v2, v3

    .line 837
    .local v1, "draggedItemY":I
    iget-boolean v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 838
    :cond_0
    return-void

    .line 840
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    .line 841
    iget v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateY:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    .line 840
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 843
    iget v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePosGravity:I

    and-int/lit8 v2, v2, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 844
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 848
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateY:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 850
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 851
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 853
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2, v6, v6}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    .line 832
    .end local v0    # "draggedItemX":I
    .end local v1    # "draggedItemY":I
    :cond_2
    return-void

    .line 846
    .restart local v0    # "draggedItemX":I
    .restart local v1    # "draggedItemY":I
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method public getDragAndDropOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 217
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 269
    :cond_0
    :goto_0
    return v5

    .line 219
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    return v5

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_2

    .line 223
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 226
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempEvent:Landroid/view/MotionEvent;

    .line 227
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mActivePointerId:I

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchX:I

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    .line 230
    iget v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    iput v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstTouchY:I

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-le v2, v6, :cond_0

    .line 234
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchX:I

    iget v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    .line 235
    .local v1, "itemPosition":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 236
    return v5

    .line 238
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->activatedByLongPress()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 239
    return v5

    .line 241
    :cond_4
    if-ltz v1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 242
    iget v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchX:I

    iget v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    invoke-direct {p0, v2, v3, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->checkStartDnd(III)Z

    move-result v2

    .line 241
    if-eqz v2, :cond_5

    .line 244
    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->initDrag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v6

    .line 248
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndState()V

    goto :goto_0

    .line 253
    .end local v1    # "itemPosition":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchMode:I

    if-ne v2, v6, :cond_0

    .line 254
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-le v2, v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->activatedByLongPress()Z

    move-result v2

    .line 253
    if-eqz v2, :cond_0

    .line 257
    return v6

    .line 262
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchMode:I

    if-eqz v2, :cond_0

    .line 263
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchMode:I

    if-nez v5, :cond_1

    .line 348
    :cond_0
    return v1

    .line 351
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 353
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 378
    :cond_2
    :goto_0
    :pswitch_0
    return v4

    .line 358
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 363
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 367
    :pswitch_3
    const v5, 0xff00

    and-int/2addr v5, v0

    shr-int/lit8 v3, v5, 0x8

    .line 368
    .local v3, "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 369
    .local v2, "pointerId":I
    iget v5, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mActivePointerId:I

    if-ne v2, v5, :cond_2

    .line 372
    if-nez v3, :cond_3

    move v1, v4

    .line 373
    .local v1, "newPointerIndex":I
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mActivePointerId:I

    goto :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 805
    const-string/jumbo v0, "SemDragAndDropListAnimator"

    const-string/jumbo v1, "postDrawChild : call drawDragHandlerIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 807
    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mCanvasSaveCount:I

    if-lez v0, :cond_0

    .line 808
    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mCanvasSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 804
    :cond_0
    return-void
.end method

.method public preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/4 v4, 0x0

    .line 786
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 787
    .local v1, "index":I
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    add-int v2, v1, v3

    .line 789
    .local v2, "pos":I
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    if-ne v2, v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDropDonePending:Z

    if-eqz v3, :cond_2

    .line 793
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v3, v2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v0

    .line 794
    .local v0, "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    iput v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mCanvasSaveCount:I

    .line 795
    if-eqz v0, :cond_1

    .line 796
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    .line 797
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mCanvasSaveCount:I

    .line 798
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 800
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 789
    .end local v0    # "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mListItemSelectionAnimating:Z

    if-nez v3, :cond_0

    .line 790
    return v4
.end method

.method reorderIfNeeded()V
    .locals 6

    .prologue
    .line 446
    iget v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    .line 448
    .local v2, "prevDestPosition":I
    iget v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    iget v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 449
    .local v0, "adjustedY":I
    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->findDragItemPosition(I)I

    move-result v1

    .line 450
    .local v1, "dragPos":I
    const-string/jumbo v3, "SemDragAndDropListAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reorderIfNeeded : canDrop #1 mFirstDragPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", dragPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    invoke-interface {v3, v4, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    .line 456
    :cond_0
    iget v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    if-eq v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mListItemSelectionAnimating:Z

    if-eqz v3, :cond_4

    .line 461
    :cond_1
    :goto_0
    iget v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 462
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 445
    :cond_3
    return-void

    .line 457
    :cond_4
    iget v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->recalculateOffset(II)V

    .line 458
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    goto :goto_0
.end method

.method resetDndPositionValues()V
    .locals 2

    .prologue
    .line 582
    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndPositionValues()V

    .line 583
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setEnableHoverDrawable(Z)V

    .line 581
    return-void
.end method

.method resetDndTouchValuesAndBitmap()V
    .locals 1

    .prologue
    .line 576
    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndTouchValuesAndBitmap()V

    .line 577
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 575
    return-void
.end method

.method public setDragAndDropController(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V
    .locals 1
    .param p1, "dndController"    # Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .prologue
    const/4 v0, 0x0

    .line 161
    if-nez p1, :cond_0

    .line 162
    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 163
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 159
    :goto_0
    return-void

    .line 169
    :cond_1
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;-><init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    goto :goto_0
.end method

.method public startDrag()Z
    .locals 4

    .prologue
    .line 206
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-nez v1, :cond_0

    .line 207
    const/4 v1, 0x0

    return v1

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 210
    .local v0, "position":I
    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->initDragIfNecessary(I)Z

    move-result v1

    return v1
.end method
