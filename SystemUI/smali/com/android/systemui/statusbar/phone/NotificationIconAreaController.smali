.class public Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.super Ljava/lang/Object;
.source "NotificationIconAreaController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIconHPadding:I

.field protected mIconSize:I

.field protected mIconTint:I

.field private mIsStatusBarCarrierTimeOutSet:Z

.field protected final mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field protected mNotificationIconArea:Landroid/view/View;

.field private mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mOperatorLogoIcon:Landroid/widget/ImageView;

.field private mOpreatorIconId:I

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field protected mSimpleStatusBarIconController:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarCarrierLabel:Landroid/widget/TextView;

.field private mStatusBarCarrierLabelTextSize:I

.field protected final mTintArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabelTextSize:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->initializeNotificationAreaViews(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mSimpleStatusBarIconController:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    return-void
.end method

.method private generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_NotificationIconAreaController_7909(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_NotificationIconAreaController_8045(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object v0
.end method

.method private reloadDimens(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070438

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    const v1, 0x7f070680

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    sget-boolean v1, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_INDICATOR_PLMN:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const v1, 0x7f070672

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabelTextSize:I

    :cond_0
    return-void
.end method

.method private updateIconsForLayout(Lcom/android/systemui/statusbar/NotificationData;Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZ)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/NotificationData;",
            "Ljava/util/function/Function",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer;",
            "ZZ)V"
        }
    .end annotation

    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v27

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x0

    const/4 v10, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v27, v0

    if-eqz v27, :cond_0

    check-cast v26, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->shouldShowNotificationIcon(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData;Z)Z

    move-result v27

    if-eqz v27, :cond_0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mSimpleStatusBarIconController:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2

    if-eqz p5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mSimpleStatusBarIconController:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->isSimpleStatusBarEnabled()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setSimpleStatusBarEnabled(Z)V

    if-eqz v12, :cond_2

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mSimpleStatusBarIconController:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v16

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->applySimpleStatusBar(ILcom/android/systemui/statusbar/NotificationData;)Ljava/util/ArrayList;

    move-result-object v24

    :cond_2
    new-instance v20, Landroid/support/v4/util/ArrayMap;

    invoke-direct/range {v20 .. v20}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_a

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v0, v5, Lcom/android/systemui/statusbar/StatusBarIconView;

    move/from16 v27, v0

    if-nez v27, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    const/4 v11, 0x0

    move-object/from16 v19, v5

    check-cast v19, Lcom/android/systemui/statusbar/StatusBarIconView;

    xor-int/lit8 v27, v12, 0x1

    if-eqz v27, :cond_9

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v18

    const/4 v13, 0x0

    :goto_3
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v13, v0, :cond_7

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v27

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    if-nez v11, :cond_6

    const/4 v11, 0x1

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :cond_7
    if-eqz v11, :cond_9

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    if-nez v21, :cond_8

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_b
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    if-eqz v21, :cond_b

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_b

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/support/v4/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/4 v10, 0x0

    :goto_5
    move/from16 v0, v23

    if-ge v10, v0, :cond_d

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeView(Landroid/view/View;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v17

    const/4 v10, 0x0

    :goto_6
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_f

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeTransientView(Landroid/view/View;)V

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    if-nez v27, :cond_e

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_f
    const/16 v27, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v6

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v6, :cond_11

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne v3, v9, :cond_10

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addView(Landroid/view/View;I)V

    goto :goto_8

    :cond_11
    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroid/support/v4/util/ArrayMap;)V

    return-void
.end method


# virtual methods
.method protected applyNotificationIconsTint()V
    .locals 7

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v6, 0x7f0a0224

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-static {v5, v4, v6}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    :cond_0
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v5, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_INDICATOR_PLMN:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method protected getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v0

    return v0
.end method

.method public getNotificationInnerAreaView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    return-object v0
.end method

.method protected inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d0101

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initializeNotificationAreaViews(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    const v2, 0x7f0a0390

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onDensityOrFontScaleChanged(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-boolean v3, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_INDICATOR_PLMN:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabelTextSize:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mOpreatorIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method removeStatusBarCarrierLabel()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setStatusBarCarrierLabelVisibility(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIsStatusBarCarrierTimeOutSet:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->showStatusBarCarrierLabel()V

    :cond_0
    return-void
.end method

.method public setOperatorLogoIndicator(Landroid/widget/ImageView;I)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mOpreatorIconId:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method setStatusBarCarrierLabelView(Landroid/widget/TextView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method setStatusBarCarrierLabelVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setupShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShelf;->getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    return-void
.end method

.method protected shouldShowNotificationIcon(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData;Z)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isTopLevelChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method showStatusBarCarrierLabel()V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setStatusBarCarrierLabelVisibility(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIsStatusBarCarrierTimeOutSet:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public updateAppearance()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    return-void
.end method

.method public updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Lcom/android/systemui/statusbar/NotificationData;Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZ)V

    new-instance v8, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc$1;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc$1;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-object v6, p0

    move-object v7, p1

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Lcom/android/systemui/statusbar/NotificationData;Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZ)V

    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_INDICATOR_PLMN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIsStatusBarCarrierTimeOutSet:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setStatusBarCarrierLabelVisibility(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    return-void

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setStatusBarCarrierLabelVisibility(Z)V

    goto :goto_0
.end method

.method public updateOperatorLogoVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mOperatorLogoIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
