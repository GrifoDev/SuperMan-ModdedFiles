.class final Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;
.super Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;
.source "SeslFragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationListenerWrapper;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$FragmentTag;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$OpGenerator;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;
    }
.end annotation


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static DEBUG:Z

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static sAnimationListenerField:Ljava/lang/reflect/Field;


# instance fields
.field mActive:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;"
        }
    .end annotation
.end field

.field final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

.field private mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/util/SeslPair",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNextFragmentIndex:I

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field mSavedNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;"
        }
    .end annotation
.end field

.field mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v2, 0x40200000    # 2.5f

    const/high16 v1, 0x3fc00000    # 1.5f

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;-><init>()V

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNextFragmentIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$1;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->scheduleCommit()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->completeExecute(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;ZZZ)V

    return-void
.end method

.method private addAddedFragments(Lcom/samsung/android/support/sesl/core/util/SeslArraySet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslArraySet",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    const/4 v3, 0x4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    if-lt v0, v2, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getNextAnim()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getNextTransition()I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private animateRemoveFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;I)V
    .locals 6
    .param p1    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setStateAfterAnimating(I)V

    iget-object v5, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v5, :cond_0

    iget-object v1, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v5, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {p1, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setAnimator(Landroid/animation/Animator;)V

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    :goto_0
    new-instance v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;

    invoke-direct {v5, p0, v2, v4, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-static {v5, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    iget-object v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setAnimatingAway(Landroid/view/View;)V

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$2;

    invoke-direct {v5, p0, v3, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$2;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Landroid/view/animation/Animation$AnimationListener;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {v4, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;)V

    iget-object v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    goto :goto_0
.end method

.method private burpActive()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_1
.end method

.method private checkStateLoss()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cleanupExec()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private completeExecute(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;ZZZ)V
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->executeOps()V

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_2

    :goto_1
    if-nez p4, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_4

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, p4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->executePopOps(Z)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->startTransitions(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IZ)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v8, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v6, :cond_6

    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-boolean v0, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_5

    iget v0, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->interactsWith(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPostponedAlpha:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_7

    iget-object v0, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    iget v4, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPostponedAlpha:F

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    if-nez p4, :cond_8

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPostponedAlpha:F

    iput-boolean v3, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIsNewlyAdded:Z

    goto :goto_4

    :cond_8
    iput v9, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPostponedAlpha:F

    goto :goto_4
.end method

.method private dispatchStateChange(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    throw v0
.end method

.method private endAnimatingAwayFragments()V
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-lt v8, v9, :cond_1

    return-void

    :cond_0
    move v9, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v1, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getStateAfterAnimating()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1, v10}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setAnimatingAway(Landroid/view/View;)V

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-nez v7, :cond_5

    :goto_3
    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Landroid/view/animation/Animation;->cancel()V

    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    goto :goto_3
.end method

.method private ensureExecReady(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SeslFragmentManager is already executing transactions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Must be called from main thread of fragment host"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->checkStateLoss()V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    throw v0
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    move v0, p2

    :goto_0
    if-lt v0, p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3, v6}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->bumpBackStackNesting(I)V

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->executeOps()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->bumpBackStackNesting(I)V

    add-int/lit8 v4, p3, -0x1

    if-eq v0, v4, :cond_2

    move v2, v5

    :goto_2
    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->executePopOps(Z)V

    goto :goto_1

    :cond_2
    move v2, v6

    goto :goto_2
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-boolean v15, v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mReorderingAllowed:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->getPrimaryNavigationFragment()Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v17

    move/from16 v19, p3

    :goto_1
    move/from16 v0, v19

    move/from16 v1, p4

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v15, :cond_6

    :goto_2
    invoke-static/range {p1 .. p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    move/from16 v12, p4

    if-nez v15, :cond_7

    :goto_3
    move/from16 v0, p3

    if-ne v12, v0, :cond_8

    :cond_0
    :goto_4
    move/from16 v19, p3

    :goto_5
    move/from16 v0, v19

    move/from16 v1, p4

    if-lt v0, v1, :cond_9

    if-nez v14, :cond_c

    :goto_6
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v17

    :goto_7
    if-eqz v14, :cond_5

    :cond_3
    const/4 v14, 0x1

    :goto_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->expandOps(Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v17

    goto :goto_7

    :cond_5
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAddToBackStack:Z

    if-nez v2, :cond_3

    const/4 v14, 0x0

    goto :goto_8

    :cond_6
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->startTransitions(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    goto :goto_2

    :cond_7
    new-instance v7, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    invoke-direct {v7}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->addAddedFragments(Lcom/samsung/android/support/sesl/core/util/SeslArraySet;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILcom/samsung/android/support/sesl/core/util/SeslArraySet;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeRemovedFragmentsInvisible(Lcom/samsung/android/support/sesl/core/util/SeslArraySet;)V

    goto/16 :goto_3

    :cond_8
    if-eqz v15, :cond_0

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-static/range {v8 .. v13}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->startTransitions(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IZ)V

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-nez v16, :cond_b

    :cond_a
    :goto_9
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->runOnCommitRunnables()V

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, v18

    iget v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    if-ltz v2, :cond_a

    move-object/from16 v0, v18

    iget v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->freeBackStackIndex(I)V

    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    goto :goto_9

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->reportBackStackChanged()V

    goto/16 :goto_6
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_1

    return-void

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;

    if-nez p1, :cond_6

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->isReady()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    if-nez p1, :cond_8

    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->access$300(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->access$400(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;)Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v7, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_5

    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->access$400(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;)Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_8
    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->access$300(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->access$400(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;)Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v7, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_2
.end method

.method private findFragmentUnder(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    return-object v6

    :cond_1
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-gez v2, :cond_2

    return-object v6

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v5, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    if-eq v5, v0, :cond_4

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    iget-object v5, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_3

    return-object v3
.end method

.method private forcePostponedTransactions()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    :cond_0
    monitor-exit p0

    return v6

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_2

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit p0

    return v2

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$OpGenerator;

    invoke-interface {v5, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    or-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_0

    :goto_0
    sget-object v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;

    move-object v3, v0

    :goto_1
    return-object v3

    :cond_0
    const-class v4, Landroid/view/animation/Animation;

    const-string/jumbo v5, "mListener"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    sget-object v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "SeslFragmentManager"

    const-string/jumbo v5, "No field with the name mListener is found in Animation class"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v4, "SeslFragmentManager"

    const-string/jumbo v5, "Cannot access Animation\'s mListener field"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$1;)V

    return-object v1
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;
    .locals 11

    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$1;)V

    return-object v1
.end method

.method private makeRemovedFragmentsInvisible(Lcom/samsung/android/support/sesl/core/util/SeslArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslArraySet",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v4, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method static modifiesAlpha(Landroid/animation/Animator;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p0, :cond_1

    instance-of v4, p0, Landroid/animation/ValueAnimator;

    if-nez v4, :cond_2

    instance-of v4, p0, Landroid/animation/AnimatorSet;

    if-nez v4, :cond_4

    :cond_0
    return v6

    :cond_1
    return v6

    :cond_2
    move-object v2, p0

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v7

    :cond_4
    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return v7
.end method

.method static modifiesAlpha(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    instance-of v2, v2, Landroid/view/animation/AlphaAnimation;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    instance-of v2, v2, Landroid/view/animation/AnimationSet;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v2

    return v2

    :cond_0
    return v4

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    check-cast v2, Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    return v3

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/view/animation/AlphaAnimation;

    if-nez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .locals 10

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->ensureExecReady(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPrimaryNav:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v8

    if-nez v8, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->doPendingDeferredStart()V

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->burpActive()V

    return v8

    :cond_1
    if-gez p2, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPrimaryNav:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->peekChildFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    return v9

    :cond_2
    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->cleanupExec()V

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->cleanupExec()V

    throw v6
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILcom/samsung/android/support/sesl/core/util/SeslArraySet;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Lcom/samsung/android/support/sesl/core/util/SeslArraySet",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;)I"
        }
    .end annotation

    const/4 v7, 0x0

    move v4, p4

    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-ge v0, p3, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->isPostponed()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move v2, v7

    :goto_1
    if-nez v2, :cond_3

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, p1, v6, p4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    :goto_3
    new-instance v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;

    invoke-direct {v3, v5, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Z)V

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setOnStartPostponedListener(Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;)V

    if-nez v1, :cond_5

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->executePopOps(Z)V

    :goto_4
    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_6

    :goto_5
    invoke-direct {p0, p5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->addAddedFragments(Lcom/samsung/android/support/sesl/core/util/SeslArraySet;)V

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->executeOps()V

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p2, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Internal error with the back stack records"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_4

    if-ne v4, v1, :cond_a

    :goto_1
    return-void

    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-boolean v0, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mReorderingAllowed:Z

    if-eqz v0, :cond_5

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-ne v4, v2, :cond_7

    :goto_3
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_9

    :cond_6
    :goto_4
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    move v4, v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_2

    :cond_7
    invoke-direct {p0, p1, p2, v4, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    :cond_9
    if-ge v3, v1, :cond_6

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-boolean v5, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mReorderingAllowed:Z

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_a
    invoke-direct {p0, p1, p2, v4, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_1
.end method

.method public static reverseTransit(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x2002

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x1001

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private scheduleCommit()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    :cond_0
    move v3, v5

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v6, :cond_4

    :cond_1
    move v2, v5

    :goto_1
    if-eqz v3, :cond_5

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    monitor-exit p0

    return-void

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move v3, v4

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v4, :cond_1

    move v2, v4

    goto :goto_1

    :cond_5
    if-nez v2, :cond_2

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private static setRetaining(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)V
    .locals 7

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_1
    return-void

    :cond_2
    return-void

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->setRetaining(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)V

    goto :goto_1
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->modifiesAlpha(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SeslFragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "SeslFragmentManager"

    const-string/jumbo v4, "Activity state:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-direct {v1, v3}, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "  "

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    throw p1

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "  "

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SeslFragmentManager"

    const-string/jumbo v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "SeslFragmentManager"

    const-string/jumbo v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 1

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    if-nez p1, :cond_0

    const/4 v0, 0x2

    :goto_1
    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    if-nez p1, :cond_1

    const/4 v0, 0x4

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_2

    :sswitch_2
    if-nez p1, :cond_2

    const/4 v0, 0x6

    :goto_3
    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public addFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeActive(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "add: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    iput-boolean v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRemoving:Z

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_5

    :goto_2
    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-nez v2, :cond_6

    :cond_3
    :goto_3
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment already added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    iput-boolean v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHiddenChanged:Z

    goto :goto_2

    :cond_6
    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v2, :cond_3

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_3
.end method

.method public allocBackStackIndex(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)I
    .locals 5

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-boolean v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return v2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-boolean v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v3, :cond_4

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return v2

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SeslFragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SeslFragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public attachController(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_1

    :goto_0
    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "attach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput-boolean v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v2, :cond_0

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment already added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "add from attach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public beginTransaction()Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;)V

    return-object v0
.end method

.method completeShowHideFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-nez v4, :cond_2

    :cond_0
    :goto_0
    iget-boolean v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-nez v4, :cond_b

    :cond_1
    :goto_1
    iput-boolean v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHiddenChanged:Z

    iget-boolean v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    invoke-virtual {p1, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onHiddenChanged(Z)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getNextTransition()I

    move-result v7

    iget-boolean v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v4, :cond_5

    move v4, v5

    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getNextTransitionStyle()I

    move-result v8

    invoke-virtual {p0, p1, v7, v4, v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->loadAnimation(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IZI)Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_3
    if-nez v0, :cond_9

    :goto_3
    iget-boolean v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v4, :cond_a

    :cond_4
    move v3, v5

    :goto_4
    iget-object v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isHideReplaced()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setHideReplaced(Z)V

    goto :goto_0

    :cond_5
    move v4, v6

    goto :goto_2

    :cond_6
    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v7, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-boolean v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v4, :cond_7

    iget-object v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-static {v4, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;)V

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isHideReplaced()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v7, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;

    invoke-direct {v7, p0, v2, v1, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-virtual {v4, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p1, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setHideReplaced(Z)V

    goto :goto_5

    :cond_9
    iget-object v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-static {v4, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;)V

    iget-object v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    iget-object v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->start()V

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isHideReplaced()Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v3, 0x8

    goto :goto_4

    :cond_b
    iget-boolean v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v4, :cond_1

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto/16 :goto_1
.end method

.method public detachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_1

    :goto_0
    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "detach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput-boolean v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-nez v2, :cond_5

    :cond_3
    :goto_3
    iput-boolean v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove from detach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v2, :cond_3

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_3
.end method

.method public dispatchActivityCreated()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_1
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    return v2
.end method

.method public dispatchCreate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    :cond_1
    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    return v3

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v2, :cond_8

    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onDestroyOptionsMenu()V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4
.end method

.method public dispatchDestroy()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStateChange(I)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    return-void
.end method

.method public dispatchDestroyView()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchLowMemory()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performLowMemory()V

    goto :goto_1
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-gez v1, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_2

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performMultiWindowModeChanged(Z)V

    goto :goto_1
.end method

.method dispatchOnFragmentActivityCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/os/Bundle;Z)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentActivityCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;

    if-nez p3, :cond_5

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1
.end method

.method dispatchOnFragmentAttached(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Context;Z)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentAttached(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;

    if-nez p3, :cond_5

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1
.end method

.method dispatchOnFragmentCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/os/Bundle;Z)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;

    if-nez p3, :cond_5

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1
.end method

.method dispatchOnFragmentDestroyed(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentDestroyed(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;

    if-nez p2, :cond_5

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1
.end method

.method dispatchOnFragmentDetached(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentDetached(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;

    if-nez p2, :cond_5

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1
.end method

.method dispatchOnFragmentPaused(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentPaused(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;

    if-nez p2, :cond_5

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1
.end method

.method dispatchOnFragmentPreAttached(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Context;Z)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentPreAttached(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;

    if-nez p3, :cond_5

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1
.end method

.method dispatchOnFragmentPreCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/os/Bundle;Z)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentPreCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;

    if-nez p3, :cond_5

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1
.end method

.method dispatchOnFragmentResumed(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentResumed(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;

    if-nez p2, :cond_5

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1
.end method

.method dispatchOnFragmentSaveInstanceState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/os/Bundle;Z)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;

    if-nez p3, :cond_5

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1
.end method

.method dispatchOnFragmentStarted(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentStarted(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;

    if-nez p2, :cond_5

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1
.end method

.method dispatchOnFragmentStopped(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentStopped(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;

    if-nez p2, :cond_5

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1
.end method

.method dispatchOnFragmentViewCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentViewCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;

    if-nez p4, :cond_5

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1
.end method

.method dispatchOnFragmentViewDestroyed(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;

    if-nez p2, :cond_5

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    return v2
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_1
.end method

.method public dispatchPause()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-gez v1, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_2

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performPictureInPictureModeChanged(Z)V

    goto :goto_1
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1
.end method

.method public dispatchReallyStop()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchStart()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method doPendingDeferredStart()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHavePendingDeferredStart:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->startPendingDeferredFragments()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->hasRunningLoaders()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_2
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v8, :cond_7

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_9

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-nez v8, :cond_a

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v8, :cond_b

    :cond_3
    move-object v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v8, :cond_c

    :cond_4
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v8, :cond_d

    :cond_5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v8, :cond_e

    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "SeslFragmentManager misc state:"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  mHost="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  mContainer="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v8, :cond_f

    :goto_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  mCurState="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v8, " mStateSaved="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v8, " mDestroyed="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-nez v8, :cond_10

    :goto_2
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-nez v8, :cond_11

    :goto_3
    return-void

    :cond_7
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "Active Fragments in "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, ":"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v2, :cond_0

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  #"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v8, ": "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-nez v4, :cond_8

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v4, v6, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "Added Fragments:"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v2, :cond_1

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  #"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v8, ": "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "Fragments Created Menus:"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v2, :cond_2

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  #"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v8, ": "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "Back Stack:"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v2, :cond_3

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  #"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v8, ": "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3, v6, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_c
    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "Back Stack Indices:"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v2, :cond_4

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  #"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v8, ": "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_d
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mAvailBackStackIndices: "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_e
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "Pending Actions:"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v2, :cond_6

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$OpGenerator;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  #"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v8, ": "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_f
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  mParent="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_2

    :cond_11
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "  mNoTransactionsBecause="

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public enqueueAction(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$OpGenerator;Z)V
    .locals 4

    if-eqz p2, :cond_1

    :goto_0
    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mDestroyed:Z

    if-eqz v2, :cond_2

    :cond_0
    if-nez p2, :cond_3

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Activity has been destroyed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->checkStateLoss()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->scheduleCommit()V

    monitor-exit p0

    return-void

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method ensureInflatedFragmentView(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPerformedCreateView:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v3, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-nez v0, :cond_2

    iput-object v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    iput-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v0, :cond_3

    :goto_1
    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentViewCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public execPendingActions()Z
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->ensureExecReady(Z)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->doPendingDeferredStart()V

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->burpActive()V

    return v1

    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->cleanupExec()V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->cleanupExec()V

    throw v0
.end method

.method public executePendingTransactions()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->forcePostponedTransactions()V

    return v0
.end method

.method public findFragmentById(I)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-gez v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v2, :cond_4

    :cond_0
    return-object v3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    iget v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    if-ne v2, p1, :cond_2

    return-object v0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_6

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    iget v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    if-ne v2, p1, :cond_5

    return-object v0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v2, :cond_5

    :cond_1
    return-object v3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_5
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_7

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_7
    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    :cond_0
    return-object v3

    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0
.end method

.method public freeBackStackIndex(I)V
    .locals 4

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    :goto_0
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Freeing back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_0
    return-object v3

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SeslFragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    return-object p0
.end method

.method public getPrimaryNavigationFragment()Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPrimaryNav:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    return-object v0
.end method

.method public hideFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_0

    :goto_0
    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v2, :cond_1

    :goto_1
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHiddenChanged:Z

    if-eqz v2, :cond_2

    :goto_2
    iput-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHiddenChanged:Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method isStateAtLeast(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    if-ge v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStateSaved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    return v0
.end method

.method loadAnimation(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IZI)Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;
    .locals 17

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getNextAnim()I

    move-result v9

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_2

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v4

    if-nez v4, :cond_3

    if-nez v9, :cond_4

    :cond_0
    if-eqz p2, :cond_8

    invoke-static/range {p2 .. p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v10

    if-ltz v10, :cond_9

    packed-switch v10, :pswitch_data_0

    if-eqz p4, :cond_a

    :cond_1
    :goto_0
    if-eqz p4, :cond_b

    const/4 v12, 0x0

    return-object v12

    :cond_2
    new-instance v12, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$1;)V

    return-object v12

    :cond_3
    new-instance v12, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;

    const/4 v13, 0x0

    invoke-direct {v12, v4, v13}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$1;)V

    return-object v12

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "anim"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v11, 0x0

    if-nez v8, :cond_5

    :goto_1
    if-nez v11, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v12, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;

    const/4 v13, 0x0

    invoke-direct {v12, v4, v13}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$1;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v12

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 v11, 0x1

    goto :goto_1

    :cond_6
    new-instance v12, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$1;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v12

    :catch_0
    move-exception v6

    throw v6

    :catch_1
    move-exception v7

    if-nez v8, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v12, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$1;)V

    return-object v12

    :cond_7
    throw v7

    :cond_8
    const/4 v12, 0x0

    return-object v12

    :cond_9
    const/4 v12, 0x0

    return-object v12

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x3f900000    # 1.125f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v12 .. v16}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    return-object v12

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f79999a    # 0.975f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    return-object v12

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x3f79999a    # 0.975f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v12 .. v16}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    return-object v12

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f89999a    # 1.075f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    return-object v12

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v12, v13, v14}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    return-object v12

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    return-object v12

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onHasWindowAnimations()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    goto/16 :goto_0

    :cond_b
    const/4 v12, 0x0

    return-object v12

    :catch_2
    move-exception v12

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method makeActive(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 2

    iget v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNextFragmentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNextFragmentIndex:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setIndex(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Allocated fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SeslFragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method makeInactive(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 3

    iget v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-ltz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->initState()V

    return-void

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Freeing fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SeslFragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method moveFragmentToExpectedState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRemoving:Z

    if-nez v0, :cond_2

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getNextTransition()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getNextTransitionStyle()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-nez v0, :cond_4

    :cond_0
    :goto_1
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHiddenChanged:Z

    if-nez v0, :cond_9

    :goto_2
    return-void

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isInBackStack()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_3
    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->findFragmentUnder(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v8

    if-nez v8, :cond_7

    :cond_5
    :goto_3
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPostponedAlpha:F

    cmpl-float v0, v0, v12

    if-lez v0, :cond_6

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    iget v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPostponedAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    iput v12, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPostponedAlpha:F

    iput-boolean v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIsNewlyAdded:Z

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getNextTransition()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getNextTransitionStyle()I

    move-result v1

    invoke-virtual {p0, p1, v0, v13, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->loadAnimation(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IZI)Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-static {v0, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;)V

    iget-object v0, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_8

    iget-object v0, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_7
    iget-object v10, v8, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    iget-object v7, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    if-ge v11, v9, :cond_5

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_3

    :cond_8
    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    iget-object v1, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->completeShowHideFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_2
.end method

.method moveToState(IZ)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v5, :cond_3

    :cond_0
    if-eqz p2, :cond_4

    :cond_1
    iput p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v5, :cond_5

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz p1, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "No activity"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    if-ne p1, v5, :cond_1

    return-void

    :cond_5
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v4, :cond_6

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v3, :cond_8

    if-eqz v2, :cond_d

    :goto_3
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveFragmentToExpectedState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    iget-object v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-nez v5, :cond_7

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    iget-object v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->hasRunningLoaders()Z

    move-result v5

    or-int/2addr v2, v5

    goto :goto_4

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_a

    :cond_9
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    iget-boolean v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRemoving:Z

    if-eqz v5, :cond_c

    :cond_b
    iget-boolean v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIsNewlyAdded:Z

    if-nez v5, :cond_9

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveFragmentToExpectedState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    iget-object v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->hasRunningLoaders()Z

    move-result v5

    or-int/2addr v2, v5

    goto :goto_5

    :cond_c
    iget-boolean v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    if-nez v5, :cond_b

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->startPendingDeferredFragments()V

    goto :goto_3
.end method

.method moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 6

    const/4 v3, 0x0

    iget v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    return-void
.end method

.method moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V
    .locals 14

    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-nez v2, :cond_4

    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p2

    if-gt v0, v2, :cond_5

    :goto_0
    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRemoving:Z

    if-nez v2, :cond_6

    :cond_1
    :goto_1
    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDeferStart:Z

    if-nez v2, :cond_9

    :cond_2
    :goto_2
    iget v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    move/from16 v0, p2

    if-le v2, v0, :cond_a

    iget v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_2b

    :cond_3
    :goto_3
    iget v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_43

    :goto_4
    return-void

    :cond_4
    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_5
    const/16 p2, 0x1

    goto :goto_0

    :cond_6
    iget v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    move/from16 v0, p2

    if-le v0, v2, :cond_1

    iget v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    if-eqz v2, :cond_8

    :cond_7
    iget v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    move/from16 p2, v0

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isInBackStack()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 p2, 0x1

    goto :goto_1

    :cond_9
    iget v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    const/4 v2, 0x3

    move/from16 v0, p2

    if-le v0, v2, :cond_2

    const/16 p2, 0x3

    goto :goto_2

    :cond_a
    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    if-nez v2, :cond_d

    :cond_b
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_e

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setAnimatingAway(Landroid/view/View;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setAnimator(Landroid/animation/Animator;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getStateAfterAnimating()I

    move-result v4

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    :goto_5
    iget v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-gtz p2, :cond_f

    :goto_6
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->ensureInflatedFragmentView(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    const/4 v2, 0x1

    move/from16 v0, p2

    if-gt v0, v2, :cond_1b

    :goto_7
    :pswitch_2
    const/4 v2, 0x2

    move/from16 v0, p2

    if-gt v0, v2, :cond_27

    :goto_8
    :pswitch_3
    const/4 v2, 0x3

    move/from16 v0, p2

    if-gt v0, v2, :cond_28

    :goto_9
    :pswitch_4
    const/4 v2, 0x4

    move/from16 v0, p2

    if-le v0, v2, :cond_3

    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_2a

    :goto_a
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performResume()V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentResumed(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_3

    :cond_d
    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    if-nez v2, :cond_b

    return-void

    :cond_e
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_5

    :cond_f
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_12

    :goto_b
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v2, :cond_13

    :cond_10
    :goto_c
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getFragmentManagerImpl()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    move-result-object v2

    :goto_d
    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v2, :cond_16

    :cond_11
    :goto_e
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentPreAttached(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Context;Z)V

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onAttach(Landroid/content/Context;)V

    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v2, :cond_18

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v2, :cond_19

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onAttachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    :goto_f
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentAttached(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Context;Z)V

    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    if-eqz v2, :cond_1a

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    iput v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    :goto_10
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    goto/16 :goto_6

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveto CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_13
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v3, "android:view_state"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v3, "android:target_state"

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v2

    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v2, :cond_14

    :goto_11
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v3, "android:user_visible_hint"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    if-nez v2, :cond_10

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDeferStart:Z

    const/4 v2, 0x3

    move/from16 v0, p2

    if-le v0, v2, :cond_10

    const/16 p2, 0x3

    goto/16 :goto_c

    :cond_14
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v3, "android:target_req_state"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetRequestCode:I

    goto :goto_11

    :cond_15
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    goto/16 :goto_d

    :cond_16
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-ne v2, v3, :cond_17

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_11

    iget-object v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    const/4 v7, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    goto/16 :goto_e

    :cond_17
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " declared target fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " that does not belong to this FragmentManager!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_18
    new-instance v2, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " did not call through to super.onAttach()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onAttachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto/16 :goto_f

    :cond_1a
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentPreCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/os/Bundle;Z)V

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performCreate(Landroid/os/Bundle;)V

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/os/Bundle;Z)V

    goto/16 :goto_10

    :cond_1b
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_1c

    :goto_12
    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    if-eqz v2, :cond_1d

    :goto_13
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performActivityCreated(Landroid/os/Bundle;)V

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentActivityCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/os/Bundle;Z)V

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-nez v2, :cond_26

    :goto_14
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    goto/16 :goto_7

    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_1d
    const/4 v10, 0x0

    iget v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    if-nez v2, :cond_1f

    :cond_1e
    :goto_15
    iput-object v10, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v10, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-nez v2, :cond_21

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    goto :goto_13

    :cond_1f
    iget v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    :goto_16
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    iget v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    if-nez v10, :cond_1e

    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRestored:Z

    if-nez v2, :cond_1e

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    :goto_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No view found for id 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") for fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_15

    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot create fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for a container view with no id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_16

    :catch_0
    move-exception v11

    const-string/jumbo v12, "unknown"

    goto :goto_17

    :cond_21
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    if-nez v10, :cond_23

    :goto_18
    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v2, :cond_24

    :goto_19
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    iget-object v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    iget-object v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentViewCreated(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_25

    :cond_22
    const/4 v2, 0x0

    :goto_1a
    iput-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIsNewlyAdded:Z

    goto/16 :goto_13

    :cond_23
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_18

    :cond_24
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    :cond_25
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    goto :goto_1a

    :cond_26
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->restoreViewState(Landroid/os/Bundle;)V

    goto/16 :goto_14

    :cond_27
    const/4 v2, 0x3

    iput v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    goto/16 :goto_8

    :cond_28
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_29

    :goto_1b
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performStart()V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentStarted(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    goto/16 :goto_9

    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveto STARTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveto RESUMED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_2b
    iget v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_3

    :cond_2c
    :goto_1c
    :pswitch_5
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ge v0, v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mDestroyed:Z

    if-nez v2, :cond_3d

    :cond_2d
    :goto_1d
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3f

    :cond_2e
    invoke-virtual/range {p1 .. p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setStateAfterAnimating(I)V

    const/16 p2, 0x1

    goto/16 :goto_3

    :pswitch_6
    const/4 v2, 0x5

    move/from16 v0, p2

    if-lt v0, v2, :cond_31

    :goto_1e
    :pswitch_7
    const/4 v2, 0x4

    move/from16 v0, p2

    if-lt v0, v2, :cond_33

    :goto_1f
    :pswitch_8
    const/4 v2, 0x3

    move/from16 v0, p2

    if-lt v0, v2, :cond_35

    :goto_20
    :pswitch_9
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ge v0, v2, :cond_2c

    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_37

    :goto_21
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-nez v2, :cond_38

    :cond_2f
    :goto_22
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performDestroyView()V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-nez v2, :cond_39

    :cond_30
    :goto_23
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    goto :goto_1c

    :cond_31
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_32

    :goto_24
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performPause()V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentPaused(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    goto :goto_1e

    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movefrom RESUMED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_33
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_34

    :goto_25
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performStop()V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentStopped(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    goto :goto_1f

    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movefrom STARTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :cond_35
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_36

    :goto_26
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performReallyStop()V

    goto :goto_20

    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movefrom STOPPED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    :cond_38
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onShouldSaveFragmentState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v2, :cond_2f

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->saveFragmentViewState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto/16 :goto_22

    :cond_39
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_30

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    const/4 v8, 0x0

    iget v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    if-gtz v2, :cond_3b

    :cond_3a
    :goto_27
    const/4 v2, 0x0

    iput v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPostponedAlpha:F

    if-nez v8, :cond_3c

    :goto_28
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_23

    :cond_3b
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mDestroyed:Z

    if-nez v2, :cond_3a

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3a

    iget v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPostponedAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3a

    const/4 v2, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->loadAnimation(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IZI)Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;

    move-result-object v8

    goto :goto_27

    :cond_3c
    move/from16 v0, p2

    invoke-direct {p0, p1, v8, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->animateRemoveFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;I)V

    goto :goto_28

    :cond_3d
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3e

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setAnimator(Landroid/animation/Animator;)V

    invoke-virtual {v9}, Landroid/animation/Animator;->cancel()V

    goto/16 :goto_1d

    :cond_3e
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v13

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setAnimatingAway(Landroid/view/View;)V

    invoke-virtual {v13}, Landroid/view/View;->clearAnimation()V

    goto/16 :goto_1d

    :cond_3f
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    if-nez v2, :cond_2e

    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_40

    :goto_29
    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    if-eqz v2, :cond_41

    const/4 v2, 0x0

    iput v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    :goto_2a
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performDetach()V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentDetached(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    if-nez p5, :cond_3

    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    if-eqz v2, :cond_42

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    goto/16 :goto_3

    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movefrom CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_41
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performDestroy()V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentDestroyed(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    goto :goto_2a

    :cond_42
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeInactive(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto/16 :goto_3

    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveToState: SeslFragment state for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not updated inline; expected state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p2

    iput v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 4

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mSavedNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v1, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->noteStateNotSaved()V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    const-string/jumbo v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const-string/jumbo v2, "class"

    invoke-interface {p4, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$FragmentTag;->Fragment:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    if-eqz v8, :cond_5

    :goto_0
    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    const/4 v7, 0x0

    :goto_1
    const/4 v0, -0x1

    if-eq v7, v0, :cond_8

    :cond_0
    const/4 v0, -0x1

    if-ne v9, v0, :cond_9

    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_a

    :cond_1
    :goto_3
    if-eqz v1, :cond_b

    :cond_2
    :goto_4
    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_c

    :goto_5
    if-eqz v1, :cond_d

    iget-boolean v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iput-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-boolean v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    if-eqz v0, :cond_10

    :goto_6
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    const/4 v2, 0x1

    if-lt v0, v2, :cond_11

    :cond_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    :goto_7
    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_12

    if-nez v9, :cond_13

    :goto_8
    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    :goto_9
    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    return-object v0

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    goto :goto_1

    :cond_8
    const/4 v0, -0x1

    if-ne v9, v0, :cond_0

    if-nez v10, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->findFragmentById(I)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    goto :goto_2

    :cond_a
    if-eqz v10, :cond_1

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    goto :goto_3

    :cond_b
    const/4 v0, -0x1

    if-eq v7, v0, :cond_2

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->findFragmentById(I)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    goto :goto_4

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateView: id=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "SeslFragmentManager"

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " fname="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " existing="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v8, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    if-nez v9, :cond_e

    move v0, v7

    :goto_a
    iput v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    iput v7, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    iput-object v10, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    iput-object p0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iput-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->addFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    goto/16 :goto_6

    :cond_e
    move v0, v9

    goto :goto_a

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with another fragment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_11
    iget-boolean v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    if-eqz v0, :cond_3

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    goto/16 :goto_7

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SeslFragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " did not create a view."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    goto/16 :goto_8

    :cond_14
    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_9
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public performPendingDeferredStart(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 6

    const/4 v3, 0x0

    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDeferStart:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    if-nez v0, :cond_1

    iput-boolean v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDeferStart:Z

    iget v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHavePendingDeferredStart:Z

    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->checkStateLoss()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    if-eqz p3, :cond_5

    :cond_0
    const/4 v2, -0x1

    if-eqz p3, :cond_7

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-gez v2, :cond_8

    :cond_2
    if-ltz v2, :cond_b

    and-int/lit8 v4, p5, 0x1

    if-nez v4, :cond_c

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_f

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_2
    if-gt v1, v2, :cond_10

    :goto_3
    return v6

    :cond_4
    return v5

    :cond_5
    if-gez p4, :cond_0

    and-int/lit8 v4, p5, 0x1

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    if-ltz v3, :cond_6

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return v5

    :cond_7
    if-gez p4, :cond_1

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    if-nez p3, :cond_9

    :goto_4
    if-gez p4, :cond_a

    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_9
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_4

    :cond_a
    iget v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    if-eq p4, v4, :cond_2

    goto :goto_5

    :cond_b
    return v5

    :cond_c
    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-ltz v2, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    if-nez p3, :cond_e

    :cond_d
    if-ltz p4, :cond_3

    iget v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_3

    :goto_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_e
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_7

    :cond_f
    return v5

    :cond_10
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 3

    iget v0, p3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-ltz v0, :cond_0

    :goto_0
    iget v0, p3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not currently in the SeslFragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public removeFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v5, :cond_2

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isInBackStack()Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    :goto_1
    iget-boolean v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    if-nez v5, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-nez v5, :cond_5

    :cond_1
    :goto_2
    iput-boolean v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    iput-boolean v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRemoving:Z

    :goto_3
    return-void

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " nesting="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "SeslFragmentManager"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    if-nez v2, :cond_0

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    iget-boolean v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v5, :cond_1

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_2
.end method

.method reportBackStackChanged()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method restoreAllState(Landroid/os/Parcelable;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)V
    .locals 14

    if-eqz p1, :cond_2

    move-object v4, p1

    check-cast v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;

    iget-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mActive:[Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    if-eqz v11, :cond_3

    const/4 v1, 0x0

    if-nez p2, :cond_4

    :cond_0
    iget-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mBackStack:[Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    if-nez v11, :cond_b

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    :cond_1
    iget v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mPrimaryNavActiveIndex:I

    if-gez v11, :cond_e

    :goto_0
    iget v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mNextFragmentIndex:I

    iput v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNextFragmentIndex:I

    return-void

    :cond_2
    return-void

    :cond_3
    return-void

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v1

    if-nez v9, :cond_6

    const/4 v2, 0x0

    :goto_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_0

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    sget-boolean v11, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v11, :cond_7

    :goto_3
    const/4 v7, 0x0

    :goto_4
    iget-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mActive:[Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    array-length v11, v11

    if-lt v7, v11, :cond_8

    :cond_5
    iget-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mActive:[Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    array-length v11, v11

    if-eq v7, v11, :cond_9

    :goto_5
    iget-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mActive:[Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    aget-object v5, v11, v7

    iput-object v3, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    const/4 v11, 0x0

    iput-object v11, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    const/4 v11, 0x0

    iput v11, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    const/4 v11, 0x0

    iput-object v11, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v11, :cond_a

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "restoreAllState: re-attaching retained "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "SeslFragmentManager"

    invoke-static {v12, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    iget-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mActive:[Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    aget-object v11, v11, v7

    iget v11, v11, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mIndex:I

    iget v12, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-eq v11, v12, :cond_5

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Could not find active fragment with index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_5

    :cond_a
    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v12, "android:view_state"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v11

    iput-object v11, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v11, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_6

    :cond_b
    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mBackStack:[Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    array-length v12, v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    const/4 v6, 0x0

    :goto_7
    iget-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mBackStack:[Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    array-length v11, v11

    if-ge v6, v11, :cond_1

    iget-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mBackStack:[Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    aget-object v11, v11, v6

    invoke-virtual {v11, p0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->instantiate(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;)Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    move-result-object v0

    sget-boolean v11, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v11, :cond_c

    :goto_8
    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v11, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    if-gez v11, :cond_d

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "restoreAllState: back stack #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " (index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "SeslFragmentManager"

    invoke-static {v12, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;

    const-string/jumbo v11, "SeslFragmentManager"

    invoke-direct {v8, v11}, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string/jumbo v11, "  "

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v10, v12}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    goto :goto_8

    :cond_d
    iget v11, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    invoke-virtual {p0, v11, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->setBackStackIndex(ILcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V

    goto :goto_9

    :cond_e
    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v12, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iput-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPrimaryNav:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    goto/16 :goto_0
.end method

.method retainNonConfig()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mSavedNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->setRetaining(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mSavedNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 13

    const/4 v12, 0x0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->forcePostponedTransactions()V

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->endAnimatingAwayFragments()V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    iput-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mSavedNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v9, :cond_1

    :cond_0
    return-object v12

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-lez v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v0, :cond_4

    if-eqz v7, :cond_d

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_f

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v9, :cond_12

    :cond_3
    new-instance v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;

    invoke-direct {v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;-><init>()V

    iput-object v1, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mActive:[Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    iput-object v2, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mAdded:[I

    iput-object v3, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mBackStack:[Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPrimaryNav:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v9, :cond_14

    :goto_1
    iget v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNextFragmentIndex:I

    iput v9, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mNextFragmentIndex:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->saveNonConfig()V

    return-object v5

    :cond_4
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v4, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    iget v9, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-ltz v9, :cond_9

    :goto_3
    const/4 v7, 0x1

    new-instance v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    invoke-direct {v6, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    aput-object v6, v1, v8

    iget v9, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    if-gtz v9, :cond_a

    :cond_7
    iget-object v9, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v9, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_8
    :goto_4
    sget-boolean v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Saved state of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SeslFragmentManager"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_3

    :cond_a
    iget-object v9, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_7

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->saveFragmentBasicState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v9, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v9, :cond_8

    iget-object v9, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v9, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-ltz v9, :cond_b

    :goto_5
    iget-object v9, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v9, :cond_c

    :goto_6
    iget-object v9, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v10, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    const-string/jumbo v11, "android:target_state"

    invoke-virtual {p0, v9, v11, v10}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    iget v9, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetRequestCode:I

    if-eqz v9, :cond_8

    iget-object v9, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget v10, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetRequestCode:I

    const-string/jumbo v11, "android:target_req_state"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_b
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " has target not in fragment manager: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_5

    :cond_c
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_6

    :cond_d
    sget-boolean v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v9, :cond_e

    :goto_7
    return-object v12

    :cond_e
    const-string/jumbo v9, "SeslFragmentManager"

    const-string/jumbo v10, "saveAllState: no fragments!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_f
    new-array v2, v0, [I

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v0, :cond_2

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v9, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    aput v9, v2, v8

    aget v9, v2, v8

    if-ltz v9, :cond_10

    :goto_9
    sget-boolean v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v9, :cond_11

    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_10
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v2, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_9

    :cond_11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "saveAllState: adding fragment #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    const-string/jumbo v11, "SeslFragmentManager"

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_12
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-array v3, v0, [Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v0, :cond_3

    new-instance v10, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    invoke-direct {v10, v9}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V

    aput-object v10, v3, v8

    sget-boolean v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v9, :cond_13

    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "saveAllState: adding back stack #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    const-string/jumbo v11, "SeslFragmentManager"

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_14
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPrimaryNav:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v9, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    iput v9, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mPrimaryNavActiveIndex:I

    goto/16 :goto_1
.end method

.method saveFragmentBasicState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Landroid/os/Bundle;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v1, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/os/Bundle;Z)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-nez v1, :cond_2

    :goto_2
    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v1, :cond_3

    :goto_3
    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    if-eqz v1, :cond_5

    :goto_4
    return-object v0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->saveFragmentViewState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    :goto_5
    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    const-string/jumbo v2, "android:view_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_3

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    :goto_6
    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    const-string/jumbo v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_6
.end method

.method saveFragmentViewState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :goto_0
    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :goto_1
    return-void

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_1
.end method

.method saveNonConfig()V
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v6, :cond_2

    :cond_0
    if-eqz v3, :cond_c

    :cond_1
    new-instance v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    invoke-direct {v6, v3, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mSavedNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    :goto_0
    return-void

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v2, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v6, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetainInstance:Z

    if-nez v6, :cond_7

    :cond_5
    :goto_3
    iget-object v6, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v6, :cond_a

    iget-object v0, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    :goto_4
    if-eqz v1, :cond_b

    :cond_6
    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    :goto_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v6, :cond_9

    const/4 v6, -0x1

    :goto_6
    iput v6, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetIndex:I

    sget-boolean v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "retainNonConfig: keeping retained "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "SeslFragmentManager"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    :cond_9
    iget-object v6, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v6, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    goto :goto_6

    :cond_a
    iget-object v6, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->saveNonConfig()V

    iget-object v6, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v0, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mSavedNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    goto :goto_4

    :cond_b
    if-eqz v0, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_6

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_c
    if-nez v1, :cond_1

    iput-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mSavedNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    goto/16 :goto_0
.end method

.method public setBackStackIndex(ILcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V
    .locals 5

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    :goto_1
    if-lt v2, p1, :cond_3

    sget-boolean v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v3, :cond_6

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    monitor-exit p0

    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    sget-boolean v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v3, :cond_2

    :goto_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SeslFragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    :goto_5
    sget-boolean v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v3, :cond_5

    :goto_6
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    goto :goto_5

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding available back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SeslFragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SeslFragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public setPrimaryNavigationFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPrimaryNav:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v0

    if-ne v0, p0, :cond_2

    goto :goto_0
.end method

.method public showFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v1, :cond_0

    :goto_0
    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SeslFragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHiddenChanged:Z

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHiddenChanged:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method startPendingDeferredFragments()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->performPendingDeferredStart(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "SeslFragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslDebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    :goto_0
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslDebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
