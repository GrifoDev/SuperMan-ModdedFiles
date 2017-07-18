.class public Lcom/android/incallui/widget/SecContactButton;
.super Landroid/widget/Button;
.source "SecContactButton.java"


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mIsAnimatorRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/widget/SecContactButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/widget/SecContactButton;->mIsAnimatorRunning:Z

    return p1
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/incallui/widget/SecContactButton;->mIsAnimatorRunning:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecContactButton;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iput-boolean v1, p0, Lcom/android/incallui/widget/SecContactButton;->mIsAnimatorRunning:Z

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/SecContactButton;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/widget/SecContactButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecContactButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/widget/SecContactButton;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/incallui/widget/SecContactButton$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/widget/SecContactButton$1;-><init>(Lcom/android/incallui/widget/SecContactButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecContactButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/SecContactButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
