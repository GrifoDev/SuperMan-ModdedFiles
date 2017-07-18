.class public Lcom/android/incallui/fragment/view/CallCardSmartCallView;
.super Ljava/lang/Object;
.source "CallCardSmartCallView.java"

# interfaces
.implements Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallCardSmartCallView"

.field private static hasbeenNameUpdate:Z

.field private static hasbeenPhotoUpdate:Z

.field private static hasbeenStatusUpdate:Z

.field private static misTimeout:Z


# instance fields
.field private final mFragment:Lcom/android/incallui/fragment/CallCardFragment;

.field private mNameLayout:Landroid/view/View;

.field private mSmartCallInfoView:Landroid/view/View;

.field private mSmartCallName:Landroid/widget/TextView;

.field private mSmartCallNumber:Landroid/widget/TextView;

.field private mSmartCallPhoto:Landroid/widget/ImageView;

.field private mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSmartCallSearchingMessage:Landroid/widget/TextView;

.field private mSmartCallSmallIcon:Landroid/widget/ImageView;

.field private mSmartCallStatusSpamLogo:Landroid/widget/ImageView;

.field private mSmartCallStatusStub:Landroid/view/ViewStub;

.field private mSmartCallStatusText:Landroid/widget/TextView;

.field private mSmartCallTextAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSpamReportScore:Landroid/widget/TextView;

.field private mSpamReportScoreStub:Landroid/view/ViewStub;

.field private previousState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenPhotoUpdate:Z

    sput-boolean v0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenNameUpdate:Z

    sput-boolean v0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenStatusUpdate:Z

    sput-boolean v0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->misTimeout:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->previousState:I

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method private animateAlphaForSmartCallText(Landroid/widget/TextView;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "CallCardSmartCallView"

    const-string v4, "animateAlphaForSmartCallText TextView... "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    if-eqz v2, :cond_0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    sget-boolean v3, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenStatusUpdate:Z

    if-nez v3, :cond_0

    sput-boolean v5, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenStatusUpdate:Z

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/incallui/fragment/view/CallCardSmartCallView$2;

    invoke-direct {v3, p0, v2}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$2;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private animateAlphaMoveForSmartCallText(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const-string v5, "CallCardSmartCallView"

    const-string v6, "animateAlphaMoveForSmartCallText View..."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p1

    if-eqz v4, :cond_0

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x3f333333    # 0.7f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v5, Lcom/android/incallui/fragment/view/CallCardSmartCallView$3;

    invoke-direct {v5, p0, v4}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$3;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    neg-float v3, v5

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v9, [F

    const/4 v7, 0x0

    aput v7, v6, v8

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0058

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v5}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v5}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private animateChangeText(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 13

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    if-eqz p2, :cond_0

    const/16 v8, 0x8

    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallTextAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallTextAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "CallCardSmartCallView"

    const-string v9, "animateChangeText: already running"

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, p1

    move-object v7, p2

    const-string v8, "CallCardSmartCallView"

    const-string v9, "animateChangeText..."

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallTextAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0058

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v8, Lcom/android/incallui/fragment/view/CallCardSmartCallView$4;

    invoke-direct {v8, p0, v7}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$4;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setAlpha(F)V

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v8, Lcom/android/incallui/fragment/view/CallCardSmartCallView$5;

    invoke-direct {v8, p0, v3}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$5;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a008d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    neg-float v6, v8

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mNameLayout:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setTranslationY(F)V

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mNameLayout:Landroid/view/View;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallTextAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallTextAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v10, v4

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallTextAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v9}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallTextAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private animateScaleForSmartCallPhoto(ZLcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 13

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhotoContainer()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "CallCardSmartCallView"

    const-string v7, "animateScaleForSmartCallPhoto: already running"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v6, "CallCardSmartCallView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "animateScaleForSmartCallPhoto... show : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v11, [F

    aput v9, v7, v10

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v11, [F

    aput v9, v7, v10

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v11, [F

    aput v9, v7, v10

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/incallui/fragment/view/CallCardSmartCallView$1;

    invoke-direct {v7, p0, v3}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$1;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0058

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v8, v2

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v7}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V
    .locals 5

    const v4, 0x7f0a008c

    const/4 v3, 0x1

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f100328

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScoreStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScoreStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScoreStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f10025e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScore:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScore:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const v0, 0x7f1001dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mNameLayout:Landroid/view/View;

    const v0, 0x7f10021d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    const v0, 0x7f10031f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    const v0, 0x7f10021f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    const v0, 0x7f100208

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    const v0, 0x7f100319

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const v0, 0x7f100326

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallInfoView:Landroid/view/View;

    const v0, 0x7f100327

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100437

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    const v0, 0x7f100438

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusSpamLogo:Landroid/widget/ImageView;

    :cond_4
    return-void
.end method

.method private setCallState(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 13

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v11, 0x1

    :goto_0
    iget v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->previousState:I

    if-ne v0, p2, :cond_2

    :goto_1
    return-void

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "CallCardSmartCallView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallState state :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateTextColor(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v11, :cond_3

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam()Z

    move-result v3

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCount()I

    move-result v4

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagType()I

    move-result v5

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamNumber()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    iget-boolean v8, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    iget-boolean v9, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setPrimarySpamInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Ljava/lang/String;ZIILjava/lang/String;ZZZ)V

    :cond_3
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v11, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-static {v10}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->misTimeout:Z

    invoke-virtual {p0, p1, v10, v0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateSmartCallInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;Z)V

    invoke-direct {p0, p1, v10}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setSmartCallEndState(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;)V

    :cond_4
    iput p2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->previousState:I

    goto/16 :goto_1
.end method

.method private setPrimary(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 13

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v12

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v11, 0x1

    :goto_0
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v11, :cond_1

    if-eqz v12, :cond_1

    invoke-static {v12}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->misTimeout:Z

    invoke-virtual {p0, p1, v12, v0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateSmartCallInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;Z)V

    invoke-direct {p0, p1, v12}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setSmartCallEndState(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;)V

    :cond_1
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v11, :cond_3

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam()Z

    move-result v3

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCount()I

    move-result v4

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagType()I

    move-result v5

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamNumber()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    iget-boolean v8, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    iget-boolean v9, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setPrimarySpamInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Ljava/lang/String;ZIILjava/lang/String;ZZZ)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getMultiSimView()Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getMultiSimView()Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    move-result-object v0

    invoke-static {v10}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->setPrimarySimIconLabel(Lcom/android/incallui/fragment/CallCardFragment;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    :cond_3
    return-void

    :cond_4
    move v11, v1

    goto :goto_0
.end method

.method private setPrimarySpamInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Ljava/lang/String;ZIILjava/lang/String;ZZZ)V
    .locals 6

    const-string v2, "CallCardSmartCallView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPrimarySpamInfo tagName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isSpam : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tagType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isContactExist : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isYellowPage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isVoiceMail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScoreStub:Landroid/view/ViewStub;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p7, :cond_2

    if-nez p8, :cond_2

    const/4 v2, 0x1

    if-eq p5, v2, :cond_2

    if-eqz p9, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallInfoView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScore:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamReportOwn()I

    move-result v2

    if-le p5, v2, :cond_4

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p5}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallInfoView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusStub:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    if-eq p5, v2, :cond_5

    if-eqz p3, :cond_5

    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p5}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallInfoView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScore:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setSmartCallEndState(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;)V
    .locals 11

    const/4 v6, 0x0

    const/16 v10, 0x8

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_1

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_2
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v7, :cond_0

    iget-boolean v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v4, :cond_0

    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhotoContainer()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0088

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    if-nez v5, :cond_5

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPrimaryName()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallInfoView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusStub:Landroid/view/ViewStub;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusSpamLogo:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move v4, v6

    goto/16 :goto_1
.end method

.method private setSmartCallPhotoFilter(Lcom/android/incallui/fragment/VoiceCallCardFragment;IZ)V
    .locals 10

    const v9, 0x7f0d0029

    const/16 v4, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-ne p2, v4, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    iget v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->previousState:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/incallui/fragment/view/CallCardSmartCallView$8;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$8;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    if-ne p2, v3, :cond_2

    if-eqz p3, :cond_2

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f01dd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/incallui/fragment/view/CallCardSmartCallView$9;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$9;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private setSmartCallPhotoVisible(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/graphics/drawable/Drawable;ZLandroid/view/View;Landroid/widget/ImageView;)V
    .locals 5

    const/4 v2, 0x0

    const/16 v3, 0x8

    move v0, p3

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_4

    move v1, v3

    :goto_1
    invoke-virtual {p5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_1

    sget-boolean v1, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenPhotoUpdate:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenPhotoUpdate:Z

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->animateScaleForSmartCallPhoto(ZLcom/android/incallui/fragment/VoiceCallCardFragment;)V

    :cond_1
    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method private updateSmartCallPhoto(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;Lcom/android/incallui/smartcall/SmartCallInfo;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhotoContainer()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoto()Landroid/widget/ImageView;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v12

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    :cond_0
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    if-gt v12, v1, :cond_6

    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput v1, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0346

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v10, v1

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    invoke-static {v2, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v8, v10, v10}, Lcom/android/incallui/util/GraphicResourceUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v10, v10}, Lcom/android/incallui/util/GraphicResourceUtils;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/GraphicResourceUtils;->getDrawableFromBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2, v10}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setSmartCallPhotoVisible(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/graphics/drawable/Drawable;ZLandroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setSmartCallPhotoFilter(Lcom/android/incallui/fragment/VoiceCallCardFragment;IZ)V

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne v12, v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v13, 0x7f0a008d

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/InCallActivity;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/android/incallui/InCallActivity;->updateGradientColor()V

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0346

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v10, v1

    invoke-static {v12, v10}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallRegisterImage(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_7

    const v1, 0x7f020208

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setSmartCallPhotoVisible(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/graphics/drawable/Drawable;ZLandroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setSmartCallPhotoFilter(Lcom/android/incallui/fragment/VoiceCallCardFragment;IZ)V

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSmartCallSearchingView(Lcom/android/incallui/Call;Lcom/android/incallui/fragment/VoiceCallCardFragment;Z)V
    .locals 8

    const/4 v5, 0x0

    const/16 v4, 0x8

    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPrimaryName()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v6, 0x9

    if-eq v3, v6, :cond_9

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v6, 0xa

    if-eq v3, v6, :cond_9

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSmartCallSearching()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "disable_format_number"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenNameUpdate:Z

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    if-eqz p3, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v3, "geo_description_disable"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    if-nez p3, :cond_8

    move v3, v5

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallInfoView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallerInfoView()Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallerInfoView()Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->isMkCityIdVisible()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_a

    :cond_5
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    move v3, v5

    goto :goto_2

    :cond_8
    move v3, v4

    goto :goto_3

    :cond_9
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateTextColor(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 13

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0133

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0132

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f012e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f012d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v8

    if-nez v8, :cond_2

    const/16 v8, 0x9

    if-ne p2, v8, :cond_a

    :cond_2
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    :goto_1
    const/16 v8, 0x8

    if-ne p2, v8, :cond_b

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_7
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_8
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_9
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_a
    const/16 v8, 0xa

    if-ne p2, v8, :cond_6

    iget v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->previousState:I

    const/16 v9, 0xa

    if-eq v8, v9, :cond_6

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d002b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    int-to-long v8, v5

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/android/incallui/fragment/view/CallCardSmartCallView$6;

    invoke-direct {v8, p0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$6;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v7

    int-to-long v8, v5

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/android/incallui/fragment/view/CallCardSmartCallView$7;

    invoke-direct {v8, p0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$7;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    :cond_b
    const/4 v8, 0x3

    if-ne p2, v8, :cond_10

    iget v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->previousState:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_10

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_c
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_d
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_e
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_f
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0029

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_10
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_11
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_12
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_13
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

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

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setCallState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setCallState(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    :cond_0
    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setPrimary(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    return-void
.end method

.method public updateSmartCallInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;Z)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "CallCardSmartCallView"

    const-string v5, "updateSmartCallInfo "

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p3, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->misTimeout:Z

    invoke-static {p2}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v3

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    if-eqz v2, :cond_2

    invoke-virtual {p2, v6}, Lcom/android/incallui/Call;->setSmartCallSearching(Z)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "CallCardSmartCallView"

    const-string v5, "fragment is detached from activity, return"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_8

    iget-object v4, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_8

    :cond_4
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getSmartCallSearching()Z

    move-result v4

    if-nez v4, :cond_8

    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateSmartCallPhoto(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;Lcom/android/incallui/smartcall/SmartCallInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartAppLogging(ILandroid/content/Context;)V

    :cond_6
    invoke-virtual {p0, v2, v3, p2, p1}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateSmartCallName(Lcom/android/incallui/smartcall/SmartCallInfo;ILcom/android/incallui/Call;Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_7

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_7

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateSmartCallStatus(Lcom/android/incallui/smartcall/SmartCallInfo;Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;)V

    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "CallCardSmartCallView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSmartCallInfo : Illegal State Exception Occured"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_8
    sget-boolean v4, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->misTimeout:Z

    invoke-direct {p0, p2, p1, v4}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateSmartCallSearchingView(Lcom/android/incallui/Call;Lcom/android/incallui/fragment/VoiceCallCardFragment;Z)V

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eq v4, v7, :cond_9

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoto()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateSmartCallName(Lcom/android/incallui/smartcall/SmartCallInfo;ILcom/android/incallui/Call;Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPrimaryName()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eq p2, v9, :cond_0

    if-nez p2, :cond_8

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "disable_format_number"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v4, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_d

    sget-boolean v4, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenNameUpdate:Z

    if-nez v4, :cond_d

    sput-boolean v9, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenNameUpdate:Z

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->animateAlphaMoveForSmartCallText(Landroid/view/View;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->animateChangeText(Landroid/widget/TextView;Landroid/widget/TextView;)V

    :goto_3
    if-eqz v2, :cond_3

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "disable_format_number"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "disable_format_number"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v4, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "disable_format_number"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_c
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_d
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_2

    sput-boolean v9, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenNameUpdate:Z

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_11

    :cond_f
    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallerInfoView()Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallerInfoView()Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->isMkCityIdVisible()Z

    move-result v4

    if-nez v4, :cond_11

    :cond_10
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    :cond_11
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_12
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public updateSmartCallStatus(Lcom/android/incallui/smartcall/SmartCallInfo;Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;)V
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x8

    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    const v4, 0x7f0902c1

    invoke-virtual {p2, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->animateAlphaForSmartCallText(Landroid/widget/TextView;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v7, :cond_5

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallInfoView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->animateAlphaForSmartCallText(Landroid/widget/TextView;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCountry:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->animateAlphaForSmartCallText(Landroid/widget/TextView;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallInfoView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method
