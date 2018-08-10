.class public Landroid/support/v17/leanback/app/PlaybackFragment;
.super Landroid/app/Fragment;
.source "PlaybackFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/PlaybackFragment$1;,
        Landroid/support/v17/leanback/app/PlaybackFragment$2;,
        Landroid/support/v17/leanback/app/PlaybackFragment$3;,
        Landroid/support/v17/leanback/app/PlaybackFragment$4;,
        Landroid/support/v17/leanback/app/PlaybackFragment$5;,
        Landroid/support/v17/leanback/app/PlaybackFragment$6;,
        Landroid/support/v17/leanback/app/PlaybackFragment$7;,
        Landroid/support/v17/leanback/app/PlaybackFragment$8;,
        Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;,
        Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;
    }
.end annotation


# static fields
.field private static START_FADE_OUT:I


# instance fields
.field mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private final mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field mAnimationTranslateY:I

.field mBackgroundType:I

.field mBackgroundView:Landroid/view/View;

.field mBgAlpha:I

.field mBgDarkColor:I

.field mBgFadeInAnimator:Landroid/animation/ValueAnimator;

.field mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

.field mBgLightColor:I

.field final mChainedClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

.field mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

.field mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

.field mControlVisible:Z

.field mControlVisibleBeforeOnCreateView:Z

.field mExternalItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

.field mExternalItemSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

.field mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;

.field private final mFadeListener:Landroid/animation/Animator$AnimatorListener;

.field mFadingEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

.field mInSeek:Z

.field mInputEventHandler:Landroid/view/View$OnKeyListener;

.field private mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

.field mMajorFadeTranslateY:I

.field mMinorFadeTranslateY:I

.field private final mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

.field private final mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

.field private final mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

.field private final mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

.field mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

.field mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

.field mOtherRowsCenterToBottom:I

.field mPaddingBottom:I

.field mPlaybackItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

.field mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

.field mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

.field mRootView:Landroid/view/View;

.field mRow:Landroid/support/v17/leanback/widget/Row;

.field mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

.field mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

.field private final mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;

.field mShowTimeMs:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Landroid/support/v17/leanback/app/PlaybackFragment;->START_FADE_OUT:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/support/v17/leanback/app/PlaybackFragment;Landroid/view/InputEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->onInterceptInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/support/v17/leanback/app/PlaybackFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->enableVerticalGridAnimations(Z)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/support/v17/leanback/app/PlaybackFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setBgAlpha(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Landroid/support/v17/leanback/app/PlaybackFragment;->START_FADE_OUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/app/ProgressBarManager;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$1;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$2;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;

    iput v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundType:I

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadingEnabled:Z

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisibleBeforeOnCreateView:Z

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$3;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$4;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$5;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$6;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$6;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    new-instance v0, Landroid/support/v17/leanback/animation/LogDecelerateInterpolator;

    invoke-direct {v0, v4, v3}, Landroid/support/v17/leanback/animation/LogDecelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;

    invoke-direct {v0, v4, v3}, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$7;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$7;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$8;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$8;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mChainedClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/support/v17/leanback/app/ProgressBarManager;->setInitialDelay(J)V

    return-void
.end method

.method private enableVerticalGridAnimations(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    :cond_0
    return-void
.end method

.method static endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0
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

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackFragment$9;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$9;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_bg_fade_in:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_bg_fade_out:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private loadControlRowAnimator()V
    .locals 4

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackFragment$10;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$10;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_in:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_out:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private loadOtherRowAnimator()V
    .locals 4

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackFragment$11;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$11;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_in:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_out:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private onInterceptInputEvent(Landroid/view/InputEvent;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v4, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    xor-int/lit8 v1, v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    instance-of v4, p1, Landroid/view/KeyEvent;

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Landroid/view/KeyEvent;

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    move-object v4, p1

    check-cast v4, Landroid/view/KeyEvent;

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    iget-object v4, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInputEventHandler:Landroid/view/View$OnKeyListener;

    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInputEventHandler:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object v6

    move-object v4, p1

    check-cast v4, Landroid/view/KeyEvent;

    invoke-interface {v5, v6, v3, v4}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    sparse-switch v3, :sswitch_data_0

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->tickle()V

    :cond_1
    :goto_0
    return v0

    :sswitch_0
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->tickle()V

    goto :goto_0

    :sswitch_1
    iget-boolean v4, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInSeek:Z

    if-eqz v4, :cond_3

    return v7

    :cond_3
    if-nez v1, :cond_1

    const/4 v0, 0x1

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v8, :cond_1

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/app/PlaybackFragment;->hideControlsOverlay(Z)V

    goto :goto_0

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

.method static reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0
.end method

.method private setBgAlpha(I)V
    .locals 1

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgAlpha:I

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private setupChildFragmentLayout()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    return-void
.end method

.method private setupPresenter()V
    .locals 4

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;-><init>()V

    move-object v1, v0

    check-cast v1, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Row;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, v0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Row;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    goto :goto_0
.end method

.method private setupRow()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    instance-of v2, v2, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    if-eqz v2, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    check-cast v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v0, v3, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    instance-of v2, v2, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    if-eqz v2, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    check-cast v1, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v1, v3, v2}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private startFadeTimer()V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackFragment;->START_FADE_OUT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackFragment;->START_FADE_OUT:I

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mShowTimeMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private stopFadeTimer()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackFragment;->START_FADE_OUT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private updateBackground()V
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgDarkColor:I

    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgAlpha:I

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setBgAlpha(I)V

    :cond_0
    return-void

    :pswitch_1
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgLightColor:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    return-object v0
.end method

.method getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    return-object v0
.end method

.method public hideControlsOverlay(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(ZZ)V

    return-void
.end method

.method public notifyPlaybackRowChanged()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method protected onBufferingStateChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;->hide()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_other_rows_center_to_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowsCenterToBottom:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPaddingBottom:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$color;->lb_playback_controls_background_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgDarkColor:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$color;->lb_playback_controls_background_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgLightColor:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$integer;->lb_playback_controls_show_time_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mShowTimeMs:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_major_fade_translate_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mMajorFadeTranslateY:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_minor_fade_translate_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mMinorFadeTranslateY:I

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadBgAnimator()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadControlRowAnimator()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadOtherRowAnimator()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_playback_fragment:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRootView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRootView:Landroid/view/View;

    sget v2, Landroid/support/v17/leanback/R$id;->playback_fragment_background:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->playback_controls_dock:I

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/app/RowsFragment;

    iput-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {v1}, Landroid/support/v17/leanback/app/RowsFragment;-><init>()V

    iput-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->playback_controls_dock:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v1, :cond_2

    new-instance v1, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    new-instance v2, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;-><init>()V

    invoke-direct {v1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    const/16 v1, 0xff

    iput v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgAlpha:I

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->updateBackground()V

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/RowsFragment;->setExternalAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/ProgressBarManager;->setRootView(Landroid/view/ViewGroup;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRootView:Landroid/view/View;

    return-object v1

    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/RowsFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostDestroy()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRootView:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method protected onError(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostPause()V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackFragment;->START_FADE_OUT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackFragment;->START_FADE_OUT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadingEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->startFadeTimer()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnTouchInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnKeyInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostResume()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupChildFragmentLayout()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostStop()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method protected onVideoSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisibleBeforeOnCreateView:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(ZZ)V

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisibleBeforeOnCreateView:Z

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupRow()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupPresenter()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setPlaybackRowPresenterAlignment()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :cond_0
    return-void
.end method

.method public setBackgroundType(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid background type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundType:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundType:I

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->updateBackground()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setControlsOverlayAutoHideEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadingEnabled:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadingEnabled:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(Z)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->startFadeTimer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->stopFadeTimer()V

    goto :goto_0
.end method

.method public setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    return-void
.end method

.method public final setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInputEventHandler:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public setOnPlaybackItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPlaybackItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    return-void
.end method

.method public setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupRow()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupPresenter()V

    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupPresenter()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setPlaybackRowPresenterAlignment()V

    return-void
.end method

.method setPlaybackRowPresenterAlignment()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenters()[Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v4, v3, v1

    instance-of v4, v4, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v4, :cond_0

    aget-object v4, v3, v1

    const-class v5, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/Presenter;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v2, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    invoke-virtual {v0, v6}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    aput-object v0, v4, v6

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->setAlignmentDefs([Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;)V

    aget-object v4, v3, v1

    const-class v5, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v4, v5, v2}, Landroid/support/v17/leanback/widget/Presenter;->setFacet(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    return-void
.end method

.method setSeekMode(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInSeek:Z

    if-ne v3, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInSeek:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    iget-boolean v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInSeek:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->stopFadeTimer()V

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(Z)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_2

    iget-boolean v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInSeek:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    return-void
.end method

.method setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPaddingBottom:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowsCenterToBottom:I

    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPaddingBottom:I

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

    iget v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPaddingBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPadding(IIII)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    return-void
.end method

.method public showControlsOverlay(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(ZZ)V

    return-void
.end method

.method showControlsOverlay(ZZ)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisibleBeforeOnCreateView:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    :cond_2
    return-void

    :cond_3
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->stopFadeTimer()V

    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mMajorFadeTranslateY:I

    :goto_0
    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAnimationTranslateY:I

    if-eqz p1, :cond_8

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    :goto_1
    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_9

    sget v0, Landroid/support/v17/leanback/R$string;->lb_playback_controls_shown:I

    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_6
    return-void

    :cond_7
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mMinorFadeTranslateY:I

    goto :goto_0

    :cond_8
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    goto :goto_1

    :cond_9
    sget v0, Landroid/support/v17/leanback/R$string;->lb_playback_controls_hidden:I

    goto :goto_2
.end method

.method public tickle()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->stopFadeTimer()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(Z)V

    return-void
.end method
