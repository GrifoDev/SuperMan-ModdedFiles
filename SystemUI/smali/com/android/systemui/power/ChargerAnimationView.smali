.class public Lcom/android/systemui/power/ChargerAnimationView;
.super Landroid/widget/RelativeLayout;
.source "ChargerAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;
    }
.end annotation


# static fields
.field private static final RESOURCE_ID_ARRAY_CABLE:[I

.field private static final RESOURCE_ID_ARRAY_WIRELESS:[I


# instance fields
.field private mAnimListenerRecursiveCount:I

.field private mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

.field private mAnimationPlaying:Z

.field private mBackGroundAnim_Cable:Landroid/animation/AnimatorSet;

.field private mBackGroundAnim_WireLess:Landroid/animation/AnimatorSet;

.field private mBackGroundView:Landroid/widget/LinearLayout;

.field private mBatteryChangeLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryTextAnim:Landroid/animation/AnimatorSet;

.field private mChargerAnimationView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentBatteryLevel:I

.field private mCurrentChargerType:I

.field private mCurrentOrientation:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayDensity:F

.field private mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

.field private mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

.field private mHandler:Landroid/os/Handler;

.field private mIsScreenOn:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/power/ChargerAnimationView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/power/ChargerAnimationView;)Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/power/ChargerAnimationView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/power/ChargerAnimationView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/power/ChargerAnimationView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/power/ChargerAnimationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->changeBatteryLevelText()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/power/ChargerAnimationView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/ChargerAnimationView;->checkChargerAnimationEnd(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x4f

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/power/ChargerAnimationView;->RESOURCE_ID_ARRAY_CABLE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/power/ChargerAnimationView;->RESOURCE_ID_ARRAY_WIRELESS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080090
        0x7f080091
        0x7f080092
        0x7f080093
        0x7f080094
        0x7f080095
        0x7f080096
        0x7f080097
        0x7f080098
        0x7f080099
        0x7f08009a
        0x7f08009b
        0x7f08009c
        0x7f08009d
        0x7f08009e
        0x7f08009f
        0x7f0800a0
        0x7f0800a1
        0x7f0800a2
        0x7f0800a3
        0x7f0800a4
        0x7f0800a5
        0x7f0800a6
        0x7f0800a7
        0x7f0800a8
        0x7f0800a9
        0x7f0800aa
        0x7f0800ab
        0x7f0800ac
        0x7f0800ad
        0x7f0800ae
        0x7f0800af
        0x7f0800b0
        0x7f0800b1
        0x7f0800b2
        0x7f0800b3
        0x7f0800b4
        0x7f0800b5
        0x7f0800b6
        0x7f0800b7
        0x7f0800b8
        0x7f0800b9
        0x7f0800ba
        0x7f0800bb
        0x7f0800bc
        0x7f0800bd
        0x7f0800be
        0x7f0800bf
        0x7f0800c0
        0x7f0800c1
        0x7f0800c2
        0x7f0800c3
        0x7f0800c4
        0x7f0800c5
        0x7f0800c6
        0x7f0800c7
        0x7f0800c8
        0x7f0800c9
        0x7f0800ca
        0x7f0800cb
        0x7f0800cc
        0x7f0800cd
        0x7f0800ce
        0x7f0800cf
        0x7f0800d0
        0x7f0800d1
        0x7f0800d2
        0x7f0800d3
        0x7f0800d4
        0x7f0800d5
        0x7f0800d6
        0x7f0800d7
        0x7f0800d8
        0x7f0800d9
        0x7f0800da
        0x7f0800db
        0x7f0800dc
        0x7f0800dd
        0x7f0800de
    .end array-data

    :array_1
    .array-data 4
        0x7f0800df
        0x7f0800e0
        0x7f0800e1
        0x7f0800e2
        0x7f0800e3
        0x7f0800e4
        0x7f0800e5
        0x7f0800e6
        0x7f0800e7
        0x7f0800e8
        0x7f0800e9
        0x7f0800ea
        0x7f0800eb
        0x7f0800ec
        0x7f0800ed
        0x7f0800ee
        0x7f0800ef
        0x7f0800f0
        0x7f0800f1
        0x7f0800f2
        0x7f0800f3
        0x7f0800f4
        0x7f0800f5
        0x7f0800f6
        0x7f0800f7
        0x7f0800f8
        0x7f0800f9
        0x7f0800fa
        0x7f0800fb
        0x7f0800fc
        0x7f0800fd
        0x7f0800fe
        0x7f0800ff
        0x7f080100
        0x7f080101
        0x7f080102
        0x7f080103
        0x7f080104
        0x7f080105
        0x7f080106
        0x7f080107
        0x7f080108
        0x7f080109
        0x7f08010a
        0x7f08010b
        0x7f08010c
        0x7f08010d
        0x7f08010e
        0x7f08010f
        0x7f080110
        0x7f080111
        0x7f080112
        0x7f080113
        0x7f080114
        0x7f080115
        0x7f080116
        0x7f080117
        0x7f080118
        0x7f080119
        0x7f08011a
        0x7f08011b
        0x7f08011c
        0x7f08011d
        0x7f08011e
        0x7f08011f
        0x7f080120
        0x7f080121
        0x7f080122
        0x7f080123
        0x7f080124
        0x7f080125
        0x7f080126
        0x7f080127
        0x7f080128
        0x7f080129
        0x7f08012a
        0x7f08012b
        0x7f08012c
        0x7f08012d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/ChargerAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/power/ChargerAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    iput-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsScreenOn:Z

    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentOrientation:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private changeBatteryLevelText()V
    .locals 6

    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    iget v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/power/ChargerAnimationView$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/power/ChargerAnimationView$1;-><init>(Lcom/android/systemui/power/ChargerAnimationView;I)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    iget v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    sub-int v0, v1, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    goto :goto_0
.end method

.method private checkChargerAnimationEnd(II)V
    .locals 6

    move v0, p2

    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/power/ChargerAnimationView$2;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/power/ChargerAnimationView$2;-><init>(Lcom/android/systemui/power/ChargerAnimationView;I)V

    int-to-long v4, p1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private dp2px(F)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayDensity:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private makeChargerAnimationDrawable(I)V
    .locals 8

    const/4 v7, 0x3

    if-ne p1, v7, :cond_1

    const/16 v2, 0x4f

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    if-ne p1, v7, :cond_2

    :try_start_0
    sget-object v5, Lcom/android/systemui/power/ChargerAnimationView;->RESOURCE_ID_ARRAY_WIRELESS:[I

    aget v4, v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/power/ChargerAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne p1, v7, :cond_3

    iget-object v5, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v6, 0x11

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x4f

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/android/systemui/power/ChargerAnimationView;->RESOURCE_ID_ARRAY_CABLE:[I

    aget v4, v5, v3

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v6, 0x11

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    :cond_4
    return-void
.end method

.method private setBackGroundAnimation()V
    .locals 10

    const-wide/16 v8, 0x5dc

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    const-string/jumbo v2, "alpha"

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim_WireLess:Landroid/animation/AnimatorSet;

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    const-string/jumbo v2, "alpha"

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim_Cable:Landroid/animation/AnimatorSet;

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3ecccccd    # 0.4f
        0x3ecccccd    # 0.4f
        0x3ecccccd    # 0.4f
        0x3ecccccd    # 0.4f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x0
    .end array-data
.end method

.method private setBatteryLevelTextAnimation()V
    .locals 10

    const-wide/16 v8, 0x320

    const/4 v6, 0x2

    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x7

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x640

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3ecccccd    # 0.4f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setCableChargerAnimation()V
    .locals 8

    const/16 v7, 0xe

    const/4 v6, 0x1

    const/4 v3, -0x2

    const v5, 0x3fa66666    # 1.3f

    const/high16 v4, -0x3eb00000    # -13.0f

    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    invoke-direct {p0, v6}, Lcom/android/systemui/power/ChargerAnimationView;->makeChargerAnimationDrawable(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-direct {p0, v2}, Lcom/android/systemui/power/ChargerAnimationView;->dp2px(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_0
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    invoke-direct {p0, v4}, Lcom/android/systemui/power/ChargerAnimationView;->dp2px(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {p0, v2}, Lcom/android/systemui/power/ChargerAnimationView;->dp2px(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :pswitch_2
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    invoke-direct {p0, v4}, Lcom/android/systemui/power/ChargerAnimationView;->dp2px(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setWirelessChargerAnimation()V
    .locals 5

    const/4 v4, -0x2

    const v3, 0x40333333    # 2.8f

    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->makeChargerAnimationDrawable(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/power/ChargerAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayDensity:F

    const v0, 0x7f0a00d8

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    const v0, 0x7f0a006d

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim_WireLess:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim_Cable:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBackGroundAnimation()V

    const v0, 0x7f0a007d

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBatteryLevelTextAnimation()V

    return-void
.end method

.method protected setChargerAnimationViewVisibility(I)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/power/ChargerAnimationView;->setVisibility(I)V

    return-void
.end method

.method public setChargingAnimationListner(Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    return-void
.end method

.method protected setWindowDisplay(Landroid/view/Display;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplay:Landroid/view/Display;

    return-void
.end method

.method protected startChargerAnimation(IIZ)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    iget-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PowerUI.ChargerAnimationView"

    const-string/jumbo v2, "Animation is playing, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    iput p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim_WireLess:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    const/16 v0, 0x53f

    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setWirelessChargerAnimation()V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->changeBatteryLevelText()V

    :goto_0
    const-string/jumbo v1, "PowerUI.ChargerAnimationView"

    const-string/jumbo v2, "Animation Started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->checkChargerAnimationEnd(II)V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim_Cable:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    const/16 v0, 0x53f

    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setCableChargerAnimation()V

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method protected stopChargerAnimation()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "PowerUI.ChargerAnimationView"

    const-string/jumbo v1, "Orientation change so stop annimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    :cond_0
    return-void
.end method
