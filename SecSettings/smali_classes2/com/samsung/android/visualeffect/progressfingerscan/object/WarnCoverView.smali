.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;
.super Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;
.source "WarnCoverView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mFingerPrintView:Landroid/view/View;

.field private mIsRearSensor:Z

.field private mUiVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "WarnCoverView"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mUiVersion:I

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mIsRearSensor:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Z)V

    const-string/jumbo v0, "WarnCoverView"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mUiVersion:I

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mIsRearSensor:Z

    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mUiVersion:I

    iput-boolean p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mIsRearSensor:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "WarnCoverView"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mUiVersion:I

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mIsRearSensor:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "WarnCoverView"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mUiVersion:I

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mIsRearSensor:Z

    return-void
.end method


# virtual methods
.method protected getMaxStatus()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x4

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mUiVersion:I

    if-le v1, v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mFingerPrintView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mUiVersion:I

    if-le v1, v2, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mFingerPrintView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mIsRearSensor:Z

    if-nez v1, :cond_1

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->cover_bracket_homekey:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->cover_bracket:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mIsRearSensor:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mFingerPrintView:Landroid/view/View;

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->cover_fingerprint_homekey:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mFingerPrintView:Landroid/view/View;

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->cover_fingerprint:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method protected onUpdate(IF)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mFingerPrintView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mFingerPrintView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setAlpha(F)V

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, p2

    const v2, 0x3f8ccccd    # 1.1f

    sub-float v0, v2, v1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mFingerPrintView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mFingerPrintView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setAnimator(IZ)V
    .locals 5

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    :pswitch_0
    const-wide/16 v2, 0x190

    if-nez p2, :cond_0

    const-wide/16 v0, 0x682

    goto :goto_0

    :pswitch_1
    const-wide/16 v2, 0x1f4

    const-wide/16 v0, 0x10b

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
