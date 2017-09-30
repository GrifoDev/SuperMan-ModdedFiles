.class public Lcom/android/incallui/agif/AgifSlidingTrayIcons;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;
    }
.end annotation


# static fields
.field private static final ANIM_DURING_TRAY_IMAGE_POSITION_Y_UP:F = -10.0f

.field private static final ANIM_DURING_TRAY_SHADOW_SCALE:F = 1.0f

.field private static final ANIM_DURING_TRAY_SHADOW_SCALE_UP:F = 1.2f

.field private static final ANIM_FLOAT_ZERO:F = 0.0f

.field private static final ANIM_OUTGOING_CONTAINER_POSITION_X:F = 440.0f

.field private static final ANIM_OUTGOING_TRAY_ALPHA_FROM:F = 1.0f

.field private static final ANIM_OUTGOING_TRAY_POSITION_Y:F = 30.0f

.field private static final ANIM_OUTGOING_TRAY_SCALE_FROM:F = 0.7f

.field private static final ANIM_OUTGOING_TRAY_SCALE_TO:F = 1.0f

.field private static final LOG_TAG:Ljava/lang/String; = "AgifSlidingTrayIcons"


# instance fields
.field mAgifPackageInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsNeedToCreateTrayAnimation:Z

.field private mIsOutgoingAnimationRunning:Z

.field private mOutgoingAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mRandom:Ljava/util/Random;

.field private mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mIsOutgoingAnimationRunning:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mIsNeedToCreateTrayAnimation:Z

    new-instance v0, Lcom/android/incallui/agif/AgifSlidingTrayIcons$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons$1;-><init>(Lcom/android/incallui/agif/AgifSlidingTrayIcons;)V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mOutgoingAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mRandom:Ljava/util/Random;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mIsOutgoingAnimationRunning:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mIsNeedToCreateTrayAnimation:Z

    new-instance v0, Lcom/android/incallui/agif/AgifSlidingTrayIcons$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons$1;-><init>(Lcom/android/incallui/agif/AgifSlidingTrayIcons;)V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mOutgoingAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mRandom:Ljava/util/Random;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mIsOutgoingAnimationRunning:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mIsNeedToCreateTrayAnimation:Z

    new-instance v0, Lcom/android/incallui/agif/AgifSlidingTrayIcons$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons$1;-><init>(Lcom/android/incallui/agif/AgifSlidingTrayIcons;)V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mOutgoingAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mRandom:Ljava/util/Random;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/agif/AgifSlidingTrayIcons;Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->onOutgoingAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method private getContainerTranslationAnimator()Landroid/animation/ObjectAnimator;
    .locals 4

    const/high16 v0, 0x43dc0000    # 440.0f

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->setTranslationX(F)V

    sget-object v0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/b/a/f;

    invoke-direct {v1}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private getOutgoingCallAnimation(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 8

    const-string v0, "AgifSlidingTrayIcons"

    const-string v1, "getOutgoingCallAnimation"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    array-length v0, v0

    if-gtz v0, :cond_2

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getContainerTranslationAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getTrayIconTransAnimator()[Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-direct {p0, v0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getTrayIconScaleAnimator(Landroid/util/Property;)[Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-direct {p0, v0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getTrayIconScaleAnimator(Landroid/util/Property;)[Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getTrayIconAlphaAnimator()[Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    aget-object v7, v3, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getRandomStartDelay()J
    .locals 6

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    rem-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getShadowScaleDownAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private getShadowScaleUpAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const v2, 0x3f99999a    # 1.2f

    aput v2, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private getTrayIconAlphaAnimator()[Landroid/animation/ObjectAnimator;
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0016

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    array-length v0, v0

    new-array v4, v0, [Landroid/animation/ObjectAnimator;

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v0

    aget-object v5, v4, v0

    new-instance v6, Lcom/samsung/android/b/a/f;

    invoke-direct {v6}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aget-object v5, v4, v0

    mul-int v6, v2, v0

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    aget-object v5, v4, v0

    int-to-long v6, v3

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private getTrayIconAnimation(Landroid/animation/AnimatorSet;Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;)Landroid/animation/AnimatorSet;
    .locals 11

    const-string v0, "AgifSlidingTrayIcons"

    const-string v1, "getTrayIconAnimation"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getRandomStartDelay()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getRandomReturnDelay()J

    move-result-wide v2

    iget-object v4, p2, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayImage:Landroid/widget/ImageView;

    const/high16 v5, -0x3ee00000    # -10.0f

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getTrayTranslationAnimator(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p2, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayImage:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getTrayTranslationAnimator(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p2, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayShadow:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getShadowScaleUpAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p2, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayShadow:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getShadowScaleUpAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, p2, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayShadow:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getShadowScaleDownAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, p2, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayShadow:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-direct {p0, v9, v10}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getShadowScaleDownAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Lcom/android/incallui/agif/AgifSlidingTrayIcons$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons$2;-><init>(Lcom/android/incallui/agif/AgifSlidingTrayIcons;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private getTrayIconScaleAnimator(Landroid/util/Property;)[Landroid/animation/ObjectAnimator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;)[",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 v1, 0x0

    const v8, 0x3f333333    # 0.7f

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0016

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    array-length v0, v0

    new-array v4, v0, [Landroid/animation/ObjectAnimator;

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    if-ne p1, v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setScaleX(F)V

    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v1

    invoke-static {v5, p1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v0

    aget-object v5, v4, v0

    new-instance v6, Lcom/samsung/android/b/a/f;

    invoke-direct {v6}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aget-object v5, v4, v0

    mul-int v6, v2, v0

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    aget-object v5, v4, v0

    int-to-long v6, v3

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_2
    return-object v4
.end method

.method private getTrayIconTransAnimator()[Landroid/animation/ObjectAnimator;
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0016

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    array-length v0, v0

    new-array v4, v0, [Landroid/animation/ObjectAnimator;

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    iget-object v5, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    iget-object v6, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v8, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v0

    aget-object v5, v4, v0

    new-instance v6, Lcom/samsung/android/b/a/f;

    invoke-direct {v6}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aget-object v5, v4, v0

    mul-int v6, v2, v0

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    aget-object v5, v4, v0

    int-to-long v6, v3

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private getTrayTranslationAnimator(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/b/a/d;

    invoke-direct {v1}, Lcom/samsung/android/b/a/d;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private onOutgoingAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "AgifSlidingTrayIcons"

    const-string v1, "onOutgoingAnimationEnd"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->startTrayIconAnimation(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mIsOutgoingAnimationRunning:Z

    return-void
.end method

.method private removeAgifResources()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v1, v1, v0

    iput-object v2, v1, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mAgifPackageInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mAgifPackageInfo:Ljava/util/ArrayList;

    :cond_4
    return-void
.end method

.method private startTrayIconAnimation(Z)V
    .locals 3

    const-string v0, "AgifSlidingTrayIcons"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTrayIconAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private updateTrayIconAnimation()V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mIsNeedToCreateTrayAnimation:Z

    if-nez v0, :cond_0

    const-string v0, "AgifSlidingTrayIcons"

    const-string v1, "The tray icon animation was created already."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AgifSlidingTrayIcons"

    const-string v2, "updateTrayIconAnimation"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->startTrayIconAnimation(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getTrayIconAnimation(Landroid/animation/AnimatorSet;Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;)Landroid/animation/AnimatorSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v3, v3, v0

    iput-object v2, v3, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->animatorSet:Landroid/animation/AnimatorSet;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mIsNeedToCreateTrayAnimation:Z

    goto :goto_0
.end method


# virtual methods
.method public createAgifSlidingTrayIcons(I)V
    .locals 8

    const/4 v2, 0x0

    const-string v0, "AgifSlidingTrayIcons"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAgifSlidingTrayIcons = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->removeAllViewsInLayout()V

    const-string v0, "calling"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/agif/AgifLoader;->getAgifPackageInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/agif/AgifLoader;->getAgifPackageInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mAgifPackageInfo:Ljava/util/ArrayList;

    const-string v0, "AgifSlidingTrayIcons"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAgifSlidingTrayIcons package info size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mAgifPackageInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    const-string v0, "AgifSlidingTrayIcons"

    const-string v1, "The package info is null."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-array v0, p1, [Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v3, v0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_5

    new-instance v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    invoke-direct {v5, p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;-><init>(Lcom/android/incallui/agif/AgifSlidingTrayIcons;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040027

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    const v6, 0x7f1000a7

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayImage:Landroid/widget/ImageView;

    iget-object v0, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    const v6, 0x7f1000a6

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayShadow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    iget-object v6, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOn:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v6, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayImage:Landroid/widget/ImageView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayImage:Landroid/widget/ImageView;

    const v6, 0x7f100013

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v0, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aput-object v5, v0, v1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->updateTrayIconAnimation()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasOutgoingCall()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->startTrayIconAnimation(Z)V

    goto/16 :goto_0
.end method

.method protected getRandomReturnDelay()J
    .locals 6

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    rem-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const v3, 0x7f100013

    const-string v0, "AgifSlidingTrayIcons"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->agifScreen_selectAgifSet(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/incallui/AgifPresenter$AgifUi;->selectAgifPage(I)V

    invoke-interface {v1}, Lcom/android/incallui/AgifPresenter$AgifUi;->isShowAgifList()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->showAgifList(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->removeAgifResources()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    const-string v0, "AgifSlidingTrayIcons"

    const-string v1, "removeAllViewsInLayout"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->removeAgifResources()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mIsNeedToCreateTrayAnimation:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const-string v0, "AgifSlidingTrayIcons"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    aget-object v0, v0, v1

    iget-object v2, v0, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOn:Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOff:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->startTrayIconAnimation(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    array-length v0, v0

    if-lez v0, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->startTrayIconAnimation(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startOutgoingCallAnimation()V
    .locals 2

    const-string v0, "AgifSlidingTrayIcons"

    const-string v1, "startOutgoingCallAnimation"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mIsOutgoingAnimationRunning:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mTrayIconViews:[Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;

    array-length v0, v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getOutgoingCallAnimation(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mOutgoingAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->mIsOutgoingAnimationRunning:Z

    :cond_0
    return-void
.end method
