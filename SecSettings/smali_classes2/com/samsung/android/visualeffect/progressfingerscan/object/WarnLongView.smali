.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;
.super Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;
.source "WarnLongView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mClockHandView:Landroid/view/View;

.field private mFingerView:Landroid/view/View;

.field private mUiVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "WarnLongView"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Z)V

    const-string/jumbo v0, "WarnLongView"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "WarnLongView"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "WarnLongView"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    return-void
.end method


# virtual methods
.method protected getMaxStatus()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 11

    const/4 v10, 0x4

    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    const v8, 0x3e4ccccd    # 0.2f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    if-le v4, v10, :cond_0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    if-le v4, v10, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    if-le v4, v10, :cond_2

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    if-le v4, v10, :cond_3

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotY(F)V

    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    sget v5, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->timeout_fingerprint:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    sget v4, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->timeout_clock:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    sget v5, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->timeout_clock_m_niddle:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_3
    const/high16 v4, 0x426e0000    # 59.5f

    mul-float/2addr v4, v1

    float-to-int v2, v4

    const/high16 v4, 0x41880000    # 17.0f

    mul-float/2addr v4, v1

    float-to-int v3, v4

    goto :goto_3
.end method

.method public onUpdate(IF)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3f19999a    # 0.6f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->invalidate()V

    return-void

    :pswitch_0
    mul-float/2addr v1, p2

    sub-float v0, v4, v1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    mul-float v2, v3, p2

    sub-float v2, v4, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :pswitch_2
    mul-float/2addr v1, p2

    const v2, 0x3f666666    # 0.9f

    add-float v0, v2, v1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    mul-float v2, v3, p2

    const v3, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setAnimator(IZ)V
    .locals 5

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-void

    :pswitch_0
    const-wide/16 v2, 0x14d

    if-nez p2, :cond_0

    const-wide/16 v0, 0x29a

    goto :goto_0

    :pswitch_1
    const-wide/16 v2, 0x3e8

    goto :goto_0

    :pswitch_2
    const-wide/16 v2, 0x29b

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
