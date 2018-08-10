.class public Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;
.super Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;
.source "FingerPrintAlertView.java"


# instance fields
.field private isPopupAlert:Z

.field private mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

.field private mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

.field private mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

.field private mContext:Landroid/content/Context;

.field private mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

.field private mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

.field private mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

.field private mIsRearSensor:Z

.field private mUiVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Z)V

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsRearSensor:Z

    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Z)V

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsRearSensor:Z

    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    iput-boolean p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsRearSensor:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsRearSensor:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsRearSensor:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createAnimation()V
    .locals 12

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v3, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v10, 0x14d

    invoke-virtual {v3, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v10, 0x341

    invoke-virtual {v6, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v10, 0x14d

    invoke-virtual {v6, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    if-nez v9, :cond_0

    const-wide/16 v10, 0x341

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_0
    const-wide/16 v10, 0x48e

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v4, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v10, 0x14d

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v10, 0x341

    invoke-virtual {v7, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v10, 0x14d

    invoke-virtual {v7, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v10, 0x341

    invoke-virtual {v1, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v10, 0x48e

    invoke-virtual {v1, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    const-wide/16 v10, 0x48e

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v5, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v2, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v10, 0x14d

    invoke-virtual {v5, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v10, 0x341

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v10, 0x14d

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    if-nez v9, :cond_1

    const-wide/16 v10, 0x341

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_1
    const-wide/16 v10, 0x48e

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    const-wide/16 v10, 0x91c

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    :goto_2
    return-void

    :cond_0
    const-wide/16 v10, 0x14d

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    :cond_1
    const-wide/16 v10, 0x14d

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    const-wide/16 v10, 0x48e

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    goto :goto_2
.end method

.method private setAnimation()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->createAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setAnimationListener()V

    return-void
.end method

.method private setAnimationListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$1;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$2;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$3;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private setHorizontalGapDP(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_0
.end method

.method private setVerticalGapDP(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method private startInternalAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method protected getMaxStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsRearSensor:Z

    if-nez v2, :cond_0

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$layout;->layout_finger_print_alert_view_homekey:I

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->addView(Landroid/view/View;)V

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$id;->img_alert_fingerprint_01:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$id;->img_alert_fingerprint_02:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$id;->img_alert_fingerprint_03:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    if-ge v2, v5, :cond_1

    :goto_1
    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    if-le v2, v5, :cond_2

    :goto_2
    return-void

    :cond_0
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$layout;->layout_finger_print_alert_view:I

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsRearSensor:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->popup_alert_2_vertical_gap:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setVerticalGapDP(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->popup_alert_2_horizontal_gap:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setHorizontalGapDP(I)V

    goto :goto_2
.end method

.method protected onUpdate(IF)V
    .locals 0

    return-void
.end method

.method protected setAnimator(IZ)V
    .locals 0

    return-void
.end method

.method public setImageResources(III)V
    .locals 3

    const/4 v2, 0x0

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$id;->img_alert_bracket:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsRearSensor:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setVerticalGapDP(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setHorizontalGapDP(I)V

    goto :goto_0
.end method

.method public setUiVersion(IZ)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    iput-boolean p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsRearSensor:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public startAnimation()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->startInternalAnimation()V

    return-void
.end method
