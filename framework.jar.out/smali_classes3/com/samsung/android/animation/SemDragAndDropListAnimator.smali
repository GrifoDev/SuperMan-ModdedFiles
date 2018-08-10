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

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->initDragIfNecessary(I)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mScrollBarSize:I

    iput-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->initListeners()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->setAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private addNewTranslation(II)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v0

    instance-of v3, v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-eqz v3, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v3

    float-to-int v2, v3

    :cond_0
    sub-int v3, p2, v2

    invoke-virtual {v1, v4, v4, p2, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    return-void

    :cond_1
    new-instance v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(I)V

    goto :goto_1
.end method

.method private addReturningTranslation(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v0

    instance-of v3, v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v3

    float-to-int v2, v3

    neg-int v3, v2

    invoke-virtual {v1, v4, v4, v4, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    return-void
.end method

.method private checkDndGrabHandle(III)Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->activatedByLongPress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method private checkStartDnd(III)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->semIsLongPressTriggeredByKey()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemDragAndDropListAnimator"

    const-string/jumbo v2, "checkStartDnd : LongPress is triggered by key, return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->checkDndGrabHandle(III)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    :cond_1
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

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-interface {v1, p3}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p3}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->speakNotDraggableForAccessibility(I)V

    :cond_2
    return v0
.end method

.method private drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V
    .locals 3

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

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    sget-object v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->PRESSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragHandleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const-string/jumbo v0, "SemDragAndDropListAnimator"

    const-string/jumbo v1, "drawDragHandle : call mDragGrabHandleDrawable.draw.. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->EMPTY_STATE_SET:[I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "SemDragAndDropListAnimator"

    const-string/jumbo v1, "drawDragHandle : not draw drageGrabHandle~~!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isDraggable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isHeaderOrFooterViewPos(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

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

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-interface {v3, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v3}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    :cond_0
    return-void
.end method

.method private findDragItemPosition(I)I
    .locals 6

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v4, v5, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int v4, v2, v1

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method private findMovedItemPosition(I)I
    .locals 9

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lez v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    sub-int/2addr v6, v1

    if-ne v2, v6, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    add-int v7, v2, v1

    invoke-virtual {v6, v7}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v3

    instance-of v6, v3, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-eqz v6, :cond_0

    check-cast v3, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getDestOffsetY()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    sub-int v8, p1, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int v6, v2, v1

    return v6

    :cond_2
    const/4 v6, -0x1

    return v6
.end method

.method private getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePosGravity:I

    const/4 v5, 0x1

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePosGravity:I

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method private initDrag(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragView:Landroid/view/View;

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnableHoverDrawable(Z)V

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchMode:I

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->speakDragStartForAccessibility(I)V

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mUserSetDragItemBitmap:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragView:Landroid/view/View;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragViewAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchOffsetY:I

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->startSelectHighlightingAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "SemDragAndDropListAnimator"

    const-string/jumbo v1, "dndListener.OnDragAndDropStart() initDrag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropStart()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    return v3
.end method

.method private initDragIfNecessary(I)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchX:I

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->checkStartDnd(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->initDrag(I)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndState()V

    :cond_1
    return v2
.end method

.method private initListeners()V
    .locals 1

    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;-><init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator$2;-><init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method private isHeaderOrFooterViewPos(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mActivePointerId:I

    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchX:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getBottom()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_b

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v6}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->isFinished()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstTouchY:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v6, v1

    const/high16 v7, 0x41700000    # 15.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iput-boolean v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListItemSelectionAnimating:Z

    :cond_2
    iput v11, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchMode:I

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getTop()I

    move-result v7

    sub-int v0, v6, v7

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v0, v6

    :cond_4
    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    if-gt v6, v0, :cond_5

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    if-ge v6, v5, :cond_8

    :cond_5
    const/4 v2, 0x1

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndAutoScrollMode:I

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/ListView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_6
    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    if-le v6, v0, :cond_7

    iput v11, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndAutoScrollMode:I

    :cond_7
    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    if-ge v6, v5, :cond_8

    const/4 v6, 0x1

    iput v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndAutoScrollMode:I

    :cond_8
    if-nez v2, :cond_9

    iput v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndAutoScrollMode:I

    :cond_9
    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndAutoScrollMode:I

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->reorderIfNeeded()V

    return-void

    :cond_b
    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v7

    if-ge v6, v7, :cond_1

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    goto/16 :goto_0
.end method

.method private onTouchUpCancel(Landroid/view/MotionEvent;)V
    .locals 13

    const/4 v10, -0x1

    iput v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mActivePointerId:I

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    iget v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndState()V

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v10, :cond_0

    const-string/jumbo v10, "SemDragAndDropListAnimator"

    const-string/jumbo v11, "dndListener.onDragAndDropEnd() onTouchUpCancel DND_TOUCH_STATUS_START #2"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v10}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    :cond_0
    iget v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchMode:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    return-void

    :cond_1
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndState()V

    return-void

    :cond_2
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget v11, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    sub-int/2addr v11, v6

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget v11, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    sub-int/2addr v11, v6

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v2, :cond_3

    if-nez v4, :cond_8

    :cond_3
    iget v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget v11, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchOffsetY:I

    sub-int v3, v10, v11

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v1, v10, v3

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

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x1

    aput v1, v10, v11

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/animation/SemDragAndDropListAnimator$3;

    invoke-direct {v10, p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator$3;-><init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v10, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;

    invoke-direct {v10, p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;-><init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v10, 0xd2

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v10, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->SINE_IN_OUT_70:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_2
    const/4 v10, 0x0

    iput v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndAutoScrollMode:I

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->invalidate()V

    return-void

    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    :cond_6
    iget v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    if-ge v10, v6, :cond_7

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v3, v10

    iget-object v11, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    neg-int v1, v10

    goto :goto_1

    :cond_7
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v1, v10, v3

    goto/16 :goto_1

    :cond_8
    iget-boolean v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListItemSelectionAnimating:Z

    if-eqz v10, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndState()V

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v10, :cond_4

    const-string/jumbo v10, "SemDragAndDropListAnimator"

    const-string/jumbo v11, "dndListener.onDragAndDropEnd() mListItemSelectionAnimating is true #4"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v10}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    goto :goto_2

    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v7, v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget v12, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v11, v12

    sub-int v0, v10, v11

    new-instance v8, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v8}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11, v7, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    const v10, 0x3f333333    # 0.7f

    invoke-virtual {v8, v10}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iget v11, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    invoke-virtual {v10, v11, v8}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v10}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    iget v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    sub-int/2addr v10, v6

    iput v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mRetainFirstDragViewPos:I

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setEnabled(Z)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDropDonePending:Z

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndTouchValuesAndBitmap()V

    const-string/jumbo v10, "SemDragAndDropListAnimator"

    const-string/jumbo v11, "onTouchUp() start last animation"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private recalculateOffset(II)V
    .locals 13

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int v2, v10, v4

    if-le p2, p1, :cond_5

    add-int/lit8 v7, p1, 0x1

    :goto_0
    if-gt v7, p2, :cond_b

    iget v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    if-le v7, v10, :cond_3

    const-string/jumbo v10, "SemDragAndDropListAnimator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "recalculateOffset : canDrop #2 mFirstDragPos = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

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

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v11, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    invoke-interface {v10, v11, v7}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v10

    if-eqz v10, :cond_2

    move v9, v2

    move v3, v7

    :goto_1
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_0

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_1

    :cond_0
    neg-int v10, v9

    invoke-direct {p0, v7, v10}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->addNewTranslation(II)V

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :cond_3
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

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

    :cond_4
    invoke-static {v1}, Lcom/samsung/android/animation/SemAnimatorUtils;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->findMovedItemPosition(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->addReturningTranslation(I)V

    goto :goto_2

    :cond_5
    add-int/lit8 v7, p1, -0x1

    :goto_3
    if-lt v7, p2, :cond_b

    iget v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    if-ge v7, v10, :cond_9

    const-string/jumbo v10, "SemDragAndDropListAnimator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "recalculateOffset : canDrop #3 mFirstDragPos = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

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

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v11, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    invoke-interface {v10, v11, v7}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v10

    if-eqz v10, :cond_8

    move v9, v2

    move v3, v7

    :goto_4
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_6

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_4

    :cond_6
    invoke-direct {p0, v7, v9}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->addNewTranslation(II)V

    :cond_7
    :goto_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_8
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    const/4 v11, -0x1

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5

    :cond_9
    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_a

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

    :cond_a
    invoke-static {v1}, Lcom/samsung/android/animation/SemAnimatorUtils;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->findMovedItemPosition(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->addReturningTranslation(I)V

    goto :goto_5

    :cond_b
    return-void
.end method

.method private startSelectHighlightingAnimation(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListItemSelectionAnimating:Z

    new-instance v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-direct {v1, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->setStartAndDuration(I)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isDraggable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchOffsetY:I

    sub-int v1, v2, v3

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmapTranslateY:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePosGravity:I

    and-int/lit8 v2, v2, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmapTranslateY:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2, v6, v6}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method public getDragAndDropOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    return v5

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstTouchY:I

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isDraggable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-le v2, v6, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchX:I

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    return v5

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->activatedByLongPress()Z

    move-result v2

    if-eqz v2, :cond_4

    return v5

    :cond_4
    if-ltz v1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchX:I

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    invoke-direct {p0, v2, v3, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->checkStartDnd(III)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->initDrag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v6

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndState()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isDraggable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchMode:I

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-le v2, v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->activatedByLongPress()Z

    move-result v2

    if-eqz v2, :cond_0

    return v6

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isDraggable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchMode:I

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

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

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isDraggable()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchMode:I

    if-nez v4, :cond_1

    :cond_0
    return v5

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    const/4 v4, 0x1

    return v4

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    const v4, 0xff00

    and-int/2addr v4, v0

    shr-int/lit8 v3, v4, 0x8

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mActivePointerId:I

    if-ne v2, v4, :cond_2

    if-nez v3, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mActivePointerId:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

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

    const-string/jumbo v0, "SemDragAndDropListAnimator"

    const-string/jumbo v1, "postDrawChild : call drawDragHandlerIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mCanvasSaveCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mCanvasSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    add-int v2, v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isDraggable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    if-ne v2, v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDropDonePending:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListItemSelectionAnimating:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    return v4

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v3, v2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v0

    iput v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mCanvasSaveCount:I

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mCanvasSaveCount:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method reorderIfNeeded()V
    .locals 6

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->findDragItemPosition(I)I

    move-result v1

    const-string/jumbo v3, "SemDragAndDropListAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reorderIfNeeded : canDrop #1 mFirstDragPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

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

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    invoke-interface {v3, v4, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    :cond_0
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    if-eq v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListItemSelectionAnimating:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->recalculateOffset(II)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    :cond_1
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    :cond_3
    return-void
.end method

.method resetDndPositionValues()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndPositionValues()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnableHoverDrawable(Z)V

    return-void
.end method

.method resetDndTouchValuesAndBitmap()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndTouchValuesAndBitmap()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public setDragAndDropController(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;-><init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    goto :goto_0
.end method

.method public startDrag()Z
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->initDragIfNecessary(I)Z

    move-result v1

    return v1
.end method
