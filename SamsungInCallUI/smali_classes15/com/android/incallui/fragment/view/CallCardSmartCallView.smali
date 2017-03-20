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

    .prologue
    const/4 v0, 0x0

    .line 88
    sput-boolean v0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenPhotoUpdate:Z

    .line 89
    sput-boolean v0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenNameUpdate:Z

    .line 90
    sput-boolean v0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenStatusUpdate:Z

    .line 91
    sput-boolean v0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->misTimeout:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->previousState:I

    .line 94
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method private animateAlphaForSmartCallText(Landroid/widget/TextView;)V
    .locals 7
    .param p1, "textV"    # Landroid/widget/TextView;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 658
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    const-string v3, "CallCardSmartCallView"

    const-string v4, "animateAlphaForSmartCallText TextView... "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    move-object v2, p1

    .line 664
    .local v2, "textView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 665
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 666
    sget-boolean v3, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenStatusUpdate:Z

    if-nez v3, :cond_0

    .line 667
    sput-boolean v5, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenStatusUpdate:Z

    .line 668
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 669
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 670
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/incallui/fragment/view/CallCardSmartCallView$2;

    invoke-direct {v3, p0, v2}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$2;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 676
    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 677
    .local v1, "duration":I
    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 678
    new-instance v3, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 679
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private animateAlphaMoveForSmartCallText(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 684
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    if-eqz p1, :cond_0

    .line 692
    const-string v5, "CallCardSmartCallView"

    const-string v6, "animateAlphaMoveForSmartCallText View..."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    move-object v4, p1

    .line 695
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 696
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 697
    const v5, 0x3f333333    # 0.7f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 698
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 699
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    new-instance v5, Lcom/android/incallui/fragment/view/CallCardSmartCallView$3;

    invoke-direct {v5, p0, v4}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$3;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 705
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    neg-float v3, v5

    .line 706
    .local v3, "previousMargin":F
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 707
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v9, [F

    const/4 v7, 0x0

    aput v7, v6, v8

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 708
    .local v2, "moveAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0058

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 709
    .local v1, "duration":I
    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 710
    new-instance v5, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v5}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 711
    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 712
    new-instance v5, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v5}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 713
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private animateChangeText(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 13
    .param p1, "dstText"    # Landroid/widget/TextView;
    .param p2, "srcText"    # Landroid/widget/TextView;

    .prologue
    .line 718
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 720
    if-eqz p2, :cond_0

    .line 721
    const/16 v8, 0x8

    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 725
    :cond_2
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallTextAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallTextAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 726
    const-string v8, "CallCardSmartCallView"

    const-string v9, "animateChangeText: already running"

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 729
    :cond_3
    move-object v3, p1

    .line 730
    .local v3, "detTextView":Landroid/widget/TextView;
    move-object v7, p2

    .line 731
    .local v7, "srcTextView":Landroid/widget/TextView;
    const-string v8, "CallCardSmartCallView"

    const-string v9, "animateChangeText..."

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallTextAnimatorSet:Landroid/animation/AnimatorSet;

    .line 733
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0058

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 734
    .local v4, "duration":I
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 735
    .local v1, "alphaOutAnimator":Landroid/animation/ObjectAnimator;
    new-instance v8, Lcom/android/incallui/fragment/view/CallCardSmartCallView$4;

    invoke-direct {v8, p0, v7}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$4;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 746
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 747
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 748
    .local v0, "alphaInAnimator":Landroid/animation/ObjectAnimator;
    new-instance v8, Lcom/android/incallui/fragment/view/CallCardSmartCallView$5;

    invoke-direct {v8, p0, v3}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$5;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 759
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a008d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    neg-float v6, v8

    .line 760
    .local v6, "previousMargin":F
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mNameLayout:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 761
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mNameLayout:Landroid/view/View;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 762
    .local v5, "moveAnimator":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallTextAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 763
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 764
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallTextAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v10, v4

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 765
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallTextAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v9}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 766
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallTextAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private animateScaleForSmartCallPhoto(ZLcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 13
    .param p1, "show"    # Z
    .param p2, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 623
    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhotoContainer()Landroid/view/View;

    move-result-object v3

    .line 624
    .local v3, "mPhotoContainer":Landroid/view/View;
    if-eqz v3, :cond_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 628
    const-string v6, "CallCardSmartCallView"

    const-string v7, "animateScaleForSmartCallPhoto: already running"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 632
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

    .line 634
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    .line 635
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 636
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleX(F)V

    .line 637
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 638
    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v11, [F

    aput v9, v7, v10

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 639
    .local v4, "scaleXAnimator":Landroid/animation/ObjectAnimator;
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v11, [F

    aput v9, v7, v10

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 640
    .local v5, "scaleYAnimator":Landroid/animation/ObjectAnimator;
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v11, [F

    aput v9, v7, v10

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 641
    .local v0, "alphaAnimaotr":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 642
    .local v1, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 643
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/incallui/fragment/view/CallCardSmartCallView$1;

    invoke-direct {v7, p0, v3}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$1;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 651
    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0058

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 652
    .local v2, "duration":I
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v8, v2

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 653
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v7}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 654
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V
    .locals 5
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0a008c

    const/4 v3, 0x1

    .line 139
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const v0, 0x7f10031e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScoreStub:Landroid/view/ViewStub;

    .line 141
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScoreStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScoreStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 143
    const v0, 0x7f100250

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScore:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScore:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScore:Landroid/widget/TextView;

    .line 146
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 147
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v2

    div-float/2addr v1, v2

    .line 148
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v2

    mul-float/2addr v1, v2

    .line 145
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 153
    :cond_0
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "support_spam_call"

    .line 154
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    :cond_1
    const v0, 0x7f1001dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mNameLayout:Landroid/view/View;

    .line 156
    const v0, 0x7f10020f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f100315

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f100211

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    .line 161
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 162
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v2

    div-float/2addr v1, v2

    .line 163
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v2

    mul-float/2addr v1, v2

    .line 160
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    :cond_2
    const v0, 0x7f100200

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    .line 166
    const v0, 0x7f10030f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    .line 168
    const v0, 0x7f10031c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallInfoView:Landroid/view/View;

    .line 169
    const v0, 0x7f10031d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusStub:Landroid/view/ViewStub;

    .line 170
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 172
    const v0, 0x7f10042d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    .line 175
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 176
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v2

    div-float/2addr v1, v2

    .line 177
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v2

    mul-float/2addr v1, v2

    .line 174
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 179
    :cond_3
    const v0, 0x7f10042e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusSpamLogo:Landroid/widget/ImageView;

    .line 182
    :cond_4
    return-void
.end method

.method private setCallState(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 13
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "state"    # I

    .prologue
    .line 185
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v11, 0x1

    .line 188
    .local v11, "emergencyMode":Z
    :goto_0
    iget v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->previousState:I

    if-ne v0, p2, :cond_2

    .line 218
    :goto_1
    return-void

    .line 186
    .end local v11    # "emergencyMode":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 189
    .restart local v11    # "emergencyMode":Z
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

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateTextColor(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    .line 192
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v10

    .line 194
    .local v10, "call":Lcom/android/incallui/Call;
    if-eqz v10, :cond_3

    .line 196
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v12

    .line 197
    .local v12, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v12, :cond_3

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v11, :cond_3

    .line 198
    invoke-virtual {v10}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    .line 199
    invoke-virtual {v10}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    .line 200
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagName()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam()Z

    move-result v3

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCount()I

    move-result v4

    .line 202
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagType()I

    move-result v5

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamNumber()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    iget-boolean v8, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    iget-boolean v9, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    move-object v0, p0

    move-object v1, p1

    .line 200
    invoke-direct/range {v0 .. v9}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setPrimarySpamInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Ljava/lang/String;ZIILjava/lang/String;ZZZ)V

    .line 208
    .end local v10    # "call":Lcom/android/incallui/Call;
    .end local v12    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_3
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v11, :cond_4

    .line 210
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v10

    .line 211
    .restart local v10    # "call":Lcom/android/incallui/Call;
    if-eqz v10, :cond_4

    invoke-static {v10}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 212
    sget-boolean v0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->misTimeout:Z

    invoke-virtual {p0, p1, v10, v0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateSmartCallInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;Z)V

    .line 213
    invoke-direct {p0, p1, v10}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setSmartCallEndState(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;)V

    .line 217
    .end local v10    # "call":Lcom/android/incallui/Call;
    :cond_4
    iput p2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->previousState:I

    goto/16 :goto_1
.end method

.method private setPrimary(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 13
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v12

    .line 222
    .local v12, "primaryCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v11, 0x1

    .line 224
    .local v11, "emergencyMode":Z
    :goto_0
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v11, :cond_1

    .line 225
    if-eqz v12, :cond_1

    invoke-static {v12}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    sget-boolean v0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->misTimeout:Z

    invoke-virtual {p0, p1, v12, v0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateSmartCallInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;Z)V

    .line 227
    invoke-direct {p0, p1, v12}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setSmartCallEndState(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;)V

    .line 230
    :cond_1
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v11, :cond_3

    if-eqz p2, :cond_3

    .line 232
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v10

    .line 233
    .local v10, "call":Lcom/android/incallui/Call;
    if-eqz v10, :cond_3

    .line 234
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagName()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam()Z

    move-result v3

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCount()I

    move-result v4

    .line 236
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagType()I

    move-result v5

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamNumber()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    iget-boolean v8, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    iget-boolean v9, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    move-object v0, p0

    move-object v1, p1

    .line 234
    invoke-direct/range {v0 .. v9}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setPrimarySpamInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Ljava/lang/String;ZIILjava/lang/String;ZZZ)V

    .line 238
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getMultiSimView()Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 239
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getMultiSimView()Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    move-result-object v0

    invoke-static {v10}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->setPrimarySimIconLabel(Lcom/android/incallui/fragment/CallCardFragment;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 241
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    .line 245
    .end local v10    # "call":Lcom/android/incallui/Call;
    :cond_3
    return-void

    .end local v11    # "emergencyMode":Z
    :cond_4
    move v11, v1

    .line 222
    goto :goto_0
.end method

.method private setPrimarySpamInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Ljava/lang/String;ZIILjava/lang/String;ZZZ)V
    .locals 6
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "isSpam"    # Z
    .param p4, "count"    # I
    .param p5, "tagType"    # I
    .param p6, "number"    # Ljava/lang/String;
    .param p7, "isContactExist"    # Z
    .param p8, "isYellowPage"    # Z
    .param p9, "isVoiceMail"    # Z

    .prologue
    .line 250
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

    .line 254
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScoreStub:Landroid/view/ViewStub;

    if-nez v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    const/4 v0, 0x0

    .line 256
    .local v0, "reportText":Ljava/lang/String;
    const/4 v1, 0x0

    .line 257
    .local v1, "reportTitle":Ljava/lang/String;
    if-nez p7, :cond_2

    if-nez p8, :cond_2

    const/4 v2, 0x1

    if-eq p5, v2, :cond_2

    if-eqz p9, :cond_3

    .line 259
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallInfoView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScore:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 263
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamReportOwn()I

    move-result v2

    if-le p5, v2, :cond_4

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    .line 264
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 266
    invoke-static {p5}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 264
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 276
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallInfoView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusStub:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 280
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 267
    :cond_4
    const/4 v2, 0x1

    if-eq p5, v2, :cond_5

    if-eqz p3, :cond_5

    if-eqz p2, :cond_5

    .line 268
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 269
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

    .line 271
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallInfoView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSpamReportScore:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setSmartCallEndState(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;)V
    .locals 11
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x8

    .line 580
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_1

    .line 581
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    if-eqz p2, :cond_0

    .line 585
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v7

    if-nez v7, :cond_2

    .line 586
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_2
    const/4 v4, 0x1

    .line 588
    .local v4, "rejectCall":Z
    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 589
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 590
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v7, :cond_0

    iget-boolean v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v7, :cond_0

    .line 592
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v4, :cond_0

    .line 593
    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 594
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhotoContainer()Landroid/view/View;

    move-result-object v2

    .line 595
    .local v2, "photoContainer":Landroid/view/View;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_4

    .line 596
    :cond_3
    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0088

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 599
    :cond_4
    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    .line 600
    .local v5, "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    if-nez v5, :cond_5

    .line 601
    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 603
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPrimaryName()Landroid/widget/TextView;

    move-result-object v3

    .line 604
    .local v3, "primaryName":Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v1

    .line 606
    .local v1, "phoneNumber":Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallInfoView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 608
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    .end local v1    # "phoneNumber":Landroid/widget/TextView;
    .end local v3    # "primaryName":Landroid/widget/TextView;
    :cond_5
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusStub:Landroid/view/ViewStub;

    if-eqz v6, :cond_0

    .line 613
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 615
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusSpamLogo:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .end local v0    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v2    # "photoContainer":Landroid/view/View;
    .end local v4    # "rejectCall":Z
    .end local v5    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_6
    move v4, v6

    .line 586
    goto/16 :goto_1
.end method

.method private setSmartCallPhotoFilter(Lcom/android/incallui/fragment/VoiceCallCardFragment;IZ)V
    .locals 10
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "state"    # I
    .param p3, "isDefaultPhoto"    # Z

    .prologue
    const v9, 0x7f0d0029

    const/16 v4, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 838
    if-ne p2, v4, :cond_0

    .line 839
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 869
    :goto_0
    return-void

    .line 840
    :cond_0
    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    iget v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->previousState:I

    if-ne v3, v4, :cond_1

    .line 841
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 842
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/incallui/fragment/view/CallCardSmartCallView$8;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$8;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 848
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 849
    .local v2, "duration":I
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 850
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 851
    .end local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "duration":I
    :cond_1
    const/16 v3, 0xa

    if-ne p2, v3, :cond_2

    if-eqz p3, :cond_2

    .line 852
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 854
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 855
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f01dd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 852
    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 856
    .local v1, "colorAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 857
    new-instance v3, Lcom/android/incallui/fragment/view/CallCardSmartCallView$9;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$9;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 865
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 867
    .end local v1    # "colorAnimator":Landroid/animation/ValueAnimator;
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private setSmartCallPhotoVisible(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/graphics/drawable/Drawable;ZLandroid/view/View;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "show"    # Z
    .param p4, "photoContainer"    # Landroid/view/View;
    .param p5, "photo"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 872
    move v0, p3

    .line 873
    .local v0, "needToShow":Z
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    const/4 v0, 0x0

    .line 876
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 877
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 878
    if-eqz v0, :cond_4

    move v1, v3

    :goto_1
    invoke-virtual {p5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 879
    if-eqz p4, :cond_2

    .line 880
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_1

    sget-boolean v1, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenPhotoUpdate:Z

    if-nez v1, :cond_1

    .line 881
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenPhotoUpdate:Z

    .line 882
    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->animateScaleForSmartCallPhoto(ZLcom/android/incallui/fragment/VoiceCallCardFragment;)V

    .line 885
    :cond_1
    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 888
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 877
    goto :goto_0

    :cond_4
    move v1, v2

    .line 878
    goto :goto_1

    :cond_5
    move v2, v3

    .line 885
    goto :goto_2
.end method

.method private updateSmartCallPhoto(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;Lcom/android/incallui/smartcall/SmartCallInfo;)V
    .locals 14
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "call"    # Lcom/android/incallui/Call;
    .param p3, "smartCallInfo"    # Lcom/android/incallui/smartcall/SmartCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 514
    const/4 v3, 0x0

    .line 515
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhotoContainer()Landroid/view/View;

    move-result-object v5

    .line 516
    .local v5, "photoContainer":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoto()Landroid/widget/ImageView;

    move-result-object v6

    .line 517
    .local v6, "photo":Landroid/widget/ImageView;
    invoke-static/range {p2 .. p2}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v12

    .line 518
    .local v12, "smartCallRegisterState":I
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 520
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 521
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 522
    :cond_0
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    if-gt v12, v1, :cond_6

    .line 524
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 525
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput v1, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 526
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0346

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v10, v1

    .line 527
    .local v10, "diameter":I
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    .line 528
    invoke-static {v2, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 529
    .local v9, "bmDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v9, :cond_1

    .line 530
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 531
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_1

    .line 533
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 536
    invoke-static {v8, v10, v10}, Lcom/android/incallui/util/GraphicResourceUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 535
    invoke-static {v2, v10, v10}, Lcom/android/incallui/util/GraphicResourceUtils;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 534
    invoke-static {v2}, Lcom/android/incallui/util/GraphicResourceUtils;->getDrawableFromBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 532
    invoke-static {v1, v2, v10}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 541
    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setSmartCallPhotoVisible(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/graphics/drawable/Drawable;ZLandroid/view/View;Landroid/widget/ImageView;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setSmartCallPhotoFilter(Lcom/android/incallui/fragment/VoiceCallCardFragment;IZ)V

    .line 544
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne v12, v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "bmDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v13, 0x7f0a008d

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 567
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/InCallActivity;

    .line 568
    .local v7, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v7, :cond_3

    .line 569
    invoke-virtual {v7}, Lcom/android/incallui/InCallActivity;->updateGradientColor()V

    .line 572
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    .line 573
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 574
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 577
    .end local v7    # "activity":Lcom/android/incallui/InCallActivity;
    .end local v10    # "diameter":I
    :cond_5
    return-void

    .line 550
    :cond_6
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0346

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v10, v1

    .line 551
    .restart local v10    # "diameter":I
    invoke-static {v12, v10}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallRegisterImage(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 552
    if-eqz v3, :cond_7

    .line 553
    const v1, 0x7f0201fe

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 554
    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setSmartCallPhotoVisible(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/graphics/drawable/Drawable;ZLandroid/view/View;Landroid/widget/ImageView;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setSmartCallPhotoFilter(Lcom/android/incallui/fragment/VoiceCallCardFragment;IZ)V

    .line 558
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 559
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSmartCallSearchingView(Lcom/android/incallui/Call;Lcom/android/incallui/fragment/VoiceCallCardFragment;Z)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p3, "isTimeout"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 466
    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPrimaryName()Landroid/widget/TextView;

    move-result-object v2

    .line 467
    .local v2, "primaryName":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v1

    .line 468
    .local v1, "phoneNumber":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v0

    .line 469
    .local v0, "callNumberAndLabel":Landroid/view/View;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v6, 0x9

    if-eq v3, v6, :cond_9

    .line 474
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v6, 0xa

    if-eq v3, v6, :cond_9

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSmartCallSearching()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 475
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 476
    const-string v3, "disable_format_number"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 477
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    :cond_2
    :goto_1
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenNameUpdate:Z

    .line 484
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 485
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    if-eqz p3, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    const-string v3, "geo_description_disable"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    if-nez p3, :cond_8

    move v3, v5

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    :goto_4
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallInfoView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 500
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 501
    :cond_3
    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallerInfoView()Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 502
    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallerInfoView()Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->isMkCityIdVisible()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    .line 503
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_a

    .line 504
    :cond_5
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 479
    :cond_6
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 480
    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 479
    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    move v3, v5

    .line 485
    goto :goto_2

    :cond_8
    move v3, v4

    .line 488
    goto :goto_3

    .line 490
    :cond_9
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 506
    :cond_a
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateTextColor(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 13
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "state"    # I

    .prologue
    .line 770
    if-nez p1, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0133

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 773
    .local v4, "bannerTextColor":I
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0132

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 775
    .local v3, "bannerSubTextColor":I
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f012e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 776
    .local v2, "bannerDefaultTextColor":I
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f012d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 778
    .local v1, "bannerDefaultSubTextColor":I
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v8

    if-nez v8, :cond_2

    const/16 v8, 0x9

    if-ne p2, v8, :cond_a

    .line 779
    :cond_2
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 781
    :cond_3
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 782
    :cond_4
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 783
    :cond_5
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 812
    :cond_6
    :goto_1
    const/16 v8, 0x8

    if-ne p2, v8, :cond_b

    .line 813
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 814
    :cond_7
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 815
    :cond_8
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 816
    :cond_9
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    .line 785
    :cond_a
    const/16 v8, 0xa

    if-ne p2, v8, :cond_6

    iget v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->previousState:I

    const/16 v9, 0xa

    if-eq v8, v9, :cond_6

    .line 786
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d002b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 788
    .local v5, "duration":I
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

    .line 789
    .local v6, "nameColorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v8, v5

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 790
    new-instance v8, Lcom/android/incallui/fragment/view/CallCardSmartCallView$6;

    invoke-direct {v8, p0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$6;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 796
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 798
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

    .line 799
    .local v7, "numberAndLabelColorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v8, v5

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 800
    new-instance v8, Lcom/android/incallui/fragment/view/CallCardSmartCallView$7;

    invoke-direct {v8, p0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView$7;-><init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 808
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    .line 817
    .end local v5    # "duration":I
    .end local v6    # "nameColorAnimator":Landroid/animation/ValueAnimator;
    .end local v7    # "numberAndLabelColorAnimator":Landroid/animation/ValueAnimator;
    :cond_b
    const/4 v8, 0x3

    if-ne p2, v8, :cond_10

    iget v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->previousState:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_10

    .line 818
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 819
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v8, :cond_c

    .line 820
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

    .line 821
    :cond_c
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v8, :cond_d

    .line 822
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

    .line 823
    :cond_d
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v8, :cond_e

    .line 824
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

    .line 825
    :cond_e
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    if-eqz v8, :cond_f

    .line 826
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

    .line 827
    :cond_f
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0029

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 828
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 830
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_10
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 831
    :cond_11
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 832
    :cond_12
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 833
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

    .prologue
    .line 129
    return-void
.end method

.method public animateForSwap()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 136
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setCallState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setCallState(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    .line 109
    :cond_0
    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setPrimary(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 116
    :cond_0
    return-void
.end method

.method public updateSmartCallInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;Z)V
    .locals 8
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "call"    # Lcom/android/incallui/Call;
    .param p3, "isTimeout"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 284
    if-nez p2, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 287
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_0

    .line 289
    const-string v4, "CallCardSmartCallView"

    const-string v5, "updateSmartCallInfo "

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sput-boolean p3, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->misTimeout:Z

    .line 291
    invoke-static {p2}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v3

    .line 292
    .local v3, "smartCallRegisterState":I
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    .line 294
    .local v2, "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    if-eqz v2, :cond_2

    .line 295
    invoke-virtual {p2, v6}, Lcom/android/incallui/Call;->setSmartCallSearching(Z)V

    .line 298
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_3

    .line 299
    const-string v4, "CallCardSmartCallView"

    const-string v5, "fragment is detached from activity, return"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_3
    if-eqz v2, :cond_8

    iget-object v4, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_8

    .line 305
    :cond_4
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getSmartCallSearching()Z

    move-result v4

    if-nez v4, :cond_8

    .line 307
    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateSmartCallPhoto(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;Lcom/android/incallui/smartcall/SmartCallInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_1
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 312
    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartAppLogging(ILandroid/content/Context;)V

    .line 314
    :cond_6
    invoke-virtual {p0, v2, v3, p2, p1}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateSmartCallName(Lcom/android/incallui/smartcall/SmartCallInfo;ILcom/android/incallui/Call;Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    .line 316
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_7

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_7

    .line 317
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateSmartCallStatus(Lcom/android/incallui/smartcall/SmartCallInfo;Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;)V

    .line 327
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/IllegalStateException;
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

    .line 320
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_8
    sget-boolean v4, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->misTimeout:Z

    invoke-direct {p0, p2, p1, v4}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateSmartCallSearchingView(Lcom/android/incallui/Call;Lcom/android/incallui/fragment/VoiceCallCardFragment;Z)V

    .line 322
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eq v4, v7, :cond_9

    .line 323
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    :cond_9
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoto()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateSmartCallName(Lcom/android/incallui/smartcall/SmartCallInfo;ILcom/android/incallui/Call;Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 10
    .param p1, "smartCallInfo"    # Lcom/android/incallui/smartcall/SmartCallInfo;
    .param p2, "smartCallRegisterState"    # I
    .param p3, "call"    # Lcom/android/incallui/Call;
    .param p4, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 332
    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPrimaryName()Landroid/widget/TextView;

    move-result-object v3

    .line 333
    .local v3, "primaryName":Landroid/widget/TextView;
    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v2

    .line 334
    .local v2, "phoneNumber":Landroid/widget/TextView;
    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v0

    .line 336
    .local v0, "callNumberAndLabel":Landroid/view/View;
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 337
    iget-object v4, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eq p2, v9, :cond_0

    if-nez p2, :cond_8

    .line 340
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v4, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 342
    const-string v4, "disable_format_number"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 343
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :goto_0
    iget-object v4, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 349
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    .line 350
    invoke-static {v5}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 349
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 401
    :cond_1
    :goto_1
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    .line 402
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

    .line 404
    sput-boolean v9, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenNameUpdate:Z

    .line 405
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->animateAlphaMoveForSmartCallText(Landroid/view/View;)V

    .line 406
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
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

    .line 414
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 415
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallSearchingMessage:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->animateChangeText(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 427
    :goto_3
    if-eqz v2, :cond_3

    .line 428
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    :cond_3
    return-void

    .line 345
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    .line 346
    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 345
    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 352
    :cond_5
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 353
    const-string v4, "disable_format_number"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 354
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :goto_4
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 365
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    .line 366
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 365
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 356
    :cond_6
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 356
    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "formattedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 359
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 361
    :cond_7
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 370
    .end local v1    # "formattedNumber":Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v4, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 372
    const-string v4, "disable_format_number"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 373
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :goto_5
    iget-object v4, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 379
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 375
    :cond_9
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    .line 376
    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 375
    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 381
    :cond_a
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 382
    const-string v4, "disable_format_number"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 383
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    :goto_6
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 394
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    .line 395
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 394
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 385
    :cond_b
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 386
    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 385
    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    .restart local v1    # "formattedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 388
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 390
    :cond_c
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 407
    .end local v1    # "formattedNumber":Ljava/lang/String;
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

    .line 408
    sput-boolean v9, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->hasbeenNameUpdate:Z

    .line 409
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 417
    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_11

    .line 418
    :cond_f
    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallerInfoView()Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 419
    invoke-virtual {p4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallerInfoView()Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->isMkCityIdVisible()Z

    move-result v4

    if-nez v4, :cond_11

    :cond_10
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    .line 420
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 421
    :cond_11
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 424
    :cond_12
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public updateSmartCallStatus(Lcom/android/incallui/smartcall/SmartCallInfo;Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;)V
    .locals 9
    .param p1, "smartCallInfo"    # Lcom/android/incallui/smartcall/SmartCallInfo;
    .param p2, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 433
    invoke-virtual {p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v2

    .line 434
    .local v2, "phoneNumber":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_0

    .line 435
    iget-object v3, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 436
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    const v4, 0x7f0902c0

    invoke-virtual {p2, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->animateAlphaForSmartCallText(Landroid/widget/TextView;)V

    .line 439
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-nez v3, :cond_1

    .line 458
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v7, :cond_5

    .line 459
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallInfoView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 463
    :goto_1
    return-void

    .line 440
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    .line 441
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 442
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

    .line 443
    .local v0, "cityandstate":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->animateAlphaForSmartCallText(Landroid/widget/TextView;)V

    .line 445
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 446
    .end local v0    # "cityandstate":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCountry:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    .line 447
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 448
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

    .line 449
    .local v1, "countryandcity":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->animateAlphaForSmartCallText(Landroid/widget/TextView;)V

    .line 451
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 453
    .end local v1    # "countryandcity":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 461
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->mSmartCallInfoView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method
