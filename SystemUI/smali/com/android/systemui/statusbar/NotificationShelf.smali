.class public Lcom/android/systemui/statusbar/NotificationShelf;
.super Lcom/android/systemui/statusbar/ActivatableNotificationView;
.source "NotificationShelf.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationShelf$1;,
        Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
    }
.end annotation


# static fields
.field private static final ICON_ANMATIONS_WHILE_SCROLLING:Z

.field private static final USE_ANIMATIONS_WHEN_OPENING:Z


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private mAnimationsEnabled:Z

.field private mClearAllButton:Landroid/widget/TextView;

.field private mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mDark:Z

.field private mHasItemsInStableShelf:Z

.field private mHideBackground:Z

.field private mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mIconAppearTopPadding:I

.field private mInteractive:Z

.field private mMaxLayoutHeight:I

.field private mMaxShelfEnd:F

.field private mNoAnimationsInThisFrame:Z

.field private mNotGoneIndex:I

.field private mNotiSettingButton:Landroid/widget/TextView;

.field private mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mOpenedAmount:F

.field private mPaddingBetweenElements:I

.field private mRelativeOffset:I

.field private mScrollFastThreshold:I

.field private mShelfDivider:Landroid/view/View;

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

.field private mShelfTextArea:Landroid/widget/LinearLayout;

.field private mStatusBarHeight:I

.field private mStatusBarPaddingStart:I

.field private mStatusBarState:I

.field private mTmp:[I

.field private mUpdateMonitorCallbackForButtons:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationShelf;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/NotificationShelf;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationShelf;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setHasItemsInStableShelf(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/NotificationShelf;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOpenedAmount(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "debug.icon_opening_animations"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    const-string/jumbo v0, "debug.icon_scroll_animations"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationShelf$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mUpdateMonitorCallbackForButtons:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    return-void
.end method

.method private getFullyClosedTranslation()F
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v0

    return-object v0
.end method

.method private initDimens()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070436

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07067c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070685

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarPaddingStart:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070430

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07045c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070659

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1, v4, v1, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    return-void
.end method

.method private setButtonContentDescription()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120803

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1201f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setHasItemsInStableShelf(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    :cond_0
    return-void
.end method

.method private setHideBackground(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateBackground()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateOutline()V

    :cond_0
    return-void
.end method

.method private setIconTransformationAmount(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFZZ)V
    .locals 23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const v20, 0x3f333333    # 0.7f

    cmpl-float v20, p2, v20

    if-lez v20, :cond_b

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationIcon()Landroid/view/View;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContentTranslation()F

    move-result v21

    add-float v13, v20, v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isTransformingIntoShelf()Z

    move-result v20

    xor-int/lit8 v19, v20, 0x1

    :goto_1
    if-eqz p4, :cond_1

    xor-int/lit8 v20, v19, 0x1

    if-eqz v20, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v20

    sub-float v13, v20, p3

    :cond_1
    const/4 v14, 0x0

    if-eqz v15, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getRelativeTopPadding(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v14, v0

    :goto_2
    int-to-float v0, v9

    move/from16 v20, v0

    add-float v13, v13, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v20

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v17, v20, v21

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v20

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v20, v21, v20

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    add-float v17, v17, v20

    sub-float v20, v13, v17

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v10

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v21

    mul-float v18, v20, v21

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingIcon()Z

    move-result v20

    xor-int/lit8 v12, v20, 0x1

    if-eqz v12, :cond_2

    move/from16 v3, p2

    const/high16 v20, 0x40000000    # 2.0f

    div-float v14, v18, v20

    :cond_2
    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v14, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    if-eqz v8, :cond_a

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v11, v20

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v21

    div-float v20, v20, v21

    move/from16 v0, v20

    iput v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    iget v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleY:F

    const/16 v20, 0x0

    cmpl-float v20, p2, v20

    if-nez v20, :cond_e

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isAnimating(Landroid/view/View;)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    :goto_3
    move/from16 v0, v20

    iput-boolean v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    iput v3, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->alpha:F

    iput v10, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->yTranslation:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    iput v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    iput v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleY:F

    :cond_3
    if-eqz v19, :cond_4

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    iput v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    iput v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->alpha:F

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    iput v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    iput v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleY:F

    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v21

    add-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_5

    const/high16 v20, 0x3f800000    # 1.0f

    cmpg-float v20, p2, v20

    if-gez v20, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v20

    if-nez v20, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v20

    if-nez v20, :cond_8

    if-eqz p5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v20

    if-nez v20, :cond_7

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_8

    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getBackgroundColorWithoutTint()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContrastedStaticDrawableColor(I)I

    move-result v16

    if-nez v12, :cond_9

    if-eqz v16, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result v7

    iget v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v7, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v16

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v5

    if-eqz v5, :cond_f

    move/from16 v0, v16

    iput v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    :cond_a
    :goto_4
    return-void

    :cond_b
    const/16 p2, 0x0

    goto/16 :goto_0

    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    goto/16 :goto_2

    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_f
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    goto :goto_4
.end method

.method private setOpenedAmount(F)V
    .locals 9

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, p1, v7

    if-nez v7, :cond_0

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AmbientState;->isPanelFullWidth()Z

    move-result v6

    if-nez v6, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v7

    sub-int v4, v6, v7

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualLayoutWidth(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->hasOverflow()Z

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v0

    if-nez v1, :cond_3

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconSize()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f99999a    # 1.2f

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v0, v6

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AmbientState;->isOnKeyguard()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v2, v6

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingEnd(F)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingStart()I

    move-result v6

    int-to-float v3, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingStart(F)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setOpenedAmount(F)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getVisualOverflowAdaption()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setVisualOverflowAdaption(F)V

    return-void

    :cond_4
    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    goto :goto_0
.end method

.method private updateIconAppearance(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FZZZZ)F
    .locals 16

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    add-int v11, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v5, v1, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3fc00000    # 1.5f

    move/from16 v0, p2

    invoke-static {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    mul-float/2addr v5, v1

    if-eqz p6, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :cond_0
    int-to-float v1, v11

    add-float v14, v15, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v13

    cmpl-float v1, v14, v13

    if-ltz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isUnlockHintRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    :cond_2
    cmpg-float v1, v15, v13

    if-gez v1, :cond_3

    sub-float v1, v13, v15

    int-to-float v2, v11

    div-float v10, v1, v2

    sget-object v1, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    move/from16 v0, p2

    invoke-static {v12, v10, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v12

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v4, v1, v12

    sub-float v1, v13, v15

    div-float v3, v1, v5

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, v1, v3

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconPositioning(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFFZZZZ)V

    return v4

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateIconPositioning(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFFZZZZ)V
    .locals 11

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v9, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v10

    if-nez v10, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_7

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    cmpl-float v1, v7, p3

    if-nez v1, :cond_1

    if-nez p6, :cond_8

    move/from16 v1, p7

    :goto_1
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v1, :cond_a

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_a

    :goto_2
    move/from16 v0, p5

    iput-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v1, :cond_b

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_3
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    :cond_1
    if-nez p6, :cond_2

    if-eqz p7, :cond_3

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v1, :cond_3

    invoke-static {v9}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v10, v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->cancelAnimations(Landroid/view/View;)V

    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    :cond_3
    if-nez p8, :cond_4

    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-nez v1, :cond_4

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    if-eqz v1, :cond_d

    :cond_4
    move v3, p2

    :goto_5
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v1, :cond_f

    :cond_5
    :goto_6
    iput p3, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    iput v7, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v1

    if-nez v1, :cond_10

    if-nez p8, :cond_6

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    if-eqz v1, :cond_10

    :cond_6
    move v8, p2

    :goto_7
    move/from16 v0, p8

    invoke-virtual {p1, v8, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentTransformationAmount(FZ)V

    cmpl-float v1, v7, v3

    if-eqz v1, :cond_11

    const/4 v5, 0x1

    :goto_8
    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationShelf;->setIconTransformationAmount(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFZZ)V

    return-void

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_9
    const/16 p5, 0x1

    goto/16 :goto_2

    :cond_a
    const/16 p5, 0x0

    goto/16 :goto_2

    :cond_b
    const/4 v1, 0x0

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    goto :goto_4

    :cond_d
    move v3, v7

    iget v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    xor-int/lit8 v1, v1, 0x1

    :goto_9
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    goto :goto_5

    :cond_e
    const/4 v1, 0x0

    goto :goto_9

    :cond_f
    move p3, v3

    goto :goto_6

    :cond_10
    const/4 v8, 0x0

    goto :goto_7

    :cond_11
    const/4 v5, 0x0

    goto :goto_8
.end method

.method private updateInteractiveness()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setClickable(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setImportantForAccessibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateNotificationClipHeight(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v2, v3, v4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v1

    :goto_0
    cmpl-float v3, v2, p2

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v3

    if-nez v3, :cond_0

    xor-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_3

    :cond_0
    sub-float v3, v2, p2

    float-to-int v0, v3

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipBottomAmount(I)V

    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipBottomAmount(I)V

    goto :goto_1
.end method

.method private updateRelativeOffset()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getLocationOnScreen([I)V

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    return-void
.end method

.method private updateShelfIconColor()V
    .locals 10

    const/4 v5, 0x0

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    add-int/lit8 v5, v5, 0x1

    instance-of v8, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    iget-object v3, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-static {v3, v8}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldApplyInvertColor()Z

    move-result v7

    :goto_1
    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppPrimaryColor(Z)I

    move-result v1

    iput v1, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-void
.end method

.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    return-object v0
.end method

.method public getClearAllButtonView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object v0
.end method

.method public getNotGoneIndex()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    return v0
.end method

.method public getNotiSettingsButtonView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNotificationMergeSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object v0
.end method

.method public hasItemsInStableShelf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    return v0
.end method

.method public hasNoContentHeight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isInteractive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    return v0
.end method

.method protected needsOutline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->needsOutline()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateShowButtonBackground()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->setButtonContentDescription()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    const v1, 0x7f120803

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    const v1, 0x7f1201f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 9

    const v8, 0x7f07009d

    const v7, 0x7f07009b

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07045c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070427

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07009f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->setButtonContentDescription()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    const v5, 0x7f120803

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    const v5, 0x7f1201f3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onFinishInflate()V

    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mUpdateMonitorCallbackForButtons:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const v0, 0x7f0a00e2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    const v0, 0x7f0a038e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    const v0, 0x7f0a03ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfTextArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03aa

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setClipToPadding(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipToActualHeight(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipChildren(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setShowAllIcons(Z)V

    new-instance v0, Lcom/android/systemui/ViewInvertHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const-wide/16 v2, 0x2bc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateShowButtonBackground()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120088

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setClearAllEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setDark(ZZJ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    return-void
.end method

.method public setMaxLayoutHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    return-void
.end method

.method public setMaxShelfEnd(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxShelfEnd:F

    return-void
.end method

.method public setNotiSettingsEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setStatusBarState(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateBackgroundForWhiteLockScreen(Z)V

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->isKeyguardState(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOnKeyguard:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateOutlineAlpha()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateBackgroundForWhiteLockScreen(Z)V

    goto :goto_0
.end method

.method protected shouldHideBackground()Z
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startButtonsAnimation(Z)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/statusbar/NotificationShelf$2;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf$2;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Z)V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/NotificationShelf$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf$3;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_1
.end method

.method public updateAppearance()V
    .locals 32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v29

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v21

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v31

    mul-int/lit8 v31, v31, 0x2

    sub-int v2, v2, v31

    int-to-float v0, v2

    move/from16 v20, v0

    const/4 v4, 0x0

    cmpl-float v2, v29, v20

    if-ltz v2, :cond_0

    sub-float v2, v29, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v4, v2, v31

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :cond_0
    const/16 v24, 0x0

    const/16 v22, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-get0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v10, 0x1

    :cond_1
    const/4 v14, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getCurrentScrollVelocity()F

    move-result v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v2, v2

    cmpl-float v2, v15, v2

    if-gtz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getExpandingVelocity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v2, v2, v31

    if-lez v2, :cond_a

    const/4 v6, 0x1

    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, v15, v2

    if-lez v2, :cond_c

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isPanelTracking()Z

    move-result v2

    xor-int/lit8 v7, v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v11

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/ExpandableView;

    add-int/lit8 v24, v24, 0x1

    instance-of v2, v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_2

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v2

    const/16 v31, 0x8

    move/from16 v0, v31

    if-eq v2, v0, :cond_2

    move-object v3, v12

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/stack/ViewState;->getFinalTranslationZ(Landroid/view/View;)F

    move-result v2

    int-to-float v0, v11

    move/from16 v31, v0

    cmpl-float v2, v2, v31

    if-lez v2, :cond_e

    const/4 v9, 0x1

    :goto_4
    move-object/from16 v0, v21

    if-ne v12, v0, :cond_f

    const/4 v8, 0x1

    :goto_5
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v28

    if-nez v8, :cond_3

    if-nez v9, :cond_3

    if-eqz v10, :cond_10

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v23, v29, v2

    :cond_4
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconAppearance(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FZZZZ)F

    move-result v19

    add-float v25, v25, v19

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v26

    cmpl-float v2, v28, v29

    if-ltz v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v2, v0, :cond_11

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setTintColor(I)V

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v14, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOverrideTintColor(IF)V

    :cond_5
    :goto_7
    if-eqz v8, :cond_12

    if-nez v13, :cond_6

    move/from16 v13, v26

    :cond_6
    move/from16 v0, v19

    invoke-virtual {v3, v13, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    :goto_8
    if-nez v22, :cond_7

    xor-int/lit8 v2, v9, 0x1

    if-eqz v2, :cond_8

    :cond_7
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAboveShelf(Z)V

    :cond_8
    add-int/lit8 v22, v22, 0x1

    move/from16 v27, v26

    goto/16 :goto_3

    :cond_9
    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_e
    const/4 v9, 0x0

    goto :goto_4

    :cond_f
    const/4 v8, 0x0

    goto :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float v2, v2

    sub-float v23, v29, v2

    sub-float v16, v23, v28

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBelowSpeedBump()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotificationMergeSize()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v16, v2

    if-gtz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotificationMergeSize()I

    move-result v2

    int-to-float v2, v2

    add-float v2, v2, v28

    move/from16 v0, v29

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v23

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v2, v0, :cond_5

    move/from16 v14, v27

    move/from16 v30, v19

    goto :goto_7

    :cond_12
    move/from16 v13, v26

    const/4 v2, 0x0

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    goto :goto_8

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setSpeedBumpIndex(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateShelfIconColor()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v25, v2

    if-gez v2, :cond_18

    const/16 v17, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v2, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-get0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z

    move-result v2

    xor-int/lit8 v17, v2, 0x1

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hidden:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isOnKeyguard()Z

    move-result v18

    :goto_a
    if-nez v17, :cond_15

    if-eqz v10, :cond_1a

    :cond_15
    move/from16 v2, v18

    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    if-nez v17, :cond_16

    if-eqz v10, :cond_1b

    :cond_16
    move/from16 v2, v18

    :goto_c
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    if-eqz v18, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfDivider:Landroid/view/View;

    const/16 v31, 0x8

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfTextArea:Landroid/widget/LinearLayout;

    const/16 v31, 0x8

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v2, v0, :cond_17

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    :cond_17
    return-void

    :cond_18
    const/16 v17, 0x0

    goto :goto_9

    :cond_19
    const/16 v18, 0x1

    goto :goto_a

    :cond_1a
    const/4 v2, 0x0

    goto :goto_b

    :cond_1b
    const/4 v2, 0x0

    goto :goto_c

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfDivider:Landroid/view/View;

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfTextArea:Landroid/widget/LinearLayout;

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfDivider:Landroid/view/View;

    const/16 v31, 0x8

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfTextArea:Landroid/widget/LinearLayout;

    const/16 v31, 0x8

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d
.end method

.method public updateShowButtonBackground()V
    .locals 7

    const v3, 0x7f0805c1

    const v4, 0x7f0805bf

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "show_button_background"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, "NotificationShelf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "show backgroud: :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v0, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v5, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method public updateState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v8

    add-float/2addr v5, v8

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v8

    add-float v2, v5, v8

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v5, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v8, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v8, v8

    add-float/2addr v5, v8

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v8, v8, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->height:I

    int-to-float v8, v8

    add-float v4, v5, v8

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v8

    iput v8, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->height:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v9, v9, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->height:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->yTranslation:F

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    int-to-float v5, v5

    iput v5, v8, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->zTranslation:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v5, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->yTranslation:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v8

    sub-float/2addr v5, v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    div-float v3, v5, v8

    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-set2(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->clipTopAmount:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AmbientState;->hasPulsingNotifications()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    int-to-float v5, v5

    iput v5, v8, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->alpha:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v8

    if-nez v8, :cond_4

    :goto_2
    iput-boolean v7, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->belowSpeedBump:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput v10, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->shadowAlpha:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput-boolean v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hideSensitive:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationX()F

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->xTranslation:F

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v6, v6, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->notGoneIndex:I

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->notGoneIndex:I

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-set0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    iput-boolean v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hidden:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-set1(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    :goto_3
    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v5

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1

    :cond_4
    move v7, v6

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput-boolean v7, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hidden:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/16 v7, 0x40

    iput v7, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->location:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-set0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    goto :goto_3
.end method
