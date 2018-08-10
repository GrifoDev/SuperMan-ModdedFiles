.class public Lcom/android/server/cover/CoverHideAnimator;
.super Ljava/lang/Object;
.source "CoverHideAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverHideAnimator$1;,
        Lcom/android/server/cover/CoverHideAnimator$2;,
        Lcom/android/server/cover/CoverHideAnimator$3;
    }
.end annotation


# instance fields
.field private final FADE_IN_ANIMATION_DURATION:J

.field private final FADE_OUT_ANIMATION_DURATION:J

.field private final FADE_OUT_ANIMATION_START_DELAY:J

.field private final MSG_SEND_COVER_CANCEL_ANIMATION:I

.field private final MSG_SEND_COVER_START_ANIMATION:I

.field private final TAG:Ljava/lang/String;

.field private mAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mCallbackRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCoverHideView:Landroid/view/View;

.field private mFadeInAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mFadeOutAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mWindowLP:Landroid/view/WindowManager$LayoutParams;

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/cover/CoverHideAnimator;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cover/CoverHideAnimator;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mCallbackRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cover/CoverHideAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/cover/CoverHideAnimator;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mFadeOutAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/cover/CoverHideAnimator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/cover/CoverHideAnimator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverHideAnimator;->mCallbackRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/CoverHideAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/CoverHideAnimator;->handleCancelAnimation()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/CoverHideAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/CoverHideAnimator;->handleStartAnimation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/cover/CoverHideAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/CoverHideAnimator;->removeViewFromWindow()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CoverManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/cover/CoverHideAnimator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/server/cover/CoverHideAnimator;->FADE_IN_ANIMATION_DURATION:J

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/android/server/cover/CoverHideAnimator;->FADE_OUT_ANIMATION_START_DELAY:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/cover/CoverHideAnimator;->FADE_OUT_ANIMATION_DURATION:J

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/server/cover/CoverHideAnimator;->MSG_SEND_COVER_START_ANIMATION:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/server/cover/CoverHideAnimator;->MSG_SEND_COVER_CANCEL_ANIMATION:I

    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    new-instance v0, Lcom/android/server/cover/CoverHideAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverHideAnimator$1;-><init>(Lcom/android/server/cover/CoverHideAnimator;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/cover/CoverHideAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverHideAnimator$2;-><init>(Lcom/android/server/cover/CoverHideAnimator;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mFadeInAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/server/cover/CoverHideAnimator$3;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverHideAnimator$3;-><init>(Lcom/android/server/cover/CoverHideAnimator;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mFadeOutAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    iput-object p1, p0, Lcom/android/server/cover/CoverHideAnimator;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mWm:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "clear cover animation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x4080008

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private handleCancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-direct {p0}, Lcom/android/server/cover/CoverHideAnimator;->removeViewFromWindow()V

    :cond_0
    return-void
.end method

.method private handleStartAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleStartAnimation : mCoverHideView is not null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/cover/CoverHideAnimator;->removeViewFromWindow()V

    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/cover/CoverHideAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverHideAnimator;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverHideAnimator;->mFadeInAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private removeViewFromWindow()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v2, p0, Lcom/android/server/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method cancelHideAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "cancelHideAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method playCoverHideAnimation(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "playCoverHideAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/cover/CoverHideAnimator;->mCallbackRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
