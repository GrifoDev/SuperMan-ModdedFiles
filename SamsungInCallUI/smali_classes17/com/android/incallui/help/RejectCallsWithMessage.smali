.class public Lcom/android/incallui/help/RejectCallsWithMessage;
.super Landroid/app/Activity;
.source "RejectCallsWithMessage.java"

# interfaces
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/help/RejectCallsWithMessage$RespondViaSmsItemClickListener;
    }
.end annotation


# static fields
.field private static final ANSWER_CALL_ID:I = 0x1

.field private static final BUBBLE_ANIMATIOT_DISPLAY_TIME:I = 0x2

.field private static final DECLINE_CALL_ID:I = 0x2

.field private static final REJECT_WITH_MSG_MAX_LINE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RejectCallsWithMessage"

.field private static final TUTORIAL_FINISH:I = 0x1

.field public static defaultRejectMsgList:[I

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mBubbleCount:I

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mCreateButton:Landroid/view/View;

.field private mDragUpImageLayout:Landroid/widget/FrameLayout;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mGuideSendMsgButton:Landroid/widget/Button;

.field private mGuideSendMsgItem:Landroid/widget/LinearLayout;

.field mHandler:Landroid/os/Handler;

.field private mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mOnScreenMenuBtn:Landroid/widget/Button;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhotoContainer:Landroid/view/View;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mRejectCallWithMessageContent:Lcom/android/incallui/RejectMsgContent;

.field private mRejectCallWithMessageItemList:Landroid/widget/ListView;

.field public mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

.field private mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgHandleText:Landroid/widget/TextView;

.field private mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

.field private mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

.field private mSendMsgComplete:Landroid/widget/FrameLayout;

.field private mSendMsgTip:Landroid/widget/FrameLayout;

.field private mSendMsgTipBubble:Landroid/widget/FrameLayout;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mrejectMsgTip:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/incallui/help/RejectCallsWithMessage;->defaultRejectMsgList:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0900bd
        0x7f0900be
        0x7f0900c1
        0x7f0900c0
        0x7f0900bf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleCount:I

    .line 291
    new-instance v0, Lcom/android/incallui/help/RejectCallsWithMessage$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$7;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mHandler:Landroid/os/Handler;

    .line 339
    new-instance v0, Lcom/android/incallui/help/RejectCallsWithMessage$8;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$8;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 363
    new-instance v0, Lcom/android/incallui/help/RejectCallsWithMessage$9;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$9;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 389
    new-instance v0, Lcom/android/incallui/help/RejectCallsWithMessage$10;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$10;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 476
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/help/RejectCallsWithMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->showToast()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/help/RejectCallsWithMessage;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$1008(Lcom/android/incallui/help/RejectCallsWithMessage;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/incallui/help/RejectCallsWithMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->clickRejectCallsWithMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/help/RejectCallsWithMessage;)Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/help/RejectCallsWithMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->hideDragUpAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mrejectMsgTip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private buttonAnimationInit(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x7f05000f

    .line 320
    const v0, 0x7f05001d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimation:Landroid/view/animation/Animation;

    .line 322
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 324
    const v0, 0x7f05001b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimation:Landroid/view/animation/Animation;

    .line 326
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 328
    const v0, 0x7f05001c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimation:Landroid/view/animation/Animation;

    .line 330
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 332
    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation1:Landroid/view/animation/Animation;

    .line 334
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 336
    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 335
    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation2:Landroid/view/animation/Animation;

    .line 337
    return-void
.end method

.method private clickRejectCallsWithMessage()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 489
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTip:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    .line 493
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgComplete:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgComplete:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 495
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 497
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 498
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 499
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 501
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 502
    return-void
.end method

.method private hideDragUpAnimation()V
    .locals 2

    .prologue
    .line 306
    const-string v0, "RejectCallsWithMessage"

    const-string v1, "hideDragUpAnimation()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 309
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 310
    return-void
.end method

.method private showDragUpAnimation()V
    .locals 2

    .prologue
    .line 313
    const-string v0, "RejectCallsWithMessage"

    const-string v1, "showDragUpAnimation()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 317
    return-void
.end method

.method private showToast()V
    .locals 3

    .prologue
    const v2, 0x7f09013d

    .line 436
    sget-object v0, Lcom/android/incallui/help/RejectCallsWithMessage;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/help/RejectCallsWithMessage;->mToast:Landroid/widget/Toast;

    .line 443
    :goto_0
    sget-object v0, Lcom/android/incallui/help/RejectCallsWithMessage;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 444
    return-void

    .line 441
    :cond_0
    sget-object v0, Lcom/android/incallui/help/RejectCallsWithMessage;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private updateCallCard()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 452
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001f

    .line 454
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryName:Landroid/widget/TextView;

    const-string v1, "Jenette McHale"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhoneNumber:Landroid/widget/TextView;

    const-string v1, "012-345-6789"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0085

    .line 467
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 466
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 469
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 470
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallTypeLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 473
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    :cond_4
    return-void
.end method

.method private updateHandlerLayout()V
    .locals 4

    .prologue
    .line 504
    iget-object v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    const v0, 0x7f0f00d5

    .line 508
    .local v0, "bgColor":I
    const v1, 0x7f0f00da

    .line 509
    .local v1, "textColor":I
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 510
    const v0, 0x7f0f00d7

    .line 511
    const v1, 0x7f0f00db

    .line 514
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 515
    iget-object v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 417
    const-string v0, "RejectCallsWithMessage"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 419
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const-string v7, "RejectCallsWithMessage"

    const-string v8, "onCreate()"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0081

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 130
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    const v7, 0x7f04008f

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->setContentView(I)V

    .line 136
    :goto_0
    const v7, 0x7f100248

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 137
    .local v2, "mCallInfoContainer":Landroid/widget/RelativeLayout;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 138
    .local v3, "mCallInfoContainerLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, -0x1

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 139
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    const/16 v7, 0x11

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 141
    const v7, 0x7f10018c

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 142
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 143
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a028a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 148
    :goto_1
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    const v7, 0x7f100193

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallStateLabel:Landroid/widget/TextView;

    .line 151
    const v7, 0x7f1000e9

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryName:Landroid/widget/TextView;

    .line 152
    const v7, 0x7f100198

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhoneNumber:Landroid/widget/TextView;

    .line 153
    const v7, 0x7f1001da

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhotoContainer:Landroid/view/View;

    .line 154
    const v7, 0x7f10028e

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mOnScreenMenuBtn:Landroid/widget/Button;

    .line 155
    const v7, 0x7f10019a

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallTypeLabel:Landroid/widget/TextView;

    .line 157
    const v7, 0x7f1001b5

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    .line 158
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v7, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    .line 160
    const v7, 0x7f1001b1

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    .line 161
    const v7, 0x7f10006f

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    .line 162
    const v7, 0x7f10006e

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    .line 163
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/android/incallui/help/RejectCallsWithMessage$1;

    invoke-direct {v8, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$1;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v7, 0x7f100070

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    .line 171
    const v7, 0x7f100071

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    .line 173
    const v7, 0x7f1001b3

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/RejectMsgContent;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectMsgContent;

    .line 175
    const v7, 0x7f1001b4

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

    .line 176
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

    new-instance v8, Lcom/android/incallui/help/RejectCallsWithMessage$2;

    invoke-direct {v8, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$2;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    const v7, 0x7f1001b7

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mrejectMsgTip:Landroid/widget/FrameLayout;

    .line 184
    const v7, 0x7f1001ba

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTip:Landroid/widget/FrameLayout;

    .line 185
    const v7, 0x7f1001bd

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    .line 187
    const v7, 0x7f1001be

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgComplete:Landroid/widget/FrameLayout;

    .line 189
    const v7, 0x7f1001bf

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    .line 191
    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->buttonAnimationInit(Landroid/content/Context;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 194
    .local v5, "res":Landroid/content/res/Resources;
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    .local v6, "responses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v7, Lcom/android/incallui/help/RejectCallsWithMessage;->defaultRejectMsgList:[I

    array-length v7, v7

    if-ge v0, v7, :cond_2

    .line 197
    sget-object v7, Lcom/android/incallui/help/RejectCallsWithMessage;->defaultRejectMsgList:[I

    aget v7, v7, v0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "message":Ljava/lang/String;
    const-string v7, "RejectCallsWithMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Reject Message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 133
    .end local v0    # "i":I
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "mCallInfoContainer":Landroid/widget/RelativeLayout;
    .end local v3    # "mCallInfoContainerLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "responses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const v7, 0x7f04008e

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/RejectCallsWithMessage;->setContentView(I)V

    goto/16 :goto_0

    .line 146
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2    # "mCallInfoContainer":Landroid/widget/RelativeLayout;
    .restart local v3    # "mCallInfoContainerLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0085

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 202
    .restart local v0    # "i":I
    .restart local v5    # "res":Landroid/content/res/Resources;
    .restart local v6    # "responses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v7, :cond_3

    .line 203
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v7, v6}, Lcom/android/incallui/RejectMsgContent;->configureRejectMsgList(Ljava/util/List;)V

    .line 204
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v7}, Lcom/android/incallui/RejectMsgContent;->getRejectMsgList()Landroid/widget/ListView;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    .line 205
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    if-eqz v7, :cond_3

    .line 206
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    new-instance v8, Lcom/android/incallui/help/RejectCallsWithMessage$RespondViaSmsItemClickListener;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/incallui/help/RejectCallsWithMessage$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;Lcom/android/incallui/help/RejectCallsWithMessage$1;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    :cond_3
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v8, Lcom/android/incallui/help/RejectCallsWithMessage$3;

    invoke-direct {v8, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$3;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v7, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;)V

    .line 224
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v8, Lcom/android/incallui/help/RejectCallsWithMessage$4;

    invoke-direct {v8, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$4;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v7, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;)V

    .line 233
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v8, Lcom/android/incallui/help/RejectCallsWithMessage$5;

    invoke-direct {v8, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$5;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v7, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerScrollListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;)V

    .line 244
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v7, :cond_4

    .line 245
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectMsgContent;

    const v8, 0x7f100348

    .line 246
    invoke-virtual {v7, v8}, Lcom/android/incallui/RejectMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCreateButton:Landroid/view/View;

    .line 248
    :cond_4
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCreateButton:Landroid/view/View;

    if-eqz v7, :cond_5

    .line 249
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCreateButton:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 250
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCreateButton:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setClickable(Z)V

    .line 251
    iget-object v7, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCreateButton:Landroid/view/View;

    new-instance v8, Lcom/android/incallui/help/RejectCallsWithMessage$6;

    invoke-direct {v8, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$6;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 259
    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->updateCallCard()V

    .line 260
    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->updateHandlerLayout()V

    .line 261
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 448
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 449
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "grabbedState"    # I

    .prologue
    .line 413
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 279
    const-string v0, "RejectCallsWithMessage"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 281
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->hideDragUpAnimation()V

    .line 284
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    const-string v0, "RejectCallsWithMessage"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 267
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->showDragUpAnimation()V

    .line 272
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mrejectMsgTip:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mrejectMsgTip:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "whichHandle"    # I

    .prologue
    .line 423
    packed-switch p2, :pswitch_data_0

    .line 433
    :goto_0
    return-void

    .line 425
    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->showToast()V

    goto :goto_0

    .line 428
    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->showToast()V

    goto :goto_0

    .line 423
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
    .line 288
    const-string v0, "RejectCallsWithMessage"

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

    .line 289
    return-void
.end method
