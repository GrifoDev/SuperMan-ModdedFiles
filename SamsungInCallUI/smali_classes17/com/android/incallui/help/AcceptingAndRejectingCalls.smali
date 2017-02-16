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

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->reject_passed:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z

    .line 90
    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    .line 104
    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    .line 115
    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    .line 182
    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$2;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 209
    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$3;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 238
    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$008(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->dispCallDuration()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/incallui/help/AcceptingAndRejectingCalls;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V

    return-void
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x7f05000f

    .line 163
    const v0, 0x7f05001d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    .line 165
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 167
    const v0, 0x7f05001b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimation:Landroid/view/animation/Animation;

    .line 169
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 171
    const v0, 0x7f05001c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimation:Landroid/view/animation/Animation;

    .line 173
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation1:Landroid/view/animation/Animation;

    .line 177
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 179
    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 178
    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation2:Landroid/view/animation/Animation;

    .line 180
    return-void
.end method

.method private dispCallDuration()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 577
    iget v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    div-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_1

    .line 578
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

    .line 581
    .local v0, "sTime":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    rem-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_2

    .line 582
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

    .line 585
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    :cond_0
    return-void

    .line 580
    .end local v0    # "sTime":Ljava/lang/String;
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

    .restart local v0    # "sTime":Ljava/lang/String;
    goto :goto_0

    .line 584
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

    .prologue
    const/4 v6, 0x0

    .line 316
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 317
    const v3, 0x7f04001b

    iput v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    .line 322
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 324
    iget v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setContentView(I)V

    .line 325
    const v3, 0x7f10018c

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 326
    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 328
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0289

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 329
    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const v3, 0x7f100248

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 333
    .local v1, "mCallInfoContainer":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 334
    .local v2, "mCallInfoContainerLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 335
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 338
    const v3, 0x7f100193

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    .line 339
    const v3, 0x7f1000e9

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryName:Landroid/widget/TextView;

    .line 340
    const v3, 0x7f100198

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhoneNumber:Landroid/widget/TextView;

    .line 341
    const v3, 0x7f1001da

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    .line 343
    const v3, 0x7f1003ec

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOutgoingPager:Landroid/view/View;

    .line 345
    const v3, 0x7f10028e

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    .line 346
    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 348
    :cond_1
    const v3, 0x7f1003f5

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    .line 349
    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_2

    .line 350
    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 353
    :cond_2
    const v3, 0x7f10019a

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallTypeLabel:Landroid/widget/TextView;

    .line 355
    const v3, 0x7f100069

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    .line 356
    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    .line 357
    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3, v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 359
    const v3, 0x7f10006a

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    .line 360
    const v3, 0x7f100076

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipEndCall:Landroid/widget/FrameLayout;

    .line 361
    const v3, 0x7f10006c

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipReject:Landroid/widget/FrameLayout;

    .line 362
    const v3, 0x7f100078

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipComplete:Landroid/widget/FrameLayout;

    .line 363
    const v3, 0x7f10006e

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRejectHandle:Landroid/widget/LinearLayout;

    .line 365
    const v3, 0x7f100074

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mInCallControls:Landroid/view/View;

    .line 366
    const v3, 0x7f100075

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    .line 368
    const v3, 0x7f1003e6

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPagerIndicator:Landroid/view/View;

    .line 369
    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPagerIndicator:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 370
    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 374
    :cond_3
    const v3, 0x7f100072

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    .line 375
    const v3, 0x7f100073

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    .line 377
    const v3, 0x7f10037c

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mEndButton:Landroid/widget/ImageButton;

    .line 378
    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    const v3, 0x7f100067

    invoke-virtual {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    .line 381
    iget-object v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/android/incallui/help/AcceptingAndRejectingCalls$5;

    invoke-direct {v4, p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$5;-><init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 391
    sget-object v3, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->INIT:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updatePanelForCallState(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    .line 392
    return-void

    .line 319
    .end local v1    # "mCallInfoContainer":Landroid/widget/RelativeLayout;
    .end local v2    # "mCallInfoContainerLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const v3, 0x7f04001a

    iput v3, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    goto/16 :goto_0
.end method

.method private setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V
    .locals 6
    .param p1, "state"    # Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 420
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

    .line 421
    iput v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleCount:I

    .line 422
    iput-object p1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCurrentState:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    .line 423
    invoke-direct {p0, p1}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updatePanelForCallState(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    .line 425
    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$6;->$SwitchMap$com$android$incallui$help$AcceptingAndRejectingCalls$IncomingCallTutorialStep:[I

    invoke-virtual {p1}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 507
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 429
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 432
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipEndCall:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipEndCall:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 435
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRejectHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 439
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 442
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 453
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 454
    iput v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I

    .line 455
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 462
    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipEndCall:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipReject:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipReject:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 467
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mRejectHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 470
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 471
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 474
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 477
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 480
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 481
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 483
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 484
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    .line 485
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 489
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001f

    .line 491
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 497
    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 498
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipReject:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipComplete:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipComplete:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 502
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 504
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 425
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
    const v2, 0x7f09013d

    .line 523
    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mToast:Landroid/widget/Toast;

    .line 530
    :goto_0
    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 531
    return-void

    .line 528
    :cond_0
    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private updateCallCard()V
    .locals 6

    .prologue
    const v5, 0x7f0f0085

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 541
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001f

    .line 543
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryName:Landroid/widget/TextView;

    const-string v1, "Jenette McHale"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhoneNumber:Landroid/widget/TextView;

    const-string v1, "012-345-6789"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 554
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 556
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOutgoingPager:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 557
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOutgoingPager:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOutgoingPager:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 562
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    .line 563
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTutorialLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 565
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 566
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 567
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    .line 568
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mExtraVolBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 571
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallTypeLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 572
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    :cond_8
    return-void
.end method

.method private updatePanelForCallState(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V
    .locals 4
    .param p1, "state"    # Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    .prologue
    .line 395
    iget-object v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 396
    const-string v2, "AcceptingAndRejectingCalls"

    const-string v3, "mPrimaryCallBanner null return"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 401
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 402
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 404
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0289

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 408
    :cond_1
    sget-object v2, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    if-eq p1, v2, :cond_2

    .line 409
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 410
    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a028a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 415
    :cond_2
    :goto_1
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 416
    iget-object v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 412
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
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 511
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 517
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V

    .line 520
    :goto_0
    return-void

    .line 513
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    .line 514
    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->END_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    goto :goto_0

    .line 511
    :pswitch_data_0
    .packed-switch 0x7f10037c
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 299
    const-string v0, "AcceptingAndRejectingCalls"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 302
    iget v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mLayoutID:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setContentView(I)V

    .line 303
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->initIncomingTutorial()V

    .line 304
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updateCallCard()V

    .line 306
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    if-nez v0, :cond_1

    .line 307
    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->reject_passed:Z

    if-nez v0, :cond_2

    .line 309
    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->END_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    goto :goto_0

    .line 310
    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->endbutton_clicked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->reject_passed:Z

    if-eqz v0, :cond_0

    .line 311
    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const-string v0, "AcceptingAndRejectingCalls"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->initIncomingTutorial()V

    .line 137
    invoke-virtual {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->animationInit(Landroid/content/Context;)V

    .line 138
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mTipAccept:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 139
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->updateCallCard()V

    .line 140
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 141
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 535
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 537
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 538
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "grabbedState"    # I

    .prologue
    .line 264
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "AcceptingAndRejectingCalls"

    const-string v1, "onPause()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 155
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "AcceptingAndRejectingCalls"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCurrentState:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    sget-object v1, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    if-eq v0, v1, :cond_0

    .line 149
    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "whichHandle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 269
    packed-switch p2, :pswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 271
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    if-nez v0, :cond_0

    .line 272
    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    .line 273
    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    .line 274
    iput-boolean v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z

    goto :goto_0

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V

    goto :goto_0

    .line 281
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->answer_passed:Z

    if-eqz v0, :cond_1

    .line 282
    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->setIncomingCallTutorialMode(Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;)V

    .line 283
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 285
    iput-boolean v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->reject_passed:Z

    .line 286
    iput-boolean v4, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z

    goto :goto_0

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 159
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

    .line 160
    return-void
.end method
