.class public Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecentsWindowViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final LAYOUT_CHANGE_ANIMATION_DURATION:I

.field mActivityManager:Landroid/app/ActivityManager;

.field mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

.field mContext:Landroid/content/Context;

.field private mDisplayOrientation:I

.field private mDisplayRect:Landroid/graphics/Rect;

.field mHoveredForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field mIam:Landroid/app/IActivityManager;

.field mIsSceneTransitionRequested:Z

.field mRemoveView:Landroid/view/View;

.field mRootView:Landroid/view/ViewGroup;

.field private mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;Lcom/android/systemui/recents/model/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->syncTaskLockState(Lcom/android/systemui/recents/model/Task;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayRect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayOrientation:I

    const/16 v0, 0x14d

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->LAYOUT_CHANGE_ANIMATION_DURATION:I

    iput-boolean v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mIsSceneTransitionRequested:Z

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mIam:Landroid/app/IActivityManager;

    invoke-static {}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->getAttr()Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f080599

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mHoveredForegroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private onViewAttachAnimation(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mIsSceneTransitionRequested:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$2;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private reload()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayOrientation:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayRect:Landroid/graphics/Rect;

    return-void
.end method

.method private requestUpdateRecentsLayout(I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateLayout()V

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v5, v5, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v5}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v5, v5, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v5}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    move v2, v0

    :goto_0
    if-gt v2, v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v5, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->updateRecentsLayout(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/transition/ChangeBounds;

    invoke-direct {v4}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v6, 0x14d

    invoke-virtual {v4, v6, v7}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    new-instance v5, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$1;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRemoveView:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRemoveView:Landroid/view/View;

    invoke-virtual {v4, v5, v9}, Landroid/transition/Transition;->excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;

    iput-object v8, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRemoveView:Landroid/view/View;

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v5, v4}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    iput-boolean v9, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mIsSceneTransitionRequested:Z

    return-void
.end method

.method private startActivityFromRecents(ILandroid/app/ActivityOptions;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mIam:Landroid/app/IActivityManager;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method private syncTaskLockState(Lcom/android/systemui/recents/model/Task;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    iget-object v4, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    iput-boolean v4, v3, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->updateViewLockState()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateRecentsLayout(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V
    .locals 13

    const v12, 0x800013

    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->getAdapterPosition()I

    move-result v4

    if-ne v4, v10, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->getItemCount()I

    move-result v5

    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->focusView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-gt v5, v11, :cond_1

    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutHeightRow2:I

    :goto_0
    iput v6, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationX(F)V

    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationY(F)V

    iput v10, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    iput v8, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    iput v8, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v6, 0x11

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    packed-switch v5, :pswitch_data_0

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    if-gt v6, v11, :cond_5

    iput v8, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    :goto_2
    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->focusView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewHeight:I

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v7, v7, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewFocusPadding:I

    add-int/2addr v6, v7

    goto :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutWidth:I

    iput v6, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    goto :goto_1

    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutWidth:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    if-nez v4, :cond_2

    const v6, 0x800015

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewGap:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_2
    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewGap:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :pswitch_2
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewWidth:I

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v7, v7, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewGap:I

    mul-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutWidth:I

    sub-int/2addr v6, v0

    div-int/lit8 v3, v6, 0x2

    if-nez v4, :cond_3

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    const v6, 0x800015

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    iput v0, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    goto :goto_1

    :cond_4
    iput v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :pswitch_3
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutWidth:I

    div-int/lit8 v6, v6, 0x4

    iput v6, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewBottomMargin:I

    iput v6, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addTaskAt(Lcom/android/systemui/recents/model/Task;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public bindViews(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRootView:Landroid/view/ViewGroup;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->onBindViewHolder(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;I)V
    .locals 5

    const-string/jumbo v0, "RecentsWindowViewAdapter"

    const-string/jumbo v1, "onBindViewHolder() - position=%d\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;
    .locals 5

    const-string/jumbo v2, "RecentsWindowViewAdapter"

    const-string/jumbo v3, "onCreateViewHolder()\n"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0183

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;Landroid/view/View;)V

    const v2, 0x7f0a041f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->contentView:Landroid/view/View;

    const v2, 0x7f0a0420

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->focusView:Landroid/view/View;

    const v2, 0x7f0a0518

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    iget-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    const v3, 0x7f0a0532

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    const v3, 0x7f0a021f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    const v3, 0x7f0a017b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    const v3, 0x7f0a004c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    const v3, 0x7f0a051a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    return-object v1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->onViewAttachedToWindow(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V
    .locals 12

    const v11, 0x7f08059b

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->getAdapterPosition()I

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_0

    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    const-string/jumbo v7, "RecentsWindowViewAdapter"

    const-string/jumbo v8, "onViewAttachedToWindow() - position=%d, task=%s\n"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    iget-object v10, v4, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v10, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    iget-boolean v7, v4, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v7, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v1

    :goto_0
    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget v8, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayOrientation:I

    iget-object v9, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v4, v1, v8, v9}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->bindToTask(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V

    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    invoke-virtual {v4, p1}, Lcom/android/systemui/recents/model/Task;->addCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/recents/model/Task;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->onTaskVisible(Lcom/android/systemui/recents/model/Task;)V

    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v8, v4, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    iget-object v8, v4, Lcom/android/systemui/recents/model/Task;->dismissDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f12005c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isButtonShapeEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    const v8, 0x7f080595

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isButtonShapeEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    const v8, 0x7f080571

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_2
    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->updateViewLockState()V

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget v7, v7, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-ne v7, v2, :cond_5

    :goto_3
    invoke-virtual {p1, v5}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->setFocus(Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->updateRecentsLayout(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->onViewAttachAnimation(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_5
    move v5, v6

    goto :goto_3
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->onViewDetachedFromWindow(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const-string/jumbo v0, "RecentsWindowViewAdapter"

    const-string/jumbo v1, "onViewDetachedFromWindow() - task=%s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/recents/model/Task;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->onTaskInvisible(Lcom/android/systemui/recents/model/Task;)V

    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public removeTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v5, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    new-instance v4, Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;-><init>()V

    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    iput-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRemoveView:Landroid/view/View;

    iget-object v5, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;->removeViewOrigX:I

    iget-object v5, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;->removeViewOrigY:I

    :cond_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$3;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$3;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5, p1, v8, v7}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->notifyItemRemoved(I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->requestUpdateRecentsLayout(I)V

    :cond_1
    return-void
.end method

.method public setNewStackTasks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->reload()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public startTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v8, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const-string/jumbo v0, "RecentsWindowViewAdapter"

    const-string/jumbo v2, "startTask() - %s\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-direct {p0, v8, v6}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;

    invoke-direct {v2, v7}, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v9

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    const/4 v4, -0x1

    move-object v2, p1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/LaunchTaskInformationEvent;

    add-int/lit8 v2, v7, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/recents/events/activity/LaunchTaskInformationEvent;-><init>(Lcom/android/systemui/recents/model/Task;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x115

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method
