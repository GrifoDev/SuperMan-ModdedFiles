.class public Landroid/support/v17/leanback/app/PlaybackOverlayFragment;
.super Landroid/support/v17/leanback/app/DetailsFragment;
.source "PlaybackOverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;,
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$2;,
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$3;,
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$4;,
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$5;,
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$AnimatorListener;,
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$FadeHandler;,
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$InputEventHandler;,
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$OnFadeCompleteListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static START_FADE_OUT:I

.field static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field mAnimationTranslateY:I

.field private mBackgroundType:I

.field mBgAlpha:I

.field private mBgDarkColor:I

.field private mBgFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mBgLightColor:I

.field private mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mDescriptionFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mDescriptionFadeOutAnimator:Landroid/animation/ValueAnimator;

.field mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackOverlayFragment$OnFadeCompleteListener;

.field private final mFadeListener:Landroid/animation/Animator$AnimatorListener;

.field mFadingEnabled:Z

.field mFadingStatus:I

.field final mFragmentReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v17/leanback/app/PlaybackOverlayFragment;",
            ">;"
        }
    .end annotation
.end field

.field mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

.field private mInputEventHandler:Landroid/support/v17/leanback/app/PlaybackControlGlue$InputEventHandler;

.field private mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mMajorFadeTranslateY:I

.field private mMinorFadeTranslateY:I

.field private final mObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

.field private final mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

.field private final mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

.field private mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mOtherRowsCenterToBottom:I

.field private mPaddingBottom:I

.field mResetControlsToPrimaryActionsPending:Z

.field private mRootView:Landroid/view/View;

.field private mShowTimeMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->START_FADE_OUT:I

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$FadeHandler;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$FadeHandler;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x64

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v17/leanback/app/DetailsFragment;-><init>()V

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBackgroundType:I

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingEnabled:Z

    iput v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFragmentReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$2;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$3;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    new-instance v0, Landroid/support/v17/leanback/animation/LogDecelerateInterpolator;

    invoke-direct {v0, v2, v1}, Landroid/support/v17/leanback/animation/LogDecelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;

    invoke-direct {v0, v2, v1}, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$4;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$5;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    return-void
.end method

.method private areControlsHidden()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgAlpha:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;
    .locals 6

    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private loadBgAnimator()V
    .locals 4

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$6;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$6;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_bg_fade_in:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_bg_fade_out:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private loadControlRowAnimator()V
    .locals 5

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$7;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$7;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    new-instance v2, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$8;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$8;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_in:I

    invoke-static {v0, v3}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v3, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_out:I

    invoke-static {v0, v3}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private loadDescriptionAnimator()V
    .locals 4

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$11;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$11;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_description_fade_in:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_description_fade_out:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private loadOtherRowAnimator()V
    .locals 5

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$9;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$9;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    new-instance v2, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$10;

    invoke-direct {v2, p0, v1}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$10;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;Landroid/support/v17/leanback/app/PlaybackOverlayFragment$AnimatorListener;)V

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_in:I

    invoke-static {v0, v3}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v3, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_out:I

    invoke-static {v0, v3}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private updateBackground()V
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgDarkColor:I

    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBackgroundType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mRootView:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :pswitch_1
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgLightColor:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method enableVerticalGridAnimations(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    :cond_0
    return-void
.end method

.method fade(Z)V
    .locals 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    if-ne v2, v3, :cond_2

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_3

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    if-eq v2, v4, :cond_1

    :cond_3
    if-eqz p1, :cond_5

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgAlpha:I

    const/16 v5, 0xff

    if-ne v2, v5, :cond_5

    :cond_4
    return-void

    :cond_5
    if-nez p1, :cond_6

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgAlpha:I

    if-eqz v2, :cond_4

    :cond_6
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mMajorFadeTranslateY:I

    :goto_0
    iput v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mAnimationTranslateY:I

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    if-nez v2, :cond_9

    if-eqz p1, :cond_8

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz p1, :cond_b

    sget v2, Landroid/support/v17/leanback/R$string;->lb_playback_controls_shown:I

    :goto_2
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_c

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    if-nez v2, :cond_c

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_c

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v5, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mAnimationTranslateY:I

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mMinorFadeTranslateY:I

    goto :goto_0

    :cond_8
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_9
    if-eqz p1, :cond_a

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_1

    :cond_a
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_1

    :cond_b
    sget v2, Landroid/support/v17/leanback/R$string;->lb_playback_controls_hidden:I

    goto :goto_2

    :cond_c
    if-eqz p1, :cond_d

    move v2, v3

    :goto_4
    iput v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    return-void

    :cond_d
    move v2, v4

    goto :goto_4
.end method

.method getControlRowView()Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/DetailsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_other_rows_center_to_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowsCenterToBottom:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mPaddingBottom:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$color;->lb_playback_controls_background_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgDarkColor:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$color;->lb_playback_controls_background_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgLightColor:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$integer;->lb_playback_controls_show_time_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mShowTimeMs:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_major_fade_translate_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mMajorFadeTranslateY:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_minor_fade_translate_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mMinorFadeTranslateY:I

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadBgAnimator()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadControlRowAnimator()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadOtherRowAnimator()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadDescriptionAnimator()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/DetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mRootView:Landroid/view/View;

    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgAlpha:I

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->updateBackground()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getRowsFragment()Landroid/support/v17/leanback/app/RowsFragment;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setExternalAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mRootView:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostDestroy()V

    :cond_0
    invoke-super {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->onDestroyView()V

    return-void
.end method

.method onInterceptInputEvent(Landroid/view/InputEvent;)Z
    .locals 6

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->areControlsHidden()Z

    move-result v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mInputEventHandler:Landroid/support/v17/leanback/app/PlaybackControlGlue$InputEventHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mInputEventHandler:Landroid/support/v17/leanback/app/PlaybackControlGlue$InputEventHandler;

    invoke-interface {v3, p1}, Landroid/support/v17/leanback/app/PlaybackControlGlue$InputEventHandler;->handleInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    :cond_0
    instance-of v3, p1, Landroid/view/KeyEvent;

    if-eqz v3, :cond_1

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    :cond_1
    sparse-switch v2, :sswitch_data_0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->tickle()V

    :cond_2
    :goto_0
    return v0

    :sswitch_0
    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->tickle()V

    goto :goto_0

    :sswitch_1
    iget-boolean v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingEnabled:Z

    if-eqz v3, :cond_4

    xor-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    sget-object v3, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->sHandler:Landroid/os/Handler;

    sget v4, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->START_FADE_OUT:I

    iget-object v5, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->fade(Z)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->tickle()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x6f -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostPause()V

    :cond_0
    invoke-super {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->onResume()V

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->setBgAlpha(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->fade(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnTouchInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnKeyInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostResume()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->onStart()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getRowsFragment()Landroid/support/v17/leanback/app/RowsFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostStop()V

    :cond_0
    invoke-super {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->onStop()V

    return-void
.end method

.method resetControlsToPrimaryActions(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    :cond_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mResetControlsToPrimaryActionsPending:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mResetControlsToPrimaryActionsPending:Z

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->showPrimaryActions(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V

    goto :goto_0
.end method

.method setBgAlpha(I)V
    .locals 1

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgAlpha:I

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public final setEventHandler(Landroid/support/v17/leanback/app/PlaybackControlGlue$InputEventHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mInputEventHandler:Landroid/support/v17/leanback/app/PlaybackControlGlue$InputEventHandler;

    return-void
.end method

.method public setFadingEnabled(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingEnabled:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingEnabled:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->sHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->START_FADE_OUT:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->startFadeTimer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->sHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->START_FADE_OUT:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->fade(Z)V

    goto :goto_0
.end method

.method setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    return-void
.end method

.method setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mPaddingBottom:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowsCenterToBottom:I

    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mPaddingBottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingRight()I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mPaddingBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPadding(IIII)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    return-void
.end method

.method startFadeTimer()V
    .locals 4

    sget-object v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->sHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->START_FADE_OUT:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    sget-object v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->sHandler:Landroid/os/Handler;

    sget v2, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->START_FADE_OUT:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mShowTimeMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public tickle()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->isResumed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->sHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->START_FADE_OUT:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->startFadeTimer()V

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->fade(Z)V

    goto :goto_0
.end method

.method updateControlsBottomSpace(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    if-le v0, v3, :cond_3

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->showBottomSpace(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;Z)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method
