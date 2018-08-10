.class Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;
.super Ljava/lang/Object;
.source "SeslFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationInfo"
.end annotation


# instance fields
.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field mAnimatingAway:Landroid/view/View;

.field mAnimator:Landroid/animation/Animator;

.field private mEnterTransition:Landroid/transition/Transition;

.field mEnterTransitionCallback:Landroid/app/SharedElementCallback;

.field mEnterTransitionPostponed:Z

.field private mExitTransition:Landroid/transition/Transition;

.field mExitTransitionCallback:Landroid/app/SharedElementCallback;

.field mIsHideReplaced:Z

.field mNextAnim:I

.field mNextTransition:I

.field mNextTransitionStyle:I

.field private mReenterTransition:Landroid/transition/Transition;

.field private mReturnTransition:Landroid/transition/Transition;

.field private mSharedElementEnterTransition:Landroid/transition/Transition;

.field private mSharedElementReturnTransition:Landroid/transition/Transition;

.field mStartEnterTransitionListener:Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;

.field mStateAfterAnimating:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mEnterTransition:Landroid/transition/Transition;

    sget-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mReturnTransition:Landroid/transition/Transition;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mExitTransition:Landroid/transition/Transition;

    sget-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mReenterTransition:Landroid/transition/Transition;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mSharedElementEnterTransition:Landroid/transition/Transition;

    sget-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mSharedElementReturnTransition:Landroid/transition/Transition;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mReturnTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mReenterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mSharedElementReturnTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    return-object v0
.end method
