.class public Lcom/android/incallui/fragment/view/CallCardMcidView;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/fragment/view/ICallCardViewAdapter;


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
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v0, "CallCardMcidView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateBlendingImage - show : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getCallInfoContainer()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringTopBlendingImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v7, [F

    aput v6, v3, v8

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBottomBlendingImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v7, [F

    aput v6, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v7, [F

    aput v6, v4, v8

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v8

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v8

    aput-object v2, v5, v7

    aput-object v3, v5, v9

    aput-object v0, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/samsung/android/b/a/f;

    invoke-direct {v1}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/incallui/fragment/view/CallCardMcidView$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/view/CallCardMcidView$2;-><init>(Lcom/android/incallui/fragment/view/CallCardMcidView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CallCardMcidView"

    const-string v1, "mPhotoringShowAnimatorSet is already running."

    invoke-static {v0, v1, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_3

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringTopBlendingImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v7, [F

    neg-float v1, v1

    aput v1, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBottomBlendingImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v7, [F

    aput v2, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v7, [F

    aput v2, v5, v8

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    aput v6, v5, v8

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v8

    aput-object v3, v5, v7

    aput-object v2, v5, v9

    aput-object v0, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/samsung/android/b/a/f;

    invoke-direct {v1}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/incallui/fragment/view/CallCardMcidView$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/view/CallCardMcidView$3;-><init>(Lcom/android/incallui/fragment/view/CallCardMcidView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CallCardMcidView"

    const-string v1, "mPhotoringHideAnimatorSet is already running."

    invoke-static {v0, v1, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

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
    .locals 10

    const v9, 0x7f09026f

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "photoring_reject_number=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "photoring_reject_number"

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "photoring_reject_checked"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getPhotoringBlocked()I

    move-result v0

    if-ne v0, v8, :cond_3

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/fragment/view/CallCardMcidView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/incallui/InCallPresenter;->setPhotoringBlocked(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v6, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const v0, 0x7f090270

    invoke-static {v6, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f090233

    invoke-static {v6, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const v0, 0x7f090234

    invoke-static {v6, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_2
    invoke-static {v6, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const v0, 0x7f090270

    invoke-static {v6, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/fragment/view/CallCardMcidView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_9

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/fragment/view/CallCardMcidView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v7, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->setPhotoringBlocked(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    const v2, 0x7f020091

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->resetPhotoringBlendingHandler()V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtn:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtn:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    const/16 v2, 0x9

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    :cond_8
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f09026d

    const/4 v2, 0x0

    invoke-static {v6, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_9
    :try_start_1
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/fragment/view/CallCardMcidView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "CallCardMcidView"

    const-string v2, "doPhotoringBlock exception"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_a
    :try_start_3
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f090231

    const/4 v2, 0x0

    invoke-static {v6, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    :cond_c
    const v0, 0x7f09026d

    const/4 v2, 0x0

    :try_start_4
    invoke-static {v6, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_d
    move-object v0, v2

    goto/16 :goto_1

    :cond_e
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private inflatePhotoringView(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

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
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f10039d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoring:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideoBG:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideoBG:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringTopBlendingImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBottomBlendingImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtnImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtn:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001ea

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
    .locals 3

    const/16 v2, 0xc8

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getCallInfoContainer()Landroid/view/View;

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
    .locals 8

    const/4 v7, 0x4

    const/16 v6, 0x20

    const/4 v5, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoring:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoring:Landroid/view/View;

    and-int/lit8 v0, p2, 0x1

    if-ne v0, v5, :cond_b

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    and-int/lit8 v0, p2, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_c

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    and-int/lit8 v0, p2, 0x4

    if-ne v0, v7, :cond_d

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    and-int/lit8 v0, p2, 0x8

    if-ne v0, v2, :cond_e

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    and-int/lit8 v0, p2, 0x10

    const/16 v4, 0x10

    if-ne v0, v4, :cond_f

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideoBG:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideoBG:Landroid/view/View;

    and-int/lit8 v0, p2, 0x4

    if-ne v0, v7, :cond_10

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringTopBlendingImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringTopBlendingImage:Landroid/widget/ImageView;

    and-int/lit8 v0, p2, 0x20

    if-ne v0, v6, :cond_11

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBottomBlendingImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBottomBlendingImage:Landroid/widget/ImageView;

    and-int/lit8 v3, p2, 0x20

    if-ne v3, v6, :cond_7

    move v2, v1

    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    and-int/lit8 v0, p2, 0x20

    if-eq v0, v6, :cond_9

    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->resetPhotoringBlendingHandler()V

    :cond_9
    const-string v0, "agif_call_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isDisplayingAgif()Z

    move-result v0

    if-eqz v0, :cond_a

    and-int/lit8 v0, p2, 0x1

    if-ne v0, v5, :cond_a

    const-string v0, "CallCardMcidView"

    const-string v2, "remove agif image"

    invoke-static {v0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateAgifContainer(Z)V

    :cond_a
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    return-void

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto/16 :goto_1

    :cond_d
    move v0, v2

    goto :goto_2

    :cond_e
    move v0, v2

    goto :goto_3

    :cond_f
    move v0, v2

    goto :goto_4

    :cond_10
    move v0, v2

    goto :goto_5

    :cond_11
    move v0, v2

    goto :goto_6
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
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "CallCardMcidView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "CallCardMcidView"

    const-string v1, "onClick video View was clicked"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const-string v0, "CallCardMcidView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video playing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoPlaying:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iput-boolean v7, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoPlaying:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iput-boolean v4, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoPlaying:Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->doPhotoringBlock()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoMute:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSilentRing:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    iput-boolean v4, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSilentRing:Z

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v6, v6}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iput-boolean v7, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoMute:Z

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iput-boolean v4, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mVideoMute:Z

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_4
    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mShowBlendingImage:Z

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->animateBlendingImage(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1001e3
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
    .locals 8

    const/16 v7, 0x64

    const/16 v6, 0x2b

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "CallCardMcidView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhotoringState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", block : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CallCardMcidView"

    const-string v1, "fragment is detached from activity, return"

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->inflatePhotoringView(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoring:Landroid/view/View;

    if-nez v0, :cond_2

    const-string v0, "CallCardMcidView"

    const-string v1, "photoring view is null"

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "CallCardMcidView"

    const-string v1, "IncomingRejectedCall or IncomingMissedCall, return"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iput-object p2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringstate:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    invoke-direct {p0, p1, p3}, Lcom/android/incallui/fragment/view/CallCardMcidView;->arrangePhotoringLayout(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    sget-object v0, Lcom/android/incallui/fragment/view/CallCardMcidView$6;->$SwitchMap$com$android$incallui$util$PhotoringUtil$PhotoringMTState:[I

    invoke-virtual {p2}, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const v1, 0x7f09026e

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const v1, 0x7f090232

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const v1, 0x7f09026e

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x9

    if-nez p3, :cond_7

    const/16 v0, 0x29

    :cond_7
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mBlockImg:Landroid/widget/ImageView;

    if-nez p3, :cond_8

    const v0, 0x7f020090

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_8
    const v0, 0x7f020091

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getPhotoringContentPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "CallCardMcidView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photoring content : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_9
    const-string v0, "CallCardMcidView"

    const-string v2, "image content"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringBlendingHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    invoke-static {v1}, Lcom/android/incallui/util/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "CallCardMcidView"

    const-string v2, "Animated GIF image"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/util/GifUtil;

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Lcom/android/incallui/util/GifUtil;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/GifUtil;->setImagePath(Ljava/lang/String;)V

    invoke-direct {p0, p1, v6}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    invoke-virtual {v0}, Lcom/android/incallui/util/GifUtil;->startAnimate()V

    :cond_b
    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMcidDownloadble()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const-string v0, "CallCardMcidView"

    const-string v1, " FLAG_SECURE : on"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_d

    invoke-static {v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getDrawableFromBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->updateGradientColor(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v6}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    goto :goto_2

    :cond_e
    const-string v0, "CallCardMcidView"

    const-string v2, "video content"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/16 v0, 0x1d

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mSndImg:Landroid/widget/ImageView;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/incallui/fragment/view/CallCardMcidView$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/view/CallCardMcidView$4;-><init>(Lcom/android/incallui/fragment/view/CallCardMcidView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/incallui/fragment/view/CallCardMcidView$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/view/CallCardMcidView$5;-><init>(Lcom/android/incallui/fragment/view/CallCardMcidView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_2

    :cond_f
    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_10
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    :cond_11
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    invoke-virtual {v0}, Lcom/android/incallui/util/GifUtil;->clear()V

    iput-object v4, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mGiftUtil:Lcom/android/incallui/util/GifUtil;

    :cond_12
    iput-object v4, p0, Lcom/android/incallui/fragment/view/CallCardMcidView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, p1, v3}, Lcom/android/incallui/fragment/view/CallCardMcidView;->setPhotoringViewVisibility(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMcidDownloadble()Z

    move-result v0

    if-nez v0, :cond_0

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

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
