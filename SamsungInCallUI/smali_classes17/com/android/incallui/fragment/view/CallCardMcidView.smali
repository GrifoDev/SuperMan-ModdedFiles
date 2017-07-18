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

    const-string v0, "content://com.android.phone.callsettings/photoring_reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9c4

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->PHOTORING_AUTO_ANIMATING_DELAY_TIME:I

    iput v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->VIEW_PHOTORING:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->VIEW_IMAGE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->VIEW_VIDEO:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->BLOCK_ICON:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->SOUND_ICON:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->BLENDING_IMAGE:I

    iput-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mShowBlendingImage:Z

    iput-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    iput-boolean v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoMute:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoPlaying:Z

    iput-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSilentRing:Z

    sget-object v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_NONE:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringstate:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    new-instance v0, Lcom/android/incallui/fragment/view/CallCardMcidView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardMcidView$1;-><init>(Lcom/android/incallui/fragment/view/CallCardMcidView;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/view/CallCardMcidView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->animateBlendingImage(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/view/CallCardMcidView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mShowBlendingImage:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/fragment/view/CallCardMcidView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mShowBlendingImage:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/view/CallCardMcidView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/view/CallCardMcidView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtnImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/incallui/fragment/view/CallCardMcidView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoMute:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/incallui/fragment/view/CallCardMcidView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSilentRing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/incallui/fragment/view/CallCardMcidView;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/incallui/fragment/view/CallCardMcidView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private animateBlendingImage(Z)V
    .locals 13

    const/16 v5, 0x190

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

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getCallInfoContainer()Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_2

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v8, :cond_0

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringTopBlendingImage:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBottomBlendingImage:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

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

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x190

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v9}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/android/incallui/fragment/view/CallCardMcidView$2;

    invoke-direct {v9, p0}, Lcom/android/incallui/fragment/view/CallCardMcidView$2;-><init>(Lcom/android/incallui/fragment/view/CallCardMcidView;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "CallCardMcidView"

    const-string v9, "mPhotoringShowAnimatorSet is already running."

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v8, :cond_3

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a031f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a031e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringTopBlendingImage:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    neg-float v12, v7

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBottomBlendingImage:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v1, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v1, v9, v10

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

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

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x190

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v9}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/android/incallui/fragment/view/CallCardMcidView$3;

    invoke-direct {v9, p0}, Lcom/android/incallui/fragment/view/CallCardMcidView$3;-><init>(Lcom/android/incallui/fragment/view/CallCardMcidView;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "CallCardMcidView"

    const-string v9, "mPhotoringHideAnimatorSet is already running."

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private arrangePhotoringLayout(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhotoContainer()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringstate:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    sget-object v2, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_NONE:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringstate:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    sget-object v2, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_MOBILE_DATA_OFF:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    if-eq v1, v2, :cond_0

    if-nez p2, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private doPhotoringBlock()V
    .locals 19

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v10

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v16

    const/16 v17, 0x0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v17

    :cond_0
    const/4 v8, 0x0

    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

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

    const/4 v11, 0x0

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "photoring_reject_number"

    invoke-virtual {v12, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "photoring_reject_checked"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/InCallPresenter;->getPhotoringBlocked()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/fragment/view/CallCardMcidView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallPresenter;->setPhotoringBlocked(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    const v3, 0x7f020081

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f09020a

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const v2, 0x7f09020b

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0901d8

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const v2, 0x7f0901d9

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    const v2, 0x7f09020a

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const v2, 0x7f09020b

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/fragment/view/CallCardMcidView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_b

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/fragment/view/CallCardMcidView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v12, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallPresenter;->setPhotoringBlocked(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    const v3, 0x7f020082

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->resetPhotoringBlendingHandler()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtn:Landroid/view/View;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtn:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    const/16 v3, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    :cond_a
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const v2, 0x7f090208

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    goto/16 :goto_0

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

    :catch_0
    move-exception v13

    :try_start_2
    const-string v2, "CallCardMcidView"

    const-string v3, "doPhotoringBlock exception"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_c
    :try_start_3
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const v2, 0x7f0901d6

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v11, :cond_d

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_d
    throw v2

    :cond_e
    const v2, 0x7f090208

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

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "CallCardMcidView"

    const-string v1, "inflatePhotoringView getView() is null"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoring:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideoBG:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideoBG:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringTopBlendingImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBottomBlendingImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtnImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtn:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V
    .locals 1

    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->inflatePhotoringView(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    :cond_0
    return-void
.end method

.method private resetPhotoringBlendingHandler()V
    .locals 4

    const/16 v3, 0xc8

    const/16 v2, 0x64

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/CallCardFragment;->getCallInfoContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 7

    const/4 v6, 0x4

    const/16 v5, 0x20

    const/4 v1, 0x0

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoring:Landroid/view/View;

    and-int/lit8 v0, p2, 0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    and-int/lit8 v0, p2, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    and-int/lit8 v0, p2, 0x4

    if-ne v0, v6, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    and-int/lit8 v0, p2, 0x8

    if-ne v0, v2, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    and-int/lit8 v0, p2, 0x10

    const/16 v4, 0x10

    if-ne v0, v4, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideoBG:Landroid/view/View;

    and-int/lit8 v0, p2, 0x4

    if-ne v0, v6, :cond_6

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringTopBlendingImage:Landroid/widget/ImageView;

    and-int/lit8 v0, p2, 0x20

    if-ne v0, v5, :cond_7

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBottomBlendingImage:Landroid/widget/ImageView;

    and-int/lit8 v3, p2, 0x20

    if-ne v3, v5, :cond_8

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    and-int/lit8 v0, p2, 0x20

    if-eq v0, v5, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->resetPhotoringBlendingHandler()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    move v0, v2

    goto :goto_6

    :cond_8
    move v1, v2

    goto :goto_7
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 1

    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->resetPhotoringBlendingHandler()V

    :cond_2
    return-void
.end method

.method public animateForSwap()V
    .locals 0

    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 0

    return-void
.end method

.method public isPhotoringShowing()Z
    .locals 1

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

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

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

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v2, "CallCardMcidView"

    const-string v3, "onClick video View was clicked"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

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

    iget-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoPlaying:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    iput-boolean v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoPlaying:Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    iput-boolean v5, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoPlaying:Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->doPhotoringBlock()V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoMute:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSilentRing:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const-string v3, "telecom"

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->silenceRinger()V

    iput-boolean v5, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSilentRing:Z

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v7, v7}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iput-boolean v8, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoMute:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    const v3, 0x7f020084

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v6, v6}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iput-boolean v5, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoMute:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    const v3, 0x7f020085

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_4
    iget-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mShowBlendingImage:Z

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/view/CallCardMcidView;->animateBlendingImage(Z)V

    goto :goto_0

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

    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMcidDownloadble()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const-string v0, "CallCardMcidView"

    const-string v1, "FLAG_SECURE : off"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->resetPhotoringBlendingHandler()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setCallState(I)V
    .locals 0

    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    return-void
.end method

.method public updatePhotoringState(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V
    .locals 10

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

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "CallCardMcidView"

    const-string v7, "fragment is detached from activity, return"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->inflatePhotoringView(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoring:Landroid/view/View;

    if-nez v6, :cond_2

    const-string v6, "CallCardMcidView"

    const-string v7, "photoring view is null"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

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

    :cond_3
    const-string v6, "CallCardMcidView"

    const-string v7, "IncomingRejectedCall or IncomingMissedCall, return"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iput-object p2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringstate:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    invoke-direct {p0, p1, p3}, Lcom/android/incallui/fragment/view/CallCardMcidView;->arrangePhotoringLayout(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    sget-object v6, Lcom/android/incallui/fragment/view/CallCardMcidView$6;->$SwitchMap$com$android$incallui$util$PhotoringUtil$PhotoringMTState:[I

    invoke-virtual {p2}, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    const v7, 0x7f090209

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    const-string v6, "feature_ktt"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    const v7, 0x7f0901d7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    const v7, 0x7f090209

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    const/16 v5, 0x9

    if-nez p3, :cond_7

    or-int/lit8 v5, v5, 0x20

    :cond_7
    invoke-direct {p0, p1, v5}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    if-nez p3, :cond_8

    const v6, 0x7f020081

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_8
    const v6, 0x7f020082

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getPhotoringContentPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

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

    :cond_9
    const-string v6, "CallCardMcidView"

    const-string v7, "image content"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    const-wide/16 v8, 0x9c4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    invoke-static {v3}, Lcom/android/incallui/util/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "CallCardMcidView"

    const-string v7, "Animated GIF image"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/android/incallui/util/GifUtil;

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-direct {v6, v7}, Lcom/android/incallui/util/GifUtil;-><init>(Landroid/widget/ImageView;)V

    iput-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    invoke-virtual {v6, v3}, Lcom/android/incallui/util/GifUtil;->setImagePath(Ljava/lang/String;)V

    const/16 v6, 0x2b

    invoke-direct {p0, p1, v6}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    invoke-virtual {v6}, Lcom/android/incallui/util/GifUtil;->startAnimate()V

    :cond_b
    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMcidDownloadble()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v6}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    const-string v6, "CallCardMcidView"

    const-string v7, " FLAG_SECURE : on"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_b

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_d

    invoke-static {v2}, Lcom/android/incallui/util/GraphicResourceUtils;->getDrawableFromBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/incallui/InCallActivity;->updateGradientColor(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v6, 0x2b

    invoke-direct {p0, p1, v6}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    goto :goto_2

    :cond_e
    const-string v6, "CallCardMcidView"

    const-string v7, "video content"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v6, v3}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    const/4 v6, 0x2

    if-ne v4, v6, :cond_f

    const/16 v6, 0x1d

    invoke-direct {p0, p1, v6}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    const v7, 0x7f020085

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    new-instance v7, Lcom/android/incallui/fragment/view/CallCardMcidView$4;

    invoke-direct {v7, p0}, Lcom/android/incallui/fragment/view/CallCardMcidView$4;-><init>(Lcom/android/incallui/fragment/view/CallCardMcidView;)V

    invoke-virtual {v6, v7}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    new-instance v7, Lcom/android/incallui/fragment/view/CallCardMcidView$5;

    invoke-direct {v7, p0}, Lcom/android/incallui/fragment/view/CallCardMcidView$5;-><init>(Lcom/android/incallui/fragment/view/CallCardMcidView;)V

    invoke-virtual {v6, v7}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_2

    :cond_f
    const/16 v6, 0xd

    invoke-direct {p0, p1, v6}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    goto :goto_3

    :pswitch_3
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_10
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    invoke-virtual {v6}, Lcom/android/incallui/util/GifUtil;->clear()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    :cond_11
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMcidDownloadble()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v6}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    const-string v6, "CallCardMcidView"

    const-string v7, "FLAG_SECURE : off"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
