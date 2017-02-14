.class public Lcom/android/launcher2/CancelDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CancelDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CancelDrawable$CancelAnimationListener;
    }
.end annotation


# static fields
.field private static final SCALE_DURATION:I = 0x85

.field public static final SCALE_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/CancelDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mCancel:Landroid/graphics/drawable/Drawable;

.field private mCancelAnimationListener:Lcom/android/launcher2/CancelDrawable$CancelAnimationListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mDirection:F

.field private mIsAnimatingTranslate:Z

.field private mIsRepeat:Z

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mPreviousTranslateValue:F

.field private mScaleAnimator:Landroid/animation/Animator;

.field private mScaleFactor:F

.field private mTranslateAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslateDx:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/launcher2/CancelDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "scaleFactor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CancelDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/CancelDrawable;->SCALE_FACTOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/launcher2/CancelDrawable$CancelAnimationListener;)V
    .locals 4

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mBounds:Landroid/graphics/Rect;

    iput v2, p0, Lcom/android/launcher2/CancelDrawable;->mTranslateDx:F

    iput-boolean v1, p0, Lcom/android/launcher2/CancelDrawable;->mIsAnimatingTranslate:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CancelDrawable;->mIsRepeat:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iput v3, p0, Lcom/android/launcher2/CancelDrawable;->mScaleFactor:F

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mTranslateAnimators:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/launcher2/CancelDrawable;->mPreviousTranslateValue:F

    iput v3, p0, Lcom/android/launcher2/CancelDrawable;->mDirection:F

    iput-object p1, p0, Lcom/android/launcher2/CancelDrawable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher2/CancelDrawable;->mCancel:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/launcher2/CancelDrawable;->initAnimations()V

    iput-object p3, p0, Lcom/android/launcher2/CancelDrawable;->mCancelAnimationListener:Lcom/android/launcher2/CancelDrawable$CancelAnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/CancelDrawable;)Lcom/android/launcher2/CancelDrawable$CancelAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mCancelAnimationListener:Lcom/android/launcher2/CancelDrawable$CancelAnimationListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/CancelDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/CancelDrawable;->mIsAnimatingTranslate:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher2/CancelDrawable;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CancelDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/launcher2/CancelDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/CancelDrawable;->mIsRepeat:Z

    return p1
.end method

.method private initAnimations()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/CancelDrawable;->mContext:Landroid/content/Context;

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/CancelDrawable;->mTranslateAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setScaleAnimation(ZF)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mScaleAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    sget-object v0, Lcom/android/launcher2/CancelDrawable;->SCALE_FACTOR:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    :goto_0
    aput p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mScaleAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mScaleAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mScaleAnimator:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private startTranslateAnimation()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/launcher2/CancelDrawable;->mIsAnimatingTranslate:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/CancelDrawable;->mTranslateDx:F

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/CancelDrawable;->mTranslateAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/launcher2/CancelDrawable$2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/CancelDrawable$2;-><init>(Lcom/android/launcher2/CancelDrawable;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v1, p0, Lcom/android/launcher2/CancelDrawable;->mIsRepeat:Z

    if-nez v1, :cond_1

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    :cond_1
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_0
.end method

.method private stopCurrentAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CancelDrawable;->mIsAnimatingTranslate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CancelDrawable;->mIsAnimatingTranslate:Z

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mCancel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mCancel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mCancel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CancelDrawable;->mScaleFactor:F

    return v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mCancel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mCancel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/CancelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mCancel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher2/CancelDrawable;->mCancel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_3

    aget v6, p1, v2

    const v7, 0x10100a1

    if-ne v6, v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    aget v6, p1, v2

    const v7, 0x101009e

    if-ne v6, v7, :cond_1

    const/4 v1, 0x1

    :cond_1
    aget v6, p1, v2

    const v7, 0x10102fe

    if-ne v6, v7, :cond_2

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    move v3, v4

    :goto_1
    if-eqz v3, :cond_5

    iput-boolean v5, p0, Lcom/android/launcher2/CancelDrawable;->mIsRepeat:Z

    const v5, 0x3f99999a    # 1.2f

    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/CancelDrawable;->setScaleAnimation(ZF)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/CancelDrawable;->invalidateSelf()V

    return v4

    :cond_4
    move v3, v5

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/launcher2/CancelDrawable;->startTranslateAnimation()V

    goto :goto_2

    :cond_6
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p0, v5, v6}, Lcom/android/launcher2/CancelDrawable;->setScaleAnimation(ZF)V

    invoke-direct {p0}, Lcom/android/launcher2/CancelDrawable;->stopCurrentAnimation()V

    goto :goto_2
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setCancelTranslate(F)V
    .locals 6

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr p1, v5

    const/high16 v2, 0x41400000    # 12.0f

    iget v1, p0, Lcom/android/launcher2/CancelDrawable;->mTranslateDx:F

    iget v4, p0, Lcom/android/launcher2/CancelDrawable;->mPreviousTranslateValue:F

    sub-float v0, p1, v4

    iput p1, p0, Lcom/android/launcher2/CancelDrawable;->mPreviousTranslateValue:F

    iget v4, p0, Lcom/android/launcher2/CancelDrawable;->mDirection:F

    mul-float/2addr v4, v0

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    cmpl-float v4, v1, v5

    if-lez v4, :cond_0

    const/high16 v1, 0x41400000    # 12.0f

    :cond_0
    iput v1, p0, Lcom/android/launcher2/CancelDrawable;->mTranslateDx:F

    invoke-virtual {p0}, Lcom/android/launcher2/CancelDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CancelDrawable;->mCancel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/android/launcher2/CancelDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/launcher2/CancelDrawable;->mScaleFactor:F

    iget-object v2, p0, Lcom/android/launcher2/CancelDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v1, v2

    iget-object v2, p0, Lcom/android/launcher2/CancelDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/launcher2/CancelDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/CancelDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher2/CancelDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/CancelDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/launcher2/CancelDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/CancelDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/launcher2/CancelDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/CancelDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/launcher2/CancelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CancelDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher2/CancelDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CancelDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CancelDrawable;->invalidateSelf()V

    goto :goto_0
.end method
