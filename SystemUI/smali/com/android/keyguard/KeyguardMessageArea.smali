.class public Lcom/android/keyguard/KeyguardMessageArea;
.super Lcom/android/systemui/widget/SystemUITextView;
.source "KeyguardMessageArea.java"

# interfaces
.implements Lcom/android/keyguard/SecurityMessageDisplay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardMessageArea$1;,
        Lcom/android/keyguard/KeyguardMessageArea$2;,
        Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;,
        Lcom/android/keyguard/KeyguardMessageArea$BounceInterpolator;
    }
.end annotation


# static fields
.field private static final ANNOUNCE_TOKEN:Ljava/lang/Object;


# instance fields
.field private mBounceInterpolator:Lcom/android/keyguard/KeyguardMessageArea$BounceInterpolator;

.field private mBouncerShowing:Z

.field private final mClearMessageRunnable:Ljava/lang/Runnable;

.field private mCurrentOrientation:I

.field private final mDefaultColor:I

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mMessage:Ljava/lang/CharSequence;

.field private mNextMessageColor:I

.field private mTimeout:J


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardMessageArea;)Lcom/android/keyguard/KeyguardMessageArea$BounceInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBounceInterpolator:Lcom/android/keyguard/KeyguardMessageArea$BounceInterpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardMessageArea;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardMessageArea;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardMessageArea;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardMessageArea;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardMessageArea;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->updateLayout()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColor:I

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    iput v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCurrentOrientation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBouncerShowing:Z

    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$2;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mDefaultColor:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$BounceInterpolator;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardMessageArea$BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBounceInterpolator:Lcom/android/keyguard/KeyguardMessageArea$BounceInterpolator;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    return-void
.end method

.method private clearMessage()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    return-void
.end method

.method public static findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 4

    const v1, 0x7f0a0285

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find keyguard_message_area in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private securityMessageChanged(Ljava/lang/CharSequence;)V
    .locals 8

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBouncerShowing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_1
    return-void
.end method

.method private update()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_0

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenHelpTextEnabled()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_1
.end method

.method private updateLayout()V
    .locals 5

    const v4, 0x7f070263

    const v3, 0x7f07023a

    const/4 v2, 0x0

    sget-object v0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object v1, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object v1, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public displayFailedAnimation()V
    .locals 4

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, -0x3e380000    # -25.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$3;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public varargs formatMessage(I[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->updateLayout()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCurrentOrientation:I

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onFinishInflate()V

    sget-object v1, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    sget-object v1, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->updateLayout()V

    return-void
.end method

.method public setMessage(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->clearMessage()V

    goto :goto_0
.end method

.method public setNextMessageColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColor:I

    return-void
.end method

.method public setTimeout(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    return-void
.end method
