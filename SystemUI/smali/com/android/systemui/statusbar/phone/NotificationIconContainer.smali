.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    }
.end annotation


# static fields
.field private static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final UNDARK_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final mTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;


# instance fields
.field private mActualLayoutWidth:I

.field private mActualPaddingEnd:F

.field private mActualPaddingStart:F

.field private mAddAnimationStartIndex:I

.field private mAnimationsEnabled:Z

.field private mCannedAnimationStartIndex:I

.field private mChangingViewPositions:Z

.field private mDark:Z

.field private mDisallowNextAnimation:Z

.field private mDotPadding:I

.field private mIconSize:I

.field private final mIconStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSimpleStatusBarEnabled:Z

.field private mOpenedAmount:F

.field private mReplacingIcons:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShowAllIcons:Z

.field private mSimpleStatusBarMaxNotificationNum:I

.field private mSpeedBumpIndex:I

.field private mStaticDotRadius:I

.field private mVisualOverflowAdaption:F


# direct methods
.method static synthetic -get0()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -get2()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -get3()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNDARK_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    return v0
.end method

.method static synthetic -get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0xc8

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;-><init>()V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    sget-object v2, Lcom/android/systemui/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNDARK_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, -0x31000000

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShowAllIcons:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsSimpleStatusBarEnabled:Z

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSimpleStatusBarMaxNotificationNum:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initDimens()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setWillNotDraw(Z)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSimpleStatusBarMaxNotificationNum:I

    return-void
.end method

.method private findFirstViewIndexAfter(F)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    return v2
.end method

.method private getActualPaddingEnd()F
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    return v0
.end method

.method private getActualPaddingStart()F
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingStart()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    return v0
.end method

.method private getLayoutEnd()F
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private isReplacingIcon(Landroid/view/View;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/support/v4/util/ArrayMap;

    if-nez v5, :cond_0

    return v6

    :cond_0
    instance-of v5, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v5, :cond_1

    return v6

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v5, v2, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    return v5

    :cond_2
    return v6
.end method


# virtual methods
.method public applyIconStates()V
    .locals 5

    const/4 v4, -0x1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/stack/ViewState;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    return-void
.end method

.method public calculateIconTranslations()V
    .locals 25

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v19

    const/4 v8, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const/4 v14, 0x5

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsSimpleStatusBarEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSimpleStatusBarMaxNotificationNum:I

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x400ccccd    # 2.2f

    mul-float v22, v22, v23

    sub-float v17, v13, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    const/4 v10, 0x1

    :goto_1
    const/16 v21, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v3, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move/from16 v0, v19

    iput v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v11, v0, :cond_6

    iget v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_6

    const/4 v9, 0x1

    :goto_3
    add-int/lit8 v22, v3, -0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_8

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v22, v20

    check-cast v22, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScaleFullyDark()F

    move-result v7

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_1

    if-eqz v15, :cond_a

    xor-int/lit8 v22, v10, 0x1

    if-eqz v22, :cond_a

    xor-int/lit8 v15, v9, 0x1

    :cond_1
    :goto_6
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_3

    if-nez v9, :cond_2

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v13, v22

    :goto_7
    cmpl-float v22, v19, v22

    if-ltz v22, :cond_3

    :cond_2
    if-eqz v15, :cond_c

    xor-int/lit8 v22, v9, 0x1

    if-eqz v22, :cond_c

    add-int/lit8 v8, v11, -0x1

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    add-int v18, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3f99999a    # 1.2f

    mul-float v22, v22, v23

    add-float v22, v22, v17

    div-int/lit8 v23, v18, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v21, v22, v23

    if-eqz v9, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v22, v22, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v19

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShowAllIcons:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v23, v24, v23

    mul-float v22, v22, v23

    add-float v21, v21, v22

    :cond_3
    iget v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    mul-float v22, v22, v7

    add-float v19, v19, v22

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_4
    move v14, v3

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_6
    if-lt v11, v14, :cond_7

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_9
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_5

    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_6

    :cond_b
    move/from16 v22, v17

    goto/16 :goto_7

    :cond_c
    move v8, v11

    goto/16 :goto_8

    :cond_d
    sub-float v22, v19, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    goto :goto_9

    :cond_e
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v8, v0, :cond_12

    const/16 v16, 0x1

    move/from16 v19, v21

    move v11, v8

    :goto_a
    if-ge v11, v3, :cond_12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v23, v0

    add-int v6, v22, v23

    move/from16 v0, v19

    iput v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-gt v0, v1, :cond_11

    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    iget v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v22, v0

    const v23, 0x3f4ccccd    # 0.8f

    cmpg-float v22, v22, v23

    if-gez v22, :cond_10

    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    add-int/lit8 v16, v16, -0x1

    :goto_b
    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    mul-int/lit8 v6, v6, 0x3

    :cond_f
    int-to-float v0, v6

    move/from16 v22, v0

    iget v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v19, v19, v22

    :goto_c
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_10
    const/16 v22, 0x1

    move/from16 v0, v22

    iput v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    goto :goto_b

    :cond_11
    const/16 v22, 0x2

    move/from16 v0, v22

    iput v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    goto :goto_c

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    if-eqz v2, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v22

    cmpg-float v22, v19, v22

    if-gez v22, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v22

    sub-float v22, v22, v19

    const/high16 v23, 0x40000000    # 2.0f

    div-float v4, v22, v23

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v8, v0, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v22

    sub-float v22, v22, v21

    const/high16 v23, 0x40000000    # 2.0f

    div-float v5, v22, v23

    add-float v22, v5, v4

    const/high16 v23, 0x40000000    # 2.0f

    div-float v4, v22, v23

    :cond_13
    const/4 v11, 0x0

    :goto_d
    if-ge v11, v3, :cond_14

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v22, v0

    add-float v22, v22, v4

    move/from16 v0, v22

    iput v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isLayoutRtl()Z

    move-result v22

    if-eqz v22, :cond_15

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v3, :cond_15

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_15
    return-void
.end method

.method public getActualWidth()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    return v0
.end method

.method public getIconSize()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    return v0
.end method

.method public getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    return-object v0
.end method

.method public getVisualOverflowAdaption()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    return v0
.end method

.method public hasOverflow()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v2, v2

    mul-float v0, v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float v1, v0, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected initDimens()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07046b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07046a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initDimens()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, -0x10000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v8

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v6, v2

    div-float/2addr v6, v8

    sub-float v6, v0, v6

    float-to-int v4, v6

    add-int v6, v4, v2

    invoke-virtual {v1, v7, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShowAllIcons:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    :cond_2
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onViewAdded(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    if-nez v3, :cond_1

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    if-eqz v1, :cond_0

    iput-boolean v6, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->-set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Z)Z

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    xor-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v3, :cond_4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    if-eqz v3, :cond_3

    instance-of v3, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_3

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v6, v4, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V

    :cond_3
    return-void

    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onViewRemoved(Landroid/view/View;)V

    instance-of v3, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v2

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTranslationX()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->findFirstViewIndexAfter(F)I

    move-result v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v3, :cond_2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0
.end method

.method public resetViewStates()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setActualLayoutWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    return-void
.end method

.method public setActualPaddingEnd(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    return-void
.end method

.method public setActualPaddingStart(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 4

    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/stack/ViewState;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    return-void
.end method

.method public setChangingViewPositions(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 5

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    xor-int/lit8 v3, p2, 0x1

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justUndarkened:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOpenedAmount(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    return-void
.end method

.method public setReplacingIcons(Landroid/support/v4/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/support/v4/util/ArrayMap;

    return-void
.end method

.method public setShowAllIcons(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShowAllIcons:Z

    return-void
.end method

.method public setSimpleStatusBarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsSimpleStatusBarEnabled:Z

    return-void
.end method

.method public setSpeedBumpIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    return-void
.end method

.method public setVisualOverflowAdaption(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    return-void
.end method
