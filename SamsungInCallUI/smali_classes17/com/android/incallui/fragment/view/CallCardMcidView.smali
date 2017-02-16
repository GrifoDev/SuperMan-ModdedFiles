.class public Lcom/android/incallui/fragment/view/CallCardMcidView;
.super Ljava/lang/Object;
.source "CallCardMcidView.java"

# interfaces
.implements Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.android.phone.callsettings"

.field private static final EVENT_PHOTORING_BLENDING_AUTO_HIDE:I = 0x64

.field private static final EVENT_PHOTORING_BLENDING_AUTO_SHOW:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "CallCardMcidView"

.field private static final PHOTORING_REJECT_CHECKED:Ljava/lang/String; = "photoring_reject_checked"

.field private static final PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

.field private static final PHOTORING_REJECT_NUMBER:Ljava/lang/String; = "photoring_reject_number"

.field private static final PHOTORING_REJECT_TABLE:Ljava/lang/String; = "photoring_reject_num"


# instance fields
.field private final BLENDING_IMAGE:I

.field private final BLOCK_ICON:I

.field private final PHOTORING_AUTO_ANIMATING_DELAY_TIME:I

.field private final SOUND_ICON:I

.field private final VIEW_IMAGE:I

.field private final VIEW_PHOTORING:I

.field private final VIEW_VIDEO:I

.field private mBlockImg:Landroid/widget/ImageView;

.field private final mFragment:Lcom/android/incallui/fragment/CallCardFragment;

.field private mGiftUtil:Lcom/android/incallui/util/GifUtil;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPhotoring:Landroid/view/View;

.field private mPhotoringBlendingBtn:Landroid/view/View;

.field private mPhotoringBlendingBtnImage:Landroid/widget/ImageView;

.field mPhotoringBlendingHandler:Landroid/os/Handler;

.field private mPhotoringBottomBlendingImage:Landroid/widget/ImageView;

.field private mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPhotoringImage:Landroid/widget/ImageView;

.field private mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPhotoringStub:Landroid/view/ViewStub;

.field private mPhotoringTopBlendingImage:Landroid/widget/ImageView;

.field private mPhotoringVideo:Landroid/widget/VideoView;

.field private mPhotoringVideoBG:Landroid/view/View;

.field private mPhotoringstate:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

.field private mShowBlendingImage:Z

.field private mSilentRing:Z

.field private mSndImg:Landroid/widget/ImageView;

.field private mVideoMute:Z

.field private mVideoPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "content://com.android.phone.callsettings/photoring_reject_num"

    .line 65
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 4
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->PHOTORING_AUTO_ANIMATING_DELAY_TIME:I

    .line 73
    iput v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->VIEW_PHOTORING:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->VIEW_IMAGE:I

    .line 75
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->VIEW_VIDEO:I

    .line 76
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->BLOCK_ICON:I

    .line 77
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->SOUND_ICON:I

    .line 78
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->BLENDING_IMAGE:I

    .line 91
    iput-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mShowBlendingImage:Z

    .line 96
    iput-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 97
    iput-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    .line 98
    iput-boolean v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoMute:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoPlaying:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSilentRing:Z

    .line 101
    sget-object v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_NONE:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringstate:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    .line 104
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardMcidView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardMcidView$1;-><init>(Lcom/android/incallui/fragment/view/CallCardMcidView;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    .line 123
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/view/CallCardMcidView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardMcidView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->animateBlendingImage(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/view/CallCardMcidView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardMcidView;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mShowBlendingImage:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/fragment/view/CallCardMcidView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardMcidView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mShowBlendingImage:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/view/CallCardMcidView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardMcidView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/view/CallCardMcidView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardMcidView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtnImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/incallui/fragment/view/CallCardMcidView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardMcidView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoMute:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/incallui/fragment/view/CallCardMcidView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardMcidView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSilentRing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/incallui/fragment/view/CallCardMcidView;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardMcidView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/incallui/fragment/view/CallCardMcidView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardMcidView;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private animateBlendingImage(Z)V
    .locals 13
    .param p1, "show"    # Z

    .prologue
    .line 375
    const/16 v5, 0x190

    .line 376
    .local v5, "duration":I
    const-string v8, "CallCardMcidView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "animateBlendingImage - show : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 377
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getCallInfoContainer()Landroid/view/View;

    move-result-object v2

    .line 378
    .local v2, "callInfoContainer":Landroid/view/View;
    if-eqz p1, :cond_2

    .line 379
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v8, :cond_0

    .line 380
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 381
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringTopBlendingImage:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 382
    .local v6, "topImg":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBottomBlendingImage:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 383
    .local v0, "bottomImg":Landroid/animation/ObjectAnimator;
    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 384
    .local v3, "callerInfoText":Landroid/animation/ObjectAnimator;
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 386
    .local v4, "callerInfoTextFade":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    const/4 v10, 0x2

    aput-object v3, v9, v10

    const/4 v10, 0x3

    aput-object v4, v9, v10

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 387
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x190

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 388
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v9}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 389
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/android/incallui/fragment/view/CallCardMcidView$2;

    invoke-direct {v9, p0}, Lcom/android/incallui/fragment/view/CallCardMcidView$2;-><init>(Lcom/android/incallui/fragment/view/CallCardMcidView;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 400
    .end local v0    # "bottomImg":Landroid/animation/ObjectAnimator;
    .end local v3    # "callerInfoText":Landroid/animation/ObjectAnimator;
    .end local v4    # "callerInfoTextFade":Landroid/animation/ObjectAnimator;
    .end local v6    # "topImg":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 401
    const-string v8, "CallCardMcidView"

    const-string v9, "mPhotoringShowAnimatorSet is already running."

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 436
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 406
    :cond_2
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v8, :cond_3

    .line 407
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 408
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0323

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 409
    .local v7, "topTranslationY":F
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0322

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 411
    .local v1, "bottomTranslationY":F
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringTopBlendingImage:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    neg-float v12, v7

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 412
    .restart local v6    # "topImg":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBottomBlendingImage:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v1, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 413
    .restart local v0    # "bottomImg":Landroid/animation/ObjectAnimator;
    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v1, v9, v10

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 414
    .restart local v3    # "callerInfoText":Landroid/animation/ObjectAnimator;
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 416
    .restart local v4    # "callerInfoTextFade":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    const/4 v10, 0x2

    aput-object v3, v9, v10

    const/4 v10, 0x3

    aput-object v4, v9, v10

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 417
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x190

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 418
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v9}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 419
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/android/incallui/fragment/view/CallCardMcidView$3;

    invoke-direct {v9, p0}, Lcom/android/incallui/fragment/view/CallCardMcidView$3;-><init>(Lcom/android/incallui/fragment/view/CallCardMcidView;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 430
    .end local v0    # "bottomImg":Landroid/animation/ObjectAnimator;
    .end local v1    # "bottomTranslationY":F
    .end local v3    # "callerInfoText":Landroid/animation/ObjectAnimator;
    .end local v4    # "callerInfoTextFade":Landroid/animation/ObjectAnimator;
    .end local v6    # "topImg":Landroid/animation/ObjectAnimator;
    .end local v7    # "topTranslationY":F
    :cond_3
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 431
    const-string v8, "CallCardMcidView"

    const-string v9, "mPhotoringHideAnimatorSet is already running."

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 434
    :cond_4
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private arrangePhotoringLayout(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 3
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "block"    # I

    .prologue
    .line 249
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhotoContainer()Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, "photoContainer":Landroid/view/View;
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringstate:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    sget-object v2, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_NONE:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringstate:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    sget-object v2, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_MOBILE_DATA_OFF:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    if-eq v1, v2, :cond_0

    if-nez p2, :cond_0

    .line 253
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_0
    return-void
.end method

.method private doPhotoringBlock()V
    .locals 19

    .prologue
    .line 274
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v10

    .line 276
    .local v10, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    .line 277
    .local v9, "callList":Lcom/android/incallui/CallList;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v16

    .line 279
    .local v16, "inCallPresenter":Lcom/android/incallui/InCallPresenter;
    const/16 v17, 0x0

    .line 280
    .local v17, "incomingCall":Lcom/android/incallui/Call;
    if-eqz v9, :cond_0

    .line 281
    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v17

    .line 283
    :cond_0
    const/4 v8, 0x0

    .line 284
    .local v8, "blockNumber":Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 285
    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 287
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photoring_reject_number=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, "where":Ljava/lang/String;
    const/4 v11, 0x0

    .line 289
    .local v11, "cur":Landroid/database/Cursor;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v12, "cv":Landroid/content/ContentValues;
    const-string v2, "photoring_reject_number"

    invoke-virtual {v12, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v2, "photoring_reject_checked"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/InCallPresenter;->getPhotoringBlocked()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 294
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/fragment/view/CallCardMcidView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallPresenter;->setPhotoringBlocked(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    const v3, 0x7f020081

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 299
    const v2, 0x7f090203

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 300
    const v2, 0x7f090204

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 358
    :cond_2
    :goto_0
    return-void

    .line 301
    :cond_3
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 302
    const v2, 0x7f0901d2

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 303
    const v2, 0x7f0901d3

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 306
    :cond_4
    const v2, 0x7f090203

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 307
    const v2, 0x7f090204

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 310
    :cond_5
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/fragment/view/CallCardMcidView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 312
    if-eqz v11, :cond_b

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 313
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 314
    .local v14, "id":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 315
    .local v18, "whereId":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/fragment/view/CallCardMcidView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v12, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 319
    .end local v14    # "id":J
    .end local v18    # "whereId":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallPresenter;->setPhotoringBlocked(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    const v3, 0x7f020082

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->stopPlayback()V

    .line 324
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    .line 329
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    .line 332
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->resetPhotoringBlendingHandler()V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtn:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtn:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 336
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v2, :cond_a

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    const/16 v3, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    .line 341
    :cond_a
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 342
    const v2, 0x7f090201

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :goto_2
    if-eqz v11, :cond_2

    .line 353
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 354
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 317
    :cond_b
    :try_start_1
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/fragment/view/CallCardMcidView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 349
    :catch_0
    move-exception v13

    .line 350
    .local v13, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "CallCardMcidView"

    const-string v3, "doPhotoringBlock exception"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 352
    if-eqz v11, :cond_2

    .line 353
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 354
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 343
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_c
    :try_start_3
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 344
    const v2, 0x7f0901d0

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 352
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_d

    .line 353
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 354
    const/4 v11, 0x0

    :cond_d
    throw v2

    .line 347
    :cond_e
    const v2, 0x7f090201

    const/4 v3, 0x0

    :try_start_4
    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private inflatePhotoringView(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 223
    const-string v0, "CallCardMcidView"

    const-string v1, "inflatePhotoringView getView() is null"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringStub:Landroid/view/ViewStub;

    .line 227
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 229
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoring:Landroid/view/View;

    .line 230
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    .line 231
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    .line 234
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideoBG:Landroid/view/View;

    .line 235
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideoBG:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringTopBlendingImage:Landroid/widget/ImageView;

    .line 237
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBottomBlendingImage:Landroid/widget/ImageView;

    .line 238
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtnImage:Landroid/widget/ImageView;

    .line 239
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtn:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    .line 242
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    .line 244
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V
    .locals 1
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 216
    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->inflatePhotoringView(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    .line 219
    :cond_0
    return-void
.end method

.method private resetPhotoringBlendingHandler()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const/16 v2, 0x64

    .line 361
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/CallCardFragment;->getCallInfoContainer()Landroid/view/View;

    move-result-object v0

    .line 368
    .local v0, "callInfoContainer":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 369
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 370
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 372
    :cond_2
    return-void
.end method

.method private setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 7
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "view"    # I

    .prologue
    const/4 v6, 0x4

    const/16 v5, 0x20

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 258
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoring:Landroid/view/View;

    and-int/lit8 v0, p2, 0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    and-int/lit8 v0, p2, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    and-int/lit8 v0, p2, 0x4

    if-ne v0, v6, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 261
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    and-int/lit8 v0, p2, 0x8

    if-ne v0, v2, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    and-int/lit8 v0, p2, 0x10

    const/16 v4, 0x10

    if-ne v0, v4, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideoBG:Landroid/view/View;

    and-int/lit8 v0, p2, 0x4

    if-ne v0, v6, :cond_6

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringTopBlendingImage:Landroid/widget/ImageView;

    and-int/lit8 v0, p2, 0x20

    if-ne v0, v5, :cond_7

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBottomBlendingImage:Landroid/widget/ImageView;

    and-int/lit8 v3, p2, 0x20

    if-ne v3, v5, :cond_8

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    and-int/lit8 v0, p2, 0x20

    if-eq v0, v5, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->resetPhotoringBlendingHandler()V

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    .line 271
    return-void

    :cond_1
    move v0, v2

    .line 258
    goto :goto_0

    :cond_2
    move v0, v2

    .line 259
    goto :goto_1

    :cond_3
    move v0, v2

    .line 260
    goto :goto_2

    :cond_4
    move v0, v2

    .line 261
    goto :goto_3

    :cond_5
    move v0, v2

    .line 262
    goto :goto_4

    :cond_6
    move v0, v2

    .line 263
    goto :goto_5

    :cond_7
    move v0, v2

    .line 265
    goto :goto_6

    :cond_8
    move v1, v2

    .line 266
    goto :goto_7
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 1

    .prologue
    .line 154
    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->resetPhotoringBlendingHandler()V

    .line 163
    :cond_2
    return-void
.end method

.method public animateForSwap()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public isPhotoringShowing()Z
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    .line 562
    invoke-virtual {v0}, Landroid/widget/VideoView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 172
    .local v0, "id":I
    const-string v2, "CallCardMcidView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    packed-switch v0, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 175
    :pswitch_1
    const-string v2, "CallCardMcidView"

    const-string v3, "onClick video View was clicked"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 177
    const-string v2, "CallCardMcidView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video playing : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoPlaying:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoPlaying:Z

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    .line 180
    iput-boolean v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoPlaying:Z

    goto :goto_0

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 183
    iput-boolean v5, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoPlaying:Z

    goto :goto_0

    .line 188
    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->doPhotoringBlock()V

    goto :goto_0

    .line 191
    :pswitch_3
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 192
    iget-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoMute:Z

    if-eqz v2, :cond_3

    .line 193
    iget-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSilentRing:Z

    if-nez v2, :cond_2

    .line 194
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const-string v3, "telecom"

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 195
    .local v1, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 196
    iput-boolean v5, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSilentRing:Z

    .line 198
    .end local v1    # "tm":Landroid/telecom/TelecomManager;
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v7, v7}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 199
    iput-boolean v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoMute:Z

    .line 200
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    const v3, 0x7f020084

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 202
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v6, v6}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 203
    iput-boolean v5, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoMute:Z

    .line 204
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    const v3, 0x7f020085

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 209
    :pswitch_4
    iget-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mShowBlendingImage:Z

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/view/CallCardMcidView;->animateBlendingImage(Z)V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x7f10016b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 567
    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMcidDownloadble()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 570
    const-string v0, "CallCardMcidView"

    const-string v1, "FLAG_SECURE : off"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->resetPhotoringBlendingHandler()V

    .line 574
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V

    .line 131
    :cond_0
    return-void
.end method

.method public setCallState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 136
    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 141
    return-void
.end method

.method public updatePhotoringState(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V
    .locals 10
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "state"    # Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;
    .param p3, "block"    # I

    .prologue
    .line 439
    const-string v6, "CallCardMcidView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePhotoringState - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", block : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 440
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_1

    .line 441
    const-string v6, "CallCardMcidView"

    const-string v7, "fragment is detached from activity, return"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->inflatePhotoringView(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    .line 445
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoring:Landroid/view/View;

    if-nez v6, :cond_2

    .line 446
    const-string v6, "CallCardMcidView"

    const-string v7, "photoring view is null"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 449
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 450
    :cond_3
    const-string v6, "CallCardMcidView"

    const-string v7, "IncomingRejectedCall or IncomingMissedCall, return"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_4
    iput-object p2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringstate:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    .line 454
    invoke-direct {p0, p1, p3}, Lcom/android/incallui/fragment/view/CallCardMcidView;->arrangePhotoringLayout(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    .line 455
    sget-object v6, Lcom/android/incallui/fragment/view/CallCardMcidView$6;->$SwitchMap$com$android$incallui$util$PhotoringUtil$PhotoringMTState:[I

    invoke-virtual {p2}, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 457
    :pswitch_0
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 458
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    const v7, 0x7f090202

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 459
    :cond_5
    const-string v6, "feature_ktt"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 460
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    const v7, 0x7f0901d1

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 463
    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    const v7, 0x7f090202

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 467
    :pswitch_1
    const/16 v5, 0x9

    .line 468
    .local v5, "visible":I
    if-nez p3, :cond_7

    .line 469
    or-int/lit8 v5, v5, 0x20

    .line 471
    :cond_7
    invoke-direct {p0, p1, v5}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    .line 472
    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    if-nez p3, :cond_8

    const v6, 0x7f020081

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_8
    const v6, 0x7f020082

    goto :goto_1

    .line 475
    .end local v5    # "visible":I
    :pswitch_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getPhotoringContentPath()Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, "filePath":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 477
    const-string v6, "CallCardMcidView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "photoring content : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 479
    :cond_9
    const-string v6, "CallCardMcidView"

    const-string v7, "image content"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_a

    .line 481
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    const-wide/16 v8, 0x9c4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 483
    :cond_a
    invoke-static {v3}, Lcom/android/incallui/util/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 484
    const-string v6, "CallCardMcidView"

    const-string v7, "Animated GIF image"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance v6, Lcom/android/incallui/util/GifUtil;

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-direct {v6, v7}, Lcom/android/incallui/util/GifUtil;-><init>(Landroid/widget/ImageView;)V

    iput-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    .line 486
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    invoke-virtual {v6, v3}, Lcom/android/incallui/util/GifUtil;->setImagePath(Ljava/lang/String;)V

    .line 487
    const/16 v6, 0x2b

    invoke-direct {p0, p1, v6}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    .line 488
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    invoke-virtual {v6}, Lcom/android/incallui/util/GifUtil;->startAnimate()V

    .line 532
    :cond_b
    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMcidDownloadble()Z

    move-result v6

    if-nez v6, :cond_0

    .line 533
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v6}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 534
    const-string v6, "CallCardMcidView"

    const-string v7, " FLAG_SECURE : on"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 490
    :cond_c
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_b

    .line 491
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 492
    .local v2, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 493
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_d

    .line 494
    invoke-static {v2}, Lcom/android/incallui/util/GraphicResourceUtils;->getDrawableFromBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/incallui/InCallActivity;->updateGradientColor(Landroid/graphics/drawable/Drawable;)V

    .line 496
    :cond_d
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 497
    const/16 v6, 0x2b

    invoke-direct {p0, p1, v6}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    goto :goto_2

    .line 501
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    :cond_e
    const-string v6, "CallCardMcidView"

    const-string v7, "video content"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 503
    .local v1, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 504
    .local v4, "ringerMode":I
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v6, v3}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 505
    const/4 v6, 0x2

    if-ne v4, v6, :cond_f

    .line 506
    const/16 v6, 0x1d

    invoke-direct {p0, p1, v6}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    .line 507
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    const v7, 0x7f020085

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 512
    :goto_3
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    new-instance v7, Lcom/android/incallui/fragment/view/CallCardMcidView$4;

    invoke-direct {v7, p0}, Lcom/android/incallui/fragment/view/CallCardMcidView$4;-><init>(Lcom/android/incallui/fragment/view/CallCardMcidView;)V

    invoke-virtual {v6, v7}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 523
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    new-instance v7, Lcom/android/incallui/fragment/view/CallCardMcidView$5;

    invoke-direct {v7, p0}, Lcom/android/incallui/fragment/view/CallCardMcidView$5;-><init>(Lcom/android/incallui/fragment/view/CallCardMcidView;)V

    invoke-virtual {v6, v7}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_2

    .line 509
    :cond_f
    const/16 v6, 0xd

    invoke-direct {p0, p1, v6}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    goto :goto_3

    .line 539
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "ringerMode":I
    :pswitch_3
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 541
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->stopPlayback()V

    .line 543
    :cond_10
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    if-eqz v6, :cond_11

    .line 544
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    invoke-virtual {v6}, Lcom/android/incallui/util/GifUtil;->clear()V

    .line 545
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    .line 547
    :cond_11
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 548
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 549
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    .line 550
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMcidDownloadble()Z

    move-result v6

    if-nez v6, :cond_0

    .line 551
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v6}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 552
    const-string v6, "CallCardMcidView"

    const-string v7, "FLAG_SECURE : off"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
