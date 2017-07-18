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

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    iput v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    new-instance v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$1;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$008(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->dispCallDuration()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 5

    const v4, 0x7f05000f

    const v0, 0x7f05001d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05001b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05001c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-void
.end method

.method private dispCallDuration()V
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    div-int/lit8 v1, v1, 0x3c

    if-ge v1, v4, :cond_2

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

    :goto_0
    iget v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    rem-int/lit8 v1, v1, 0x3c

    if-ge v1, v4, :cond_3

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

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

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

    goto :goto_0

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

    const/16 v4, 0x8

    const/4 v3, 0x0

    const v1, 0x7f100068

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    const v2, 0x7f1000e9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryName:Landroid/widget/TextView;

    const-string v2, "Jenette McHale"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    const v2, 0x7f100198

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhoneNumber:Landroid/widget/TextView;

    const-string v2, "012-345-6789"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    const v2, 0x7f1001da

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhotoContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhotoContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallCard:Landroid/widget/RelativeLayout;

    const v2, 0x7f100193

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCallStateLabel:Landroid/widget/TextView;

    :cond_3
    const v1, 0x7f100254

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIndicatorArea:Landroid/view/ViewGroup;

    const v1, 0x7f1001d7

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    const v1, 0x7f10018c

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0285

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const v1, 0x7f10029c

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOnScreenMenuBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    :cond_5
    const v1, 0x7f1003f7

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOutgoingPager:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOutgoingPager:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mOutgoingPager:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const v1, 0x7f100394

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    const v1, 0x7f100352

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    const v1, 0x7f100387

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mEndButton:Landroid/widget/ImageButton;

    const-string v1, "voice_call_recording_button"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mEndButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const v1, 0x7f1003f1

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPagerIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPagerIndicator:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    :cond_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPhotoContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_d
    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private initIncomingCallPopup()V
    .locals 18

    const v15, 0x7f10011b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    if-nez v15, :cond_0

    const-string v15, "mIncomingCallPopup null return"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v14

    if-eqz v14, :cond_1

    const/4 v13, 0x0

    invoke-virtual {v14}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    invoke-virtual {v15, v13}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v15, 0x7f1000e9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    const v15, 0x7f100198

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerNumberOrLocation:Landroid/widget/TextView;

    const v15, 0x7f1000a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerPhoto:Landroid/widget/ImageView;

    const v15, 0x7f100193

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    const v15, 0x7f1001ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRejectMsgBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    const-string v16, "Jenette McHale"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerNumberOrLocation:Landroid/widget/TextView;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerNumberOrLocation:Landroid/widget/TextView;

    const-string v16, "012-345-6789"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerNumberOrLocation:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerPhoto:Landroid/widget/ImageView;

    if-eqz v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0200b5

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0385

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v2, v15

    invoke-static {v4, v2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerPhoto:Landroid/widget/ImageView;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerPhoto:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    if-eqz v15, :cond_5

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

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v16, 0x7f100179

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtn:Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtn:Landroid/widget/ToggleButton;

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtn:Landroid/widget/ToggleButton;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ToggleButton;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mAnswerViaSpeakerBtn:Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallerName:Landroid/widget/TextView;

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mRejectMsgBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a037d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v3, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a030f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v1, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0312

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v10, v15

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v15, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v15, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v16, 0x7f1001fc

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const-string v15, "popup_call_service_has_icon"

    invoke-static {v15}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/16 v15, 0x8

    invoke-virtual {v8, v15}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v16, 0x7f1001fd

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewStub;

    invoke-virtual {v9}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mIncomingCallPopup:Landroid/widget/RelativeLayout;

    const v16, 0x7f100173

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    :cond_8
    const v15, 0x7f100174

    invoke-virtual {v8, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswer:Landroid/view/View;

    const v15, 0x7f100175

    invoke-virtual {v8, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallReject:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v12, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v8, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v15, "popup_call_service_has_icon"

    invoke-static {v15}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v15}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, 0x3

    const v16, 0x7f100173

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v15, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswer:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallReject:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V
    .locals 6

    const/16 v5, 0x64

    const/16 v3, 0x8

    const/4 v4, 0x0

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

    iput v4, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I

    iput-object p1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mCurrentState:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$8;->$SwitchMap$com$android$incallui$help$IncomingCallWhileUsingApp$IncomingCallTutorialStep:[I

    invoke-virtual {p1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRingingCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRingingCallButtons:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iput v4, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->callTimerCount:I

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mPopupCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRingingCallButtons:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRingingCallButtons:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTipComplete:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTipComplete:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

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

    const v2, 0x7f090143

    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mToast:Landroid/widget/Toast;

    :goto_0
    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->showToast()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->END_CALL:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100174 -> :sswitch_0
        0x7f100175 -> :sswitch_1
        0x7f10017d -> :sswitch_2
        0x7f100387 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "IncomingCallWhileUsingApp"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f040057

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setContentView(I)V

    :goto_0
    const v1, 0x7f10011d

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;

    const v1, 0x7f100125

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;

    const v1, 0x7f100121

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;

    const v1, 0x7f10011e

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipAnswerMsg:Landroid/widget/FrameLayout;

    const v1, 0x7f100126

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipRejectMsg:Landroid/widget/FrameLayout;

    const v1, 0x7f100122

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialTipEndcallMsg:Landroid/widget/FrameLayout;

    const v1, 0x7f100078

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTipComplete:Landroid/widget/FrameLayout;

    const v1, 0x7f1001fb

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRingingCallButtons:Landroid/view/View;

    const v1, 0x7f1001fe

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupRejectWithMsgContainer:Landroid/widget/RelativeLayout;

    const/16 v0, 0x400

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->initIncomingCallPopup()V

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->duringCallFullScreen()V

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->animationInit(Landroid/content/Context;)V

    sget-object v1, Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;->INIT:Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;

    invoke-direct {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallWhileUsingApp$IncomingCallTutorialStep;)V

    const v1, 0x7f10011a

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/android/incallui/help/IncomingCallWhileUsingApp$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$2;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallReject:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/help/IncomingCallWhileUsingApp$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$3;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswer:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/help/IncomingCallWhileUsingApp$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$4;-><init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    const v1, 0x7f040056

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->setContentView(I)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "IncomingCallWhileUsingApp"

    const-string v1, "onPause()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "IncomingCallWhileUsingApp"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

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

    return-void
.end method
