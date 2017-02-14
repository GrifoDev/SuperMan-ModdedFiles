.class final Landroid/widget/SemHorizontalAbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;

.field x:F

.field y:F


# direct methods
.method private constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForTap;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView$CheckForTap;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iput v9, v4, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v5, v5, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v6, v6, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    invoke-static {v4, v5}, Landroid/widget/SemHorizontalAbsListView;->-set2(Landroid/widget/SemHorizontalAbsListView;Z)Z

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    if-ltz v4, :cond_1

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v5, v5, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iput v8, v4, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v4, v4, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v4, :cond_8

    invoke-virtual {v0, v9}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v5, v5, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    invoke-virtual {v4, v5, v0}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4}, Landroid/view/View;->refreshDrawableState()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v4, v4, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v4, v4, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_3

    if-eqz v2, :cond_6

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_3
    :goto_1
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v4, v4, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->x:F

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_4
    if-eqz v2, :cond_7

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-get21(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    new-instance v5, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {v5, v6, v7}, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;)V

    invoke-static {v4, v5}, Landroid/widget/SemHorizontalAbsListView;->-set4(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;)Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    :cond_5
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-get21(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v5}, Landroid/widget/SemHorizontalAbsListView;->-get21(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_6
    nop

    nop

    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    :cond_7
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iput v10, v4, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForTap;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iput v10, v4, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    goto/16 :goto_0
.end method
