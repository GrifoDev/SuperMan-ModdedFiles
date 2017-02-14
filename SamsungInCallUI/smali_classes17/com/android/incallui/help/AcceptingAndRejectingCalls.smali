.class public Lcom/android/incallui/help/AcceptingAndRejectingCalls;
.super Landroid/app/Activity;
.source "AcceptingAndRejectingCalls.java"

# interfaces
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;
    }
.end annotation


# static fields
.field private static final ANSWER_CALL_ID:I = 0x1

.field private static final BUBBLE_ANIMATIOT_DISPLAY_TIME:I = 0x2

.field private static final CALL_TIMER:I = 0x64

.field private static final DECLINE_CALL_ID:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AcceptingAndRejectingCalls"

.field private static final TUTORIAL_FINISH:I = 0x1

.field private static final TUTORIAL_FINISH_TIME:I = 0x7d0

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private answer_passed:Z

.field private callTimerCount:I

.field private endbutton_clicked:Z

.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mBubbleCount:I

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mCurrentState:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

.field private mEndButton:Landroid/widget/ImageButton;

.field private mExtraVolBtn:Landroid/widget/ToggleButton;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mHandler:Landroid/os/Handler;

.field private mHelpTabView:Landroid/widget/ImageView;

.field private mHelpTapAccept:Landroid/widget/ImageView;

.field private mHelpTapReject:Landroid/widget/ImageView;

.field private mInCallControls:Landroid/view/View;

.field private mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mLayoutID:I

.field private mOnScreenMenuBtn:Landroid/widget/Button;

.field private mOutgoingPager:Landroid/view/View;

.field private mPagerIndicator:Landroid/view/View;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhotoContainer:Landroid/view/View;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mRejectHandle:Landroid/widget/LinearLayout;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTipAccept:Landroid/widget/FrameLayout;

.field private mTipComplete:Landroid/widget/FrameLayout;

.field private mTipEndCall:Landroid/widget/FrameLayout;

.field private mTipReject:Landroid/widget/FrameLayout;

.field private mTutorialLayout:Landroid/widget/FrameLayout;

.field private reject_passed:Z

.field private show_toast:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->reject_passed:Z

    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$2;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$3;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$008(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->dispCallDuration()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/incallui/help/AcceptingAndRejectingCalls;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V

    return-void
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 5

    const v4, 0x7f05000f

    const v0, 0x7f05001d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05001b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05001c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation1:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-void
.end method

.method private dispCallDuration()V
    .locals 4

    const/16 v3, 0xa

    iget v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    div-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    rem-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private initIncomingTutorial()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f04001b

    iput v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    iget v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setContentView(I)V

    const v3, 0x7f10018c

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0289

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const v3, 0x7f100248

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const v3, 0x7f100193

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    const v3, 0x7f1000e9

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryName:Landroid/widget/TextView;

    const v3, 0x7f100198

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhoneNumber:Landroid/widget/TextView;

    const v3, 0x7f1001da

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    const v3, 0x7f1003ec

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOutgoingPager:Landroid/view/View;

    const v3, 0x7f10028e

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setClickable(Z)V

    :cond_1
    const v3, 0x7f1003f5

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setClickable(Z)V

    :cond_2
    const v3, 0x7f10019a

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallTypeLabel:Landroid/widget/TextView;

    const v3, 0x7f100069

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3, v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    const v3, 0x7f10006a

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    const v3, 0x7f100076

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipEndCall:Landroid/widget/FrameLayout;

    const v3, 0x7f10006c

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipReject:Landroid/widget/FrameLayout;

    const v3, 0x7f100078

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipComplete:Landroid/widget/FrameLayout;

    const v3, 0x7f10006e

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRejectHandle:Landroid/widget/LinearLayout;

    const v3, 0x7f100074

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mInCallControls:Landroid/view/View;

    const v3, 0x7f100075

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    const v3, 0x7f1003e6

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPagerIndicator:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPagerIndicator:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    :cond_3
    const v3, 0x7f100072

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    const v3, 0x7f100073

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    const v3, 0x7f10037c

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mEndButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f100067

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/android/incallui/help/AcceptingAndRejectingCalls$5;

    invoke-direct {v4, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$5;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v3, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->INIT:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updatePanelForCallState(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    return-void

    :cond_4
    const v3, 0x7f04001a

    iput v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    goto/16 :goto_0
.end method

.method private setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V
    .locals 6

    const/16 v5, 0x64

    const/4 v4, 0x0

    const/16 v3, 0x8

    const-string v0, "AcceptingAndRejectingCalls"

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

    iput v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    iput-object p1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCurrentState:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, p1}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updatePanelForCallState(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$6;->$SwitchMap$com$android$incallui$help$AcceptingAndRejectingCalls$IncomingCallTutorialStep:[I

    invoke-virtual {p1}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipEndCall:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipEndCall:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRejectHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iput v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipEndCall:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipReject:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipReject:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRejectHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipReject:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipComplete:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipComplete:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

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

    const v2, 0x7f09013d

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mToast:Landroid/widget/Toast;

    :goto_0
    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private updateCallCard()V
    .locals 6

    const v5, 0x7f0f0085

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryName:Landroid/widget/TextView;

    const-string v1, "Jenette McHale"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhoneNumber:Landroid/widget/TextView;

    const-string v1, "012-345-6789"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOutgoingPager:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOutgoingPager:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOutgoingPager:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallTypeLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private updatePanelForCallState(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    const-string v2, "AcceptingAndRejectingCalls"

    const-string v3, "mPrimaryCallBanner null return"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0289

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :cond_1
    sget-object v2, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    if-eq p1, v2, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a028a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :cond_2
    :goto_1
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->END_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10037c
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "AcceptingAndRejectingCalls"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->initIncomingTutorial()V

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updateCallCard()V

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->reject_passed:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->END_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->reject_passed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "AcceptingAndRejectingCalls"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->initIncomingTutorial()V

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->animationInit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updateCallCard()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "AcceptingAndRejectingCalls"

    const-string v1, "onPause()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "AcceptingAndRejectingCalls"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCurrentState:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    sget-object v1, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    if-eq v0, v1, :cond_0

    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    iput-boolean v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->reject_passed:Z

    iput-boolean v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "AcceptingAndRejectingCalls"

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
