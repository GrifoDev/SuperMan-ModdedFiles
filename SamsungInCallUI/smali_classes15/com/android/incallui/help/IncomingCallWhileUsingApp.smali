.class public Lcom/android/incallui/help/IncomingCallWhileUsingApp;
.super Landroid/app/Activity;
.source "IncomingCallWhileUsingApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;
    }
.end annotation


# static fields
.field private static final BUBBLE_ANIMATIOT_DISPLAY_TIME:I = 0x2

.field private static final CALL_TIMER:I = 0x64

.field private static final TAG:Ljava/lang/String; = "IncomingCallWhileUsingApp"

.field private static final TUTORIAL_FINISH:I = 0x1

.field private static final TUTORIAL_FINISH_TIME:I = 0x7d0

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private callTimerCount:I

.field private mAddButton:Landroid/widget/Button;

.field private mAnswerViaSpeakerBtn:Landroid/widget/ToggleButton;

.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mBubbleCount:I

.field private mCallCard:Landroid/widget/RelativeLayout;

.field private mCallState:Landroid/widget/TextView;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCurrentState:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

.field private mDragModeButtonLayout:Landroid/widget/LinearLayout;

.field private mDrageModeBtn:Landroid/widget/ImageButton;

.field private mEndButton:Landroid/widget/ImageButton;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mHandler:Landroid/os/Handler;

.field private mIncallButtonLayout:Landroid/widget/LinearLayout;

.field private mIncomingCallPopup:Landroid/widget/RelativeLayout;

.field private mIndicatorArea:Landroid/view/ViewGroup;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mOnScreenMenuBtn:Landroid/widget/Button;

.field private mOutgoingPager:Landroid/view/View;

.field private mPagerIndicator:Landroid/view/View;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhotoContainer:Landroid/view/View;

.field private mPopupCallStateLabel:Landroid/widget/TextView;

.field private mPopupCallerName:Landroid/widget/TextView;

.field private mPopupCallerNumberOrLocation:Landroid/widget/TextView;

.field private mPopupCallerPhoto:Landroid/widget/ImageView;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallStateContainer:Landroid/view/ViewGroup;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mRecordButton:Landroid/widget/Button;

.field private mRejectMsgBtn:Landroid/widget/Button;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mTipComplete:Landroid/widget/FrameLayout;

.field private mTutorialLayout:Landroid/widget/RelativeLayout;

.field private mTutorialPopupCallAnswer:Landroid/view/View;

.field private mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

.field private mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

.field private mTutorialPopupCallReject:Landroid/view/View;

.field private mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

.field private mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

.field private mTutorialPopupRingingCallButtons:Landroid/view/View;

.field private mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

.field private mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

.field private mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

.field private textAnimation:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 163
    iput v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    .line 173
    iput v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    .line 181
    new-instance v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$1;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHandler:Landroid/os/Handler;

    .line 407
    new-instance v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 434
    new-instance v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 463
    new-instance v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$008(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->dispCallDuration()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x7f05000f

    .line 391
    const v0, 0x7f05001d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    .line 392
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 394
    const v0, 0x7f05001b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;

    .line 395
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 397
    const v0, 0x7f05001c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimation:Landroid/view/animation/Animation;

    .line 398
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    .line 402
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 403
    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation2:Landroid/view/animation/Animation;

    .line 405
    return-void
.end method

.method private dispCallDuration()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 703
    iget v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    div-int/lit8 v1, v1, 0x3c

    if-ge v1, v4, :cond_2

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "sTime":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    rem-int/lit8 v1, v1, 0x3c

    if-ge v1, v4, :cond_3

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 715
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 719
    :cond_1
    return-void

    .line 706
    .end local v0    # "sTime":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "sTime":Ljava/lang/String;
    goto :goto_0

    .line 710
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private duringCallFullScreen()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 634
    const v1, 0x7f100068

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    .line 635
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 636
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 638
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    const v2, 0x7f1000e9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryName:Landroid/widget/TextView;

    .line 639
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryName:Landroid/widget/TextView;

    const-string v2, "Jenette McHale"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    const v2, 0x7f100198

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhoneNumber:Landroid/widget/TextView;

    .line 643
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 644
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhoneNumber:Landroid/widget/TextView;

    const-string v2, "012-345-6789"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    const v2, 0x7f1001da

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhotoContainer:Landroid/view/View;

    .line 648
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhotoContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 649
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 650
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 656
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    const v2, 0x7f100193

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    .line 659
    :cond_3
    const v1, 0x7f100246

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIndicatorArea:Landroid/view/ViewGroup;

    .line 660
    const v1, 0x7f1001d7

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    .line 661
    const v1, 0x7f10018c

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 662
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 663
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 664
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0285

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 665
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    const v1, 0x7f10028e

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOnScreenMenuBtn:Landroid/widget/Button;

    .line 669
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v1, :cond_5

    .line 670
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 672
    :cond_5
    const v1, 0x7f1003ed

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOutgoingPager:Landroid/view/View;

    .line 673
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOutgoingPager:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 674
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOutgoingPager:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 676
    :cond_6
    const v1, 0x7f10038a

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    .line 677
    const v1, 0x7f100348

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    .line 678
    const v1, 0x7f10037d

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mEndButton:Landroid/widget/ImageButton;

    .line 680
    const-string v1, "voice_call_recording_button"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 681
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    .line 682
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 683
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    if-eqz v1, :cond_8

    .line 684
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 691
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mEndButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_9

    .line 692
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    :cond_9
    const v1, 0x7f1003e7

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPagerIndicator:Landroid/view/View;

    .line 695
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPagerIndicator:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 696
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 697
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 699
    :cond_a
    return-void

    .line 652
    :cond_b
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhotoContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 686
    :cond_c
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    if-eqz v1, :cond_d

    .line 687
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 688
    :cond_d
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    if-eqz v1, :cond_8

    .line 689
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private initIncomingCallPopup()V
    .locals 18

    .prologue
    .line 517
    const v15, 0x7f10011b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    .line 518
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    if-nez v15, :cond_0

    .line 519
    const-string v15, "mIncomingCallPopup null return"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v14

    .line 524
    .local v14, "wallpaperManager":Landroid/app/WallpaperManager;
    if-eqz v14, :cond_1

    .line 525
    const/4 v13, 0x0

    .line 526
    .local v13, "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 527
    if-eqz v13, :cond_1

    .line 528
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    invoke-virtual {v15, v13}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 530
    .end local v13    # "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 532
    const v15, 0x7f1000e9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    .line 533
    const v15, 0x7f100198

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerNumberOrLocation:Landroid/widget/TextView;

    .line 535
    const v15, 0x7f1000a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerPhoto:Landroid/widget/ImageView;

    .line 536
    const v15, 0x7f100193

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    .line 538
    const v15, 0x7f1001ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRejectMsgBtn:Landroid/widget/Button;

    .line 540
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    if-eqz v15, :cond_2

    .line 541
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    const-string v16, "Jenette McHale"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerNumberOrLocation:Landroid/widget/TextView;

    if-eqz v15, :cond_3

    .line 546
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerNumberOrLocation:Landroid/widget/TextView;

    const-string v16, "012-345-6789"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerNumberOrLocation:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerPhoto:Landroid/widget/ImageView;

    if-eqz v15, :cond_4

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0200b4

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 552
    .local v4, "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0385

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v2, v15

    .line 553
    .local v2, "diameter":I
    invoke-static {v4, v2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 554
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerPhoto:Landroid/widget/ImageView;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerPhoto:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    .end local v2    # "diameter":I
    .end local v4    # "image":Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    if-eqz v15, :cond_5

    .line 559
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f09001f

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v16, 0x7f100179

    .line 564
    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtn:Landroid/widget/ToggleButton;

    .line 565
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtn:Landroid/widget/ToggleButton;

    if-eqz v15, :cond_6

    .line 566
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtn:Landroid/widget/ToggleButton;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 567
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtn:Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    if-eqz v15, :cond_7

    .line 571
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRejectMsgBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 584
    .local v5, "mTutorialPopupCallAnswerTapLp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 585
    .local v7, "mTutorialPopupCallRejectTapLp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 586
    .local v6, "mTutorialPopupCallEndcallTapLp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a037d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v3, v15

    .line 588
    .local v3, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a030f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v1, v15

    .line 589
    .local v1, "answerMarginTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0312

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v10, v15

    .line 590
    .local v10, "rejectMarginTop":I
    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 591
    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 592
    iput v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 594
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v15, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v15, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v16, 0x7f1001fc

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 605
    .local v8, "mTutorialPopupRingingCallButtons":Landroid/view/View;
    const-string v15, "popup_call_service_has_icon"

    invoke-static {v15}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 606
    const/16 v15, 0x8

    invoke-virtual {v8, v15}, Landroid/view/View;->setVisibility(I)V

    .line 607
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v16, 0x7f1001fd

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewStub;

    .line 608
    .local v9, "mTutorialPopupRingingCallButtonsStub":Landroid/view/ViewStub;
    invoke-virtual {v9}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 609
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v16, 0x7f100173

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 612
    .end local v9    # "mTutorialPopupRingingCallButtonsStub":Landroid/view/ViewStub;
    :cond_8
    const v15, 0x7f100174

    invoke-virtual {v8, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswer:Landroid/view/View;

    .line 613
    const v15, 0x7f100175

    invoke-virtual {v8, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallReject:Landroid/view/View;

    .line 617
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 618
    .local v12, "ringingCallButtonsLp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v12, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 619
    invoke-virtual {v8, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    const-string v15, "popup_call_service_has_icon"

    invoke-static {v15}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 622
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v15}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 623
    .local v11, "rejectMsgButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v15, 0x3

    const v16, 0x7f100173

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 624
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v15, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    .end local v11    # "rejectMsgButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswer:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallReject:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V
    .locals 6
    .param p1, "state"    # Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    .prologue
    const/16 v5, 0x64

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 297
    const-string v0, "IncomingCallWhileUsingApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIncomingCallTutorialMode() state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iput v4, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    .line 299
    iput-object p1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCurrentState:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    .line 300
    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$8;->$SwitchMap$com$android$incallui$help$IncomingCallWhileUsingApp$IncomingCallTutorialStep:[I

    invoke-virtual {p1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 302
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 305
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 308
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 311
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 313
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRingingCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRingingCallButtons:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 322
    iput v4, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    .line 323
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 345
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 349
    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 352
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 354
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 356
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 359
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 360
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRingingCallButtons:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 368
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRingingCallButtons:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 369
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 380
    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 383
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 384
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTipComplete:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTipComplete:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showToast()V
    .locals 3

    .prologue
    const v2, 0x7f090142

    .line 722
    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mToast:Landroid/widget/Toast;

    .line 728
    :goto_0
    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 729
    return-void

    .line 726
    :cond_0
    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 489
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 511
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 491
    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 492
    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V

    goto :goto_0

    .line 494
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V

    goto :goto_0

    .line 497
    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 498
    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V

    .line 499
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 501
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V

    goto :goto_0

    .line 507
    :sswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 508
    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->END_CALL:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V

    goto :goto_0

    .line 489
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100174 -> :sswitch_0
        0x7f100175 -> :sswitch_1
        0x7f10017d -> :sswitch_2
        0x7f10037d -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 201
    const-string v1, "IncomingCallWhileUsingApp"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const v1, 0x7f040057

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setContentView(I)V

    .line 209
    :goto_0
    const v1, 0x7f10011d

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    .line 210
    const v1, 0x7f100125

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    .line 211
    const v1, 0x7f100121

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    .line 213
    const v1, 0x7f10011e

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    .line 214
    const v1, 0x7f100126

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    .line 215
    const v1, 0x7f100122

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    .line 217
    const v1, 0x7f100078

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTipComplete:Landroid/widget/FrameLayout;

    .line 220
    const v1, 0x7f1001fb

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRingingCallButtons:Landroid/view/View;

    .line 221
    const v1, 0x7f1001fe

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    .line 223
    const/16 v0, 0x400

    .line 224
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 226
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->initIncomingCallPopup()V

    .line 227
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->duringCallFullScreen()V

    .line 229
    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->animationInit(Landroid/content/Context;)V

    .line 230
    sget-object v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->INIT:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    invoke-direct {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V

    .line 232
    const v1, 0x7f10011a

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialLayout:Landroid/widget/RelativeLayout;

    .line 233
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 235
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/android/incallui/help/IncomingCallWhileUsingApp$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$2;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallReject:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/help/IncomingCallWhileUsingApp$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$3;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 268
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswer:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/help/IncomingCallWhileUsingApp$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$4;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 277
    return-void

    .line 206
    .end local v0    # "flags":I
    :cond_0
    const v1, 0x7f040056

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setContentView(I)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 287
    const-string v0, "IncomingCallWhileUsingApp"

    const-string v1, "onPause()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 289
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 281
    const-string v0, "IncomingCallWhileUsingApp"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 283
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 293
    const-string v0, "IncomingCallWhileUsingApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method
