.class public Lcom/android/systemui/volume/VolumeDialogMotion;
.super Ljava/lang/Object;
.source "VolumeDialogMotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogMotion$Callback;,
        Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;,
        Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimating:Z

.field private final mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

.field private final mChevron:Landroid/view/View;

.field private mChevronPositionAnimator:Landroid/animation/ValueAnimator;

.field private final mContents:Landroid/view/ViewGroup;

.field private mContentsPositionAnimator:Landroid/animation/ValueAnimator;

.field private final mDialog:Landroid/app/Dialog;

.field private final mDialogView:Landroid/view/View;

.field private mDismissing:Z

.field private final mHandler:Landroid/os/Handler;

.field private mShowing:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeDialogMotion;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->chevronPosY()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/VolumeDialogMotion;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion;->setDismissing(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/VolumeDialogMotion;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion;->setShowing(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/VolumeDialogMotion;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShowAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    iput-object p5, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$1;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$2;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method private chevronDistance()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    return v0
.end method

.method private chevronPosY()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method private static scaledDuration(I)I
    .locals 2

    int-to-float v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private setDismissing(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDismissing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->updateAnimating()V

    return-void
.end method

.method private setShowing(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->updateAnimating()V

    return-void
.end method

.method private startShowAnimation()V
    .locals 9

    const v8, 0x3ecccccd    # 0.4f

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startShowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;

    invoke-direct {v1, v6}, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$3;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->chevronDistance()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v4, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/16 v1, 0x190

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$4;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$5;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;

    invoke-direct {v1, v6}, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v4, v4, v7, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->chevronDistance()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v4, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/16 v1, 0xfa

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v8, v4, v7, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v8, v4, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private updateAnimating()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    if-nez v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAnimating = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/volume/VolumeDialogMotion$Callback;->onAnimatingChanged(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    return v0
.end method

.method public startDismiss(Ljava/lang/Runnable;)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->setDismissing(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->setShowing(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v1, 0xfa

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;

    invoke-direct {v1, v4}, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$6;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion$7;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public startShow()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->setShowing(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->setDismissing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShowAnimation()V

    return-void

    :cond_2
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mDialog.show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
