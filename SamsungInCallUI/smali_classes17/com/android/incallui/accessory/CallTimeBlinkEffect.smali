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

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "CallTimeBlinkEffect"

    iput-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->LOG_TAG:Ljava/lang/String;

    .line 25
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->BLINK_START:I

    .line 26
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->BLINK_DELAY:I

    .line 27
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->MAX_BLINK_COUNT:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mBlinkCount:I

    .line 53
    new-instance v0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect$1;-><init>(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)V

    iput-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->stopCallEndTimeBlink()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    .prologue
    .line 21
    iget v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallRepeatCount:I

    return v0
.end method

.method static synthetic access$106(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    .prologue
    .line 21
    iget v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallRepeatCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallRepeatCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->animateForBlinkCallTime()V

    return-void
.end method

.method private animateForBlinkCallTime()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 95
    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 126
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 98
    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v4, :cond_1

    .line 99
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 100
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 101
    .local v3, "mContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 102
    .local v1, "duration":I
    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v10, [F

    const/4 v7, 0x0

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 103
    .local v0, "decreaseAlpha":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 104
    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 105
    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 106
    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v10, [F

    aput v8, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 107
    .local v2, "increaseAlpha":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 109
    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 110
    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;

    invoke-direct {v5, p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;-><init>(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 125
    .end local v0    # "decreaseAlpha":Landroid/animation/ObjectAnimator;
    .end local v1    # "duration":I
    .end local v2    # "increaseAlpha":Landroid/animation/ObjectAnimator;
    .end local v3    # "mContext":Landroid/content/Context;
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private stopCallEndTimeBlink()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    const-string v0, "CallTimeBlinkEffect, stopCallEndTimeBlink"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->removeMessageForBlinkTime()V

    .line 149
    iput-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallTime:Ljava/lang/String;

    .line 150
    iput-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    .line 151
    return-void
.end method


# virtual methods
.method public getBlinkingCount()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mBlinkCount:I

    return v0
.end method

.method protected hasMessageForBlinkTime()Z
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method protected manageCallEndTimeBlink(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/16 v6, 0x69

    .line 68
    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    .line 69
    const-string v2, "CallTimeBlinkEffect, manageCallEndTimeBlink"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallTime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
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

    .line 72
    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xdac

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 75
    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 78
    .local v1, "mContext":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f011c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 79
    .local v0, "endTextColor":I
    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallSubStateLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallSubStateLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallSubStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallSubStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallSubStateLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    :cond_0
    const-string v2, "dcm_end_call_time_blink_extension"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    :goto_0
    iput v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallRepeatCount:I

    .line 89
    invoke-direct {p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->animateForBlinkCallTime()V

    .line 92
    .end local v0    # "endTextColor":I
    .end local v1    # "mContext":Landroid/content/Context;
    :cond_1
    return-void

    .line 87
    .restart local v0    # "endTextColor":I
    .restart local v1    # "mContext":Landroid/content/Context;
    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method protected removeMessageForBlinkTime()V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->hasMessageForBlinkTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallRepeatCount:I

    .line 134
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 136
    :cond_1
    return-void
.end method

.method public setCallStateLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    .line 167
    return-void
.end method

.method public setCallStateView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "callStateLabel"    # Landroid/widget/TextView;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    .line 159
    return-void
.end method

.method public setCallSubStateLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallSubStateLabel:Ljava/lang/CharSequence;

    .line 171
    return-void
.end method

.method public setCallSubStateView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "callStateLabel"    # Landroid/widget/TextView;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallSubStateLabel:Landroid/widget/TextView;

    .line 163
    return-void
.end method

.method public setLastCallTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallTime:Ljava/lang/String;

    .line 175
    return-void
.end method
