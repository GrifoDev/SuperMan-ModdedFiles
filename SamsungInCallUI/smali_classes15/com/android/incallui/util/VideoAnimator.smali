.class public Lcom/android/incallui/util/VideoAnimator;
.super Ljava/lang/Object;
.source "VideoAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/util/VideoAnimator$Scale;
    }
.end annotation


# static fields
.field public static final DURATION_100MS:I = 0xc8

.field public static final DURATION_200MS:I = 0xc8

.field public static final DURATION_250MS:I = 0xfa

.field public static final DURATION_300MS:I = 0x12c

.field public static final DURATION_500MS:I = 0x1f4

.field public static final DURATION_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoAnimator"


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field mEnd:Lcom/android/incallui/util/VideoTemplate;

.field mStart:Lcom/android/incallui/util/VideoTemplate;

.field private mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mStart:Lcom/android/incallui/util/VideoTemplate;

    .line 36
    iput-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    .line 39
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 40
    iput-object p1, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    .line 41
    return-void
.end method

.method public static moveVertical(Landroid/view/View;I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "distance"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 215
    if-nez p0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const/4 v1, 0x0

    .line 219
    .local v1, "viewContainer":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 220
    .local v0, "moveAnim":Landroid/animation/AnimatorSet;
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v6, [F

    int-to-float v4, p1

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 222
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 223
    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 224
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 225
    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public static setButtonFullScreen(Landroid/view/View;Landroid/view/View;IZZ)V
    .locals 9
    .param p0, "bg"    # Landroid/view/View;
    .param p1, "button"    # Landroid/view/View;
    .param p2, "moveOffset"    # I
    .param p3, "isFullScreen"    # Z
    .param p4, "needDuration"    # Z

    .prologue
    .line 380
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    .line 381
    :cond_0
    const-string v5, "VideoAnimator"

    const-string v6, "setButtonFullScreen : bg or button is null."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_1
    :goto_0
    return-void

    .line 385
    :cond_2
    move v3, p2

    .line 386
    .local v3, "targetH":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 387
    .local v1, "buttonHeight":I
    if-lez v1, :cond_3

    .line 388
    move v3, v1

    .line 391
    :cond_3
    const/4 v4, 0x0

    .line 392
    .local v4, "viewContainer":Landroid/animation/ObjectAnimator;
    const/4 v0, 0x0

    .line 393
    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 395
    .local v2, "moveAnim":Landroid/animation/AnimatorSet;
    if-eqz p3, :cond_4

    .line 396
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    int-to-float v8, v3

    aput v8, v6, v7

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 397
    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 403
    :goto_1
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 404
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 405
    if-eqz p4, :cond_5

    const-wide/16 v6, 0x12c

    :goto_2
    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 406
    const v5, 0x3ea8f5c3    # 0.33f

    const/4 v6, 0x0

    const v7, 0x3e4ccccd    # 0.2f

    const v8, 0x3dcccccd    # 0.1f

    invoke-static {v5, v6, v7, v8}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 408
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 409
    const-string v5, "VideoAnimator"

    const-string v6, "setButtonFullScreen : moveAnim is already running."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_4
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 400
    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_1

    .line 405
    :cond_5
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 412
    :cond_6
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 414
    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 415
    if-eqz p4, :cond_7

    const-wide/16 v6, 0xc8

    :goto_3
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 416
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 417
    invoke-static {p3}, Lcom/android/incallui/util/VideoCallAppLogging;->cleanViewEnter(Z)V

    goto/16 :goto_0

    .line 415
    :cond_7
    const-wide/16 v6, 0x0

    goto :goto_3

    .line 397
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 400
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static setCallCardFullScreen(Landroid/view/View;Z)V
    .locals 12
    .param p0, "CallCard"    # Landroid/view/View;
    .param p1, "isFullScreen"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 317
    if-nez p0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 321
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    const/4 v1, 0x0

    .line 322
    .local v1, "indicatorH":I
    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v2

    .line 324
    .local v2, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    iget-object v6, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v1, v6, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->indicator_area:I

    .line 326
    .end local v2    # "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v4, v6, v1

    .line 328
    .local v4, "targetH":I
    const/4 v5, 0x0

    .line 329
    .local v5, "viewContainer":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 330
    .local v3, "moveAnim":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_3

    .line 331
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    neg-int v8, v4

    int-to-float v8, v8

    aput v8, v7, v9

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 337
    :goto_1
    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    .line 338
    new-array v6, v10, [Landroid/animation/Animator;

    aput-object v5, v6, v9

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 339
    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 340
    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3e4ccccd    # 0.2f

    const v8, 0x3dcccccd    # 0.1f

    invoke-static {v6, v11, v7, v8}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 342
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 343
    const-string v6, "VideoAnimator"

    const-string v7, "moveAnim is already running."

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_3
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto :goto_1
.end method

.method public static setSecondaryBannerFullScreen(Landroid/view/View;Z)V
    .locals 9
    .param p0, "banner"    # Landroid/view/View;
    .param p1, "isFullScreen"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 351
    if-nez p0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 357
    .local v1, "targetH":I
    const/4 v2, 0x0

    .line 358
    .local v2, "viewContainer":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 360
    .local v0, "moveAnim":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_2

    .line 361
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    aput v8, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 366
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 367
    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v2, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 368
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 369
    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v3, v8, v4, v5}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    const-string v3, "VideoAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSecondaryBannerFullScreen animation was operated isfullscreen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 371
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 372
    const-string v3, "VideoAnimator"

    const-string v4, "moveAnim is already running."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_2
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    int-to-float v5, v1

    aput v5, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_1

    .line 375
    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method


# virtual methods
.method public change(Lcom/android/incallui/util/VideoTemplate;)V
    .locals 7
    .param p1, "end"    # Lcom/android/incallui/util/VideoTemplate;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 61
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 65
    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p1, v3}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    const-string v3, "VideoAnimator"

    const-string v4, "change same animation is running"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_2
    const-string v3, "VideoAnimator"

    const-string v4, "change animation is running"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 72
    :cond_3
    iput-object p1, p0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    .line 73
    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v1

    .line 74
    .local v1, "endW":I
    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v0

    .line 75
    .local v0, "endH":I
    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 76
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-ne v3, v1, :cond_4

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-eq v3, v0, :cond_5

    .line 77
    :cond_4
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 78
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 79
    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 82
    const-string v3, "VideoAnimator"

    const-string v4, "change without animation"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotX(F)V

    .line 84
    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotY(F)V

    .line 85
    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    .line 86
    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 87
    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    .line 88
    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    .line 89
    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 48
    iput-object v1, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 49
    iput-object v1, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    .line 50
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 242
    :cond_0
    return-void
.end method

.method public fadeIn(Lcom/android/incallui/util/VideoTemplate;I)V
    .locals 13
    .param p1, "end"    # Lcom/android/incallui/util/VideoTemplate;
    .param p2, "duration"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 159
    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->isValid()Z

    move-result v7

    if-nez v7, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    if-nez p2, :cond_2

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 167
    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p1, v7}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 168
    const-string v7, "VideoAnimator"

    const-string v8, "same animation is running"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_3
    const-string v7, "VideoAnimator"

    const-string v8, "forcely end animation for new animation"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->end()V

    .line 174
    :cond_4
    iput-object p1, p0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    .line 175
    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    .line 179
    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v1

    .line 180
    .local v1, "endX":F
    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v2

    .line 182
    .local v2, "endY":F
    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v8, "y"

    new-array v9, v10, [F

    aput v2, v9, v11

    aput v2, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 183
    .local v6, "moveAnimY":Landroid/animation/ValueAnimator;
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 184
    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v8, "x"

    new-array v9, v10, [F

    aput v1, v9, v11

    aput v1, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 185
    .local v5, "moveAnimX":Landroid/animation/ValueAnimator;
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 187
    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v8, "scaleX"

    new-array v9, v10, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 188
    .local v4, "moveAnimW":Landroid/animation/ValueAnimator;
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v8, "scaleY"

    new-array v9, v10, [F

    fill-array-data v9, :array_1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 190
    .local v3, "moveAnimH":Landroid/animation/ValueAnimator;
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 192
    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v8, "alpha"

    new-array v9, v10, [F

    fill-array-data v9, :array_2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 193
    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v8, 0x5

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v6, v8, v11

    aput-object v5, v8, v12

    aput-object v0, v8, v10

    const/4 v9, 0x3

    aput-object v4, v8, v9

    const/4 v9, 0x4

    aput-object v3, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 194
    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v8, p2

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 195
    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 187
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 189
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 192
    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public hasTarget()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public move(Landroid/view/View;Lcom/android/incallui/util/VideoTemplate;I)V
    .locals 2
    .param p1, "start"    # Landroid/view/View;
    .param p2, "end"    # Lcom/android/incallui/util/VideoTemplate;
    .param p3, "duration"    # I

    .prologue
    .line 94
    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0, p1}, Lcom/android/incallui/util/VideoTemplate;-><init>(Landroid/view/View;)V

    .line 96
    .local v0, "start_templete":Lcom/android/incallui/util/VideoTemplate;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    :cond_2
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_0
.end method

.method public move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V
    .locals 22
    .param p1, "start"    # Lcom/android/incallui/util/VideoTemplate;
    .param p2, "end"    # Lcom/android/incallui/util/VideoTemplate;
    .param p3, "duration"    # I

    .prologue
    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/util/VideoTemplate;->isValid()Z

    move-result v17

    if-eqz v17, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/util/VideoTemplate;->isValid()Z

    move-result v17

    if-nez v17, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual/range {p1 .. p2}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v17

    if-nez v17, :cond_2

    if-nez p3, :cond_3

    .line 107
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0

    .line 110
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 112
    const-string v17, "VideoAnimator"

    const-string v18, "same animation is running"

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_4
    const-string v17, "VideoAnimator"

    const-string v18, "forcely end animation for new animation"

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/AnimatorSet;->end()V

    .line 118
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/util/VideoAnimator;->mStart:Lcom/android/incallui/util/VideoTemplate;

    .line 119
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v15

    .line 124
    .local v15, "startX":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v16

    .line 125
    .local v16, "startY":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v13, v0

    .line 126
    .local v13, "startH":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v14, v0

    .line 128
    .local v14, "startW":F
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v5

    .line 129
    .local v5, "endX":F
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v6

    .line 130
    .local v6, "endY":F
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v3, v0

    .line 131
    .local v3, "endH":F
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v4, v0

    .line 133
    .local v4, "endW":F
    div-float v7, v14, v4

    .line 134
    .local v7, "fromScaleX":F
    div-float v8, v13, v3

    .line 136
    .local v8, "fromScaleY":F
    const-string v17, "VideoAnimator"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "move with animation - duration : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setPivotX(F)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setPivotY(F)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleX(F)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleY(F)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const-string v18, "y"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v16, v19, v20

    const/16 v20, 0x1

    aput v6, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 142
    .local v12, "moveAnimY":Landroid/animation/ValueAnimator;
    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v17 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const-string v18, "x"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v15, v19, v20

    const/16 v20, 0x1

    aput v5, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 144
    .local v11, "moveAnimX":Landroid/animation/ValueAnimator;
    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v17 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const-string v18, "scaleX"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v7, v19, v20

    const/16 v20, 0x1

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 147
    .local v10, "moveAnimW":Landroid/animation/ValueAnimator;
    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v17 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const-string v18, "scaleY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v8, v19, v20

    const/16 v20, 0x1

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 149
    .local v9, "moveAnimH":Landroid/animation/ValueAnimator;
    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v17 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 152
    .local v2, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    const/16 v19, 0x1

    aput-object v11, v18, v19

    const/16 v19, 0x2

    aput-object v2, v18, v19

    const/16 v19, 0x3

    aput-object v10, v18, v19

    const/16 v19, 0x4

    aput-object v9, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 151
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public moveVertical(Landroid/view/View;FI)V
    .locals 4
    .param p1, "start"    # Landroid/view/View;
    .param p2, "destY"    # F
    .param p3, "duration"    # I

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 200
    :cond_0
    new-instance v1, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v1, p1}, Lcom/android/incallui/util/VideoTemplate;-><init>(Landroid/view/View;)V

    .line 201
    .local v1, "start_templete":Lcom/android/incallui/util/VideoTemplate;
    if-nez v1, :cond_1

    .line 202
    const-string v2, "VideoAnimator"

    const-string v3, "moveVertical - start_templete is null."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0, p1}, Lcom/android/incallui/util/VideoTemplate;-><init>(Landroid/view/View;)V

    .line 206
    .local v0, "end_templete":Lcom/android/incallui/util/VideoTemplate;
    invoke-virtual {v0, p2}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    .line 207
    if-eqz v0, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    :cond_2
    const-string v2, "VideoAnimator"

    const-string v3, "moveVertical - end_templete is null or end_templete is same as start_templete."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual {p0, v1, v0, p3}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_0
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    .line 54
    return-void
.end method
