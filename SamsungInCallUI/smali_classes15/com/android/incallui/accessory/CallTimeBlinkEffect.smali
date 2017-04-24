.class public Lcom/android/incallui/accessory/CallTimeBlinkEffect;
.super Ljava/lang/Object;
.source "CallTimeBlinkEffect.java"


# static fields
.field protected static final CALL_END_TIME_BLINK:I = 0xdac

.field protected static final CALL_END_TIME_BLINK_COUNT_MAX:I = 0x2

.field protected static final CALL_END_TIME_BLINK_COUNT_MAX_DCM:I = 0x3

.field protected static final CALL_END_TIME_BLINK_MSG:I = 0x69


# instance fields
.field private final BLINK_DELAY:I

.field private final BLINK_START:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final MAX_BLINK_COUNT:I

.field private mBlinkCount:I

.field mCallStateLabel:Landroid/widget/TextView;

.field mCallSubStateLabel:Landroid/widget/TextView;

.field protected mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

.field private mEndCallRepeatCount:I

.field mEndCallString:Ljava/lang/String;

.field mEndCallTime:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field protected mLastestCallStateLabel:Ljava/lang/CharSequence;

.field protected mLastestCallSubStateLabel:Ljava/lang/CharSequence;

.field protected mLastestCallTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CallTimeBlinkEffect"

    iput-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->BLINK_START:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->BLINK_DELAY:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->MAX_BLINK_COUNT:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mBlinkCount:I

    new-instance v0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect$1;-><init>(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)V

    iput-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->stopCallEndTimeBlink()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallRepeatCount:I

    return v0
.end method

.method static synthetic access$106(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallRepeatCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallRepeatCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->animateForBlinkCallTime()V

    return-void
.end method

.method private animateForBlinkCallTime()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v4, :cond_1

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v10, [F

    const/4 v7, 0x0

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v10, [F

    aput v8, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;

    invoke-direct {v5, p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;-><init>(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private stopCallEndTimeBlink()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "CallTimeBlinkEffect, stopCallEndTimeBlink"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->removeMessageForBlinkTime()V

    iput-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getBlinkingCount()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mBlinkCount:I

    return v0
.end method

.method protected hasMessageForBlinkTime()Z
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method protected manageCallEndTimeBlink(I)V
    .locals 7

    const/16 v6, 0x69

    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    const-string v2, "CallTimeBlinkEffect, manageCallEndTimeBlink"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallTime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCallEndTimeBlink mLastestCallTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xdac

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f011c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallSubStateLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallSubStateLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallSubStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallSubStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallSubStateLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const-string v2, "dcm_end_call_time_blink_extension"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    :goto_0
    iput v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallRepeatCount:I

    invoke-direct {p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->animateForBlinkCallTime()V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method protected removeMessageForBlinkTime()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->hasMessageForBlinkTime()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallRepeatCount:I

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    return-void
.end method

.method public setCallStateLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public setCallStateView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    return-void
.end method

.method public setCallSubStateLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallSubStateLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public setCallSubStateView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallSubStateLabel:Landroid/widget/TextView;

    return-void
.end method

.method public setLastCallTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallTime:Ljava/lang/String;

    return-void
.end method
