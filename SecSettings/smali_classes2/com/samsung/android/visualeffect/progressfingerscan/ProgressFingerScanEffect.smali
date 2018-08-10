.class public Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;
.super Landroid/widget/FrameLayout;
.source "ProgressFingerScanEffect.java"


# instance fields
.field private final ANIMATION_DELAY:J

.field private final ANIMATION_DURATION:J

.field private final TAG:Ljava/lang/String;

.field private complete:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

.field private currentStatus:I

.field private finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

.field private mIsSwipeEnroll:Z

.field private mUiVersion:I

.field private progress:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIIIIIII)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "FingerScanEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->ANIMATION_DURATION:J

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->ANIMATION_DELAY:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mIsSwipeEnroll:Z

    iput p12, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->initialize(Landroid/content/Context;IIIIIIIIII)V

    return-void
.end method

.method private initialize(Landroid/content/Context;IIIIIIIIII)V
    .locals 25

    const-string/jumbo v3, "FingerScanEffect"

    const-string/jumbo v4, "ProgressFingerScanEffect : Constructor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "FingerScanEffect"

    const-string/jumbo v4, "Version = 3.0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", fingerColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "FingerScanEffect"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", progressColor = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", greyColor = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", completeColor = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", strokeWidth = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    sub-int v3, p2, v21

    div-int/lit8 v22, v3, 0x2

    sub-int v3, p3, v20

    div-int/lit8 v23, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move/from16 v0, p10

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    sub-int v3, p2, v17

    div-int/lit8 v18, v3, 0x2

    sub-int v3, p3, v16

    div-int/lit8 v19, v3, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mIsSwipeEnroll:Z

    new-instance v3, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mIsSwipeEnroll:Z

    move-object/from16 v4, p1

    move/from16 v5, v21

    move/from16 v6, v20

    move/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p9

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;-><init>(Landroid/content/Context;IIIIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    move/from16 v0, v22

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setX(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    move/from16 v0, v23

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setY(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->addView(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setLayoutDirection(I)V

    return-void

    :cond_0
    new-instance v3, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;-><init>(Landroid/content/Context;IIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->progress:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->progress:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v17

    move/from16 v10, v16

    move/from16 v11, p7

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p8

    invoke-direct/range {v3 .. v14}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;-><init>(Landroid/content/Context;IIIIIIIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->complete:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->complete:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->addView(Landroid/view/View;II)V

    goto :goto_2
.end method


# virtual methods
.method public hideFinger()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->hide()V

    return-void
.end method

.method public setFingerStatus(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWarningStatus : status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FingerScanEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    if-eq v0, v3, :cond_0

    iput v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mIsSwipeEnroll:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->scanOn()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mIsSwipeEnroll:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->scanOff()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPercent(F)V
    .locals 4

    const/4 v2, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPercent : percent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FingerScanEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    if-le v0, v2, :cond_1

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mIsSwipeEnroll:Z

    if-nez v0, :cond_2

    :goto_1
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    if-le v0, v2, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->progress:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->setPercent(F)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "finger.setPercent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TEST"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setPercent(F)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->complete:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeOn()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->complete:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeOff()V

    goto :goto_2
.end method

.method public showFinger()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->show()V

    return-void
.end method
