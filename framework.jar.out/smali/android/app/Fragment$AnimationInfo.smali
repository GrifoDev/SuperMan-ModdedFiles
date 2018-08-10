.class Landroid/app/Fragment$AnimationInfo;
.super Ljava/lang/Object;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationInfo"
.end annotation


# instance fields
.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field mAnimatingAway:Landroid/animation/Animator;

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

.field mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

.field mStateAfterAnimating:I


# direct methods
.method static synthetic -get0(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method static synthetic -get3(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method static synthetic -get4(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mReenterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method static synthetic -get5(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mReturnTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method static synthetic -get6(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method static synthetic -get7(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set1(Landroid/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set2(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mEnterTransition:Landroid/transition/Transition;

    return-object p1
.end method

.method static synthetic -set3(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mExitTransition:Landroid/transition/Transition;

    return-object p1
.end method

.method static synthetic -set4(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mReenterTransition:Landroid/transition/Transition;

    return-object p1
.end method

.method static synthetic -set5(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mReturnTransition:Landroid/transition/Transition;

    return-object p1
.end method

.method static synthetic -set6(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object p1
.end method

.method static synthetic -set7(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Landroid/transition/Transition;

    return-object p1
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/Fragment$AnimationInfo;->mEnterTransition:Landroid/transition/Transition;

    invoke-static {}, Landroid/app/Fragment;->-get0()Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mReturnTransition:Landroid/transition/Transition;

    iput-object v1, p0, Landroid/app/Fragment$AnimationInfo;->mExitTransition:Landroid/transition/Transition;

    invoke-static {}, Landroid/app/Fragment;->-get0()Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mReenterTransition:Landroid/transition/Transition;

    iput-object v1, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Landroid/transition/Transition;

    invoke-static {}, Landroid/app/Fragment;->-get0()Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    return-void
.end method
