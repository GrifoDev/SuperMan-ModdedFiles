.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;
.super Landroid/widget/FrameLayout;
.source "DeskPanelViewNotification.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
.implements Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;
    }
.end annotation


# instance fields
.field private mAnimate:Z

.field private mBottomBarView:Landroid/widget/LinearLayout;

.field private mClearAllButton:Landroid/widget/TextView;

.field private mCollapseAnimSet:Landroid/animation/AnimatorSet;

.field private mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

.field private mCurrentDisplaySize:Landroid/graphics/Point;

.field private mCurrentState:I

.field private mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

.field private mDeskPanelViewBottomMargin:I

.field private mDeskPanelViewNotificationAll:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

.field private mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

.field private mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

.field private mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

.field private mDeskPanelViewNotificationWidth:I

.field private mDeskPanelViewPreviewMargin:I

.field private mDeskPanelViewTopMargin:I

.field private mExpandAnimSet:Landroid/animation/AnimatorSet;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIsSwitching:Z

.field private mLocationOnScreen:[I

.field private mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

.field private mMenuExposedView:Landroid/view/View;

.field private mNextState:I

.field private mNotiSettingButton:Landroid/widget/TextView;

.field private mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mPosition:I

.field private mResetRunnable:Ljava/lang/Runnable;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mShouldShowDeskPanelViews:Z

.field private mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarState:I

.field private mSwipeHelper:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;

.field private mTempInt2:[I

.field private mToHideSwitchingNotificationKey:Ljava/lang/String;

.field private mToShowHeadsUpNotificationKey:Ljava/lang/String;

.field private mToShowSwitchingNotificationKey:Ljava/lang/String;

.field private mTranslatingParentView:Landroid/view/View;

.field private mVisibilityChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mAnimate:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToHideSwitchingNotificationKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToShowSwitchingNotificationKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mTranslatingParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAll:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mMenuExposedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mMenuExposedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mTranslatingParentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentSingleView(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->removeNotificationView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->handleChildDismissed(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchFinish()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShouldShowDeskPanelViews:Z

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBarState:I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mLocationOnScreen:[I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToHideSwitchingNotificationKey:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToShowSwitchingNotificationKey:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToShowHeadsUpNotificationKey:Ljava/lang/String;

    const/16 v0, 0x6001

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentState:I

    const/16 v0, 0x6000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNextState:I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mTempInt2:[I

    new-instance v0, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method

.method private clearSinglePanelNotifications()V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->removeNotificationViews(Ljava/util/List;)V

    return-void
.end method

.method private collapseOthers(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentNoneState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextAllState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextPreviewState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getTaskBar()Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getTaskBar()Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->closeAllTaskBarWindowExcept(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->isDeskPanelViewQuickSettingVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->collapseDeskPanelViewQuickSetting(Z)V

    :cond_2
    return-void
.end method

.method private doWorksAfterSwitch()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentHeadsUpState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentNoneState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->clearSinglePanelNotifications()V

    :cond_1
    return-void
.end method

.method private handleChildDismissed(Landroid/view/View;)V
    .locals 3

    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addSwipedOutNotification(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->performDismiss(Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Z)V

    return-void
.end method

.method private handleDeskPanelViewNotificationVisibilityChanged(Ljava/lang/String;III)V
    .locals 3

    const-string/jumbo v0, "DeskPanelViewNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleDeskPanelViewNotificationVisibilityChanged-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "DeskPanelViewNotificationAll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentNoneState()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextAllState()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchFinish()V

    :cond_0
    :goto_0
    const-string/jumbo v0, "DeskPanelViewNotificationHeadsUp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentNoneState()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextHeadsUpState()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchFinish()V

    :cond_1
    :goto_1
    const-string/jumbo v0, "DeskPanelViewNotificationPreview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentNoneState()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextPreviewState()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchFinish()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentAllState()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextUnknownState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchPhaseTwo()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentUnknownState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextAllState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchFinish()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentHeadsUpState()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextUnknownState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchPhaseTwo()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentUnknownState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextHeadsUpState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchFinish()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentPreviewState()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextUnknownState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchPhaseTwo()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentUnknownState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextPreviewState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchFinish()V

    goto :goto_2
.end method

.method private handleDeskStatusBarIconMouseLeftClick(ZLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll()V

    :cond_0
    const/16 v0, 0x6003

    invoke-direct {p0, v0, p2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchStart(ILjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->isThisNotificationPreview(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x6001

    invoke-direct {p0, v0, p2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchStart(ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method private initViewHierarchyChangeListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private isCurrentSingleView(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentSingleState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->isThisNotificationPreview(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeskPanelViewNotificationArea(FF)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mLocationOnScreen:[I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mLocationOnScreen:[I

    aget v2, v2, v1

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mLocationOnScreen:[I

    aget v2, v2, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mLocationOnScreen:[I

    aget v2, v2, v0

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mLocationOnScreen:[I

    aget v2, v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isHeadsUpRemoteInputActive()Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 9

    const/4 v8, 0x0

    if-nez p2, :cond_0

    return v8

    :cond_0
    instance-of v7, p2, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v7, :cond_1

    move-object v7, p2

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v3, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v4, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mTempInt2:[I

    invoke-virtual {p2, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mTempInt2:[I

    aget v5, v7, v8

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mTempInt2:[I

    const/4 v8, 0x1

    aget v6, v7, v8

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    add-int v8, v6, v0

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private loadDimens()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationWidth:I

    const v1, 0x7f07015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewTopMargin:I

    const v1, 0x7f07015b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewBottomMargin:I

    return-void
.end method

.method private onDensityOrFontScaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->loadDimens()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->updateButtons()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->updateShowButtonBackground()V

    return-void
.end method

.method private removeNotificationView(Landroid/view/View;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DeskPanelViewNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeNotificationView-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->removeView(Landroid/view/View;)V

    return v6

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v5

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->removeView(Landroid/view/View;)V

    return v6

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->removeView(Landroid/view/View;)V

    return v6

    :cond_3
    const-string/jumbo v1, "DeskPanelViewNotification"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "DeskPanelViewNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "DeskPanelViewNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "DeskPanelViewNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "DeskPanelViewNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method

.method private removeNotificationViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->removeNotificationView(Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetExpandableNotificationRowState(Landroid/view/ViewGroup;)V
    .locals 8

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resetExpandableNotificationRowState(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resetExpandableNotificationRowState(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private resetExpandableNotificationRowState(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move v2, v1

    move v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    :cond_1
    return-void
.end method

.method private resetPhase()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mResetRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mResetRunnable:Ljava/lang/Runnable;

    :cond_0
    const-string/jumbo v0, "DeskPanelViewNotification"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x6001

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setCurrentState(I)V

    const/16 v0, 0x6000

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNextState(I)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsSwitching:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mAnimate:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToHideSwitchingNotificationKey:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToShowSwitchingNotificationKey:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToShowHeadsUpNotificationKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAll:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->collapse(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->collapse(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->collapse(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->clearSinglePanelNotifications()V

    return-void
.end method

.method private setBottomBarView()V
    .locals 2

    const v0, 0x7f0a0159

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mBottomBarView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mBottomBarView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a038e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotiSettingButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mBottomBarView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a00e2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mClearAllButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotiSettingButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mClearAllButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mBottomBarView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->updateShowButtonBackground()V

    return-void
.end method

.method private setNotificationPanelBackground(Landroid/view/ViewGroup;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080140

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-ne p2, v2, :cond_0

    mul-int/lit8 v0, p2, 0x2

    :goto_0
    invoke-virtual {p1, v2, p2, v2, v0}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    return-void

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method private showHeadsUpNotification(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBarState:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentAllState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToShowHeadsUpNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToShowHeadsUpNotificationKey:Ljava/lang/String;

    const/16 v0, 0x6002

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchStart(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private switchFinish()V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mResetRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mResetRunnable:Ljava/lang/Runnable;

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getCurrentState()I

    move-result v1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsSwitching:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getNextState()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setCurrentState(I)V

    const/16 v4, 0x6000

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNextState(I)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsSwitching:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mAnimate:Z

    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToHideSwitchingNotificationKey:Ljava/lang/String;

    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToShowSwitchingNotificationKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentNoneState()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v3, 0x8

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setVisibility(I)V

    if-eq v1, v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHandler:Landroid/os/Handler;

    const v5, 0x1000002

    invoke-virtual {v4, v5, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentNoneState()Z

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v2, 0x1000000

    :goto_1
    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->doWorksAfterSwitch()V

    :cond_3
    const-string/jumbo v3, "DeskPanelViewNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchFinish-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getCurrentState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const/16 v3, 0x6001

    if-ne v1, v3, :cond_6

    const v2, 0x1000001

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private switchPhaseOne(ILjava/lang/String;Z)V
    .locals 6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsSwitching:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsSwitching:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mAnimate:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToShowSwitchingNotificationKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNextState(I)V

    const-string/jumbo v1, "DeskPanelViewNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchPhaseOne-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToShowSwitchingNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseOthers(Z)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$2;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mResetRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentNoneState()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->changeDeskPanelViewNotificationPositionX()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextNoneState()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextAllState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAll:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->expand(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToShowSwitchingNotificationKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->removeNotificationView(Landroid/view/View;)Z

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resetPhase()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentHeadsUpState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->collapse(Z)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentPreviewState()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->collapse(Z)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentAllState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAll:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->collapse(Z)V

    return-void
.end method

.method private switchPhaseTwo()V
    .locals 9

    const/4 v8, 0x1

    const/16 v7, 0x6000

    const/4 v6, 0x0

    const-string/jumbo v3, "DeskPanelViewNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchPhaseTwo-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getCurrentState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentAllState()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToShowSwitchingNotificationKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setCurrentState(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->removeView(Landroid/view/View;)V

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsSwitching:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "DeskPanelViewNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchPhaseTwo-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToHideSwitchingNotificationKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchFinish()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentHeadsUpState()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->getChildCount()I

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchFinish()V

    goto :goto_0

    :cond_4
    if-ne v2, v8, :cond_5

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setCurrentState(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToHideSwitchingNotificationKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->removeViewAt(I)V

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "DeskPanelViewNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchPhaseTwo-vC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentPreviewState()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getChildCount()I

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchFinish()V

    goto :goto_0

    :cond_7
    if-ne v2, v8, :cond_8

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setCurrentState(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToHideSwitchingNotificationKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->removeViewAt(I)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "DeskPanelViewNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchPhaseTwo-vC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private switchStart(ILjava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentNoneState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6001

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "DeskPanelViewNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchStart-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getCurrentState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchPhaseOne(ILjava/lang/String;Z)V

    return-void
.end method

.method private updateButtons()V
    .locals 10

    const v9, 0x7f120803

    const v8, 0x7f1201f3

    const v7, 0x7f0b0002

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f12003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotiSettingButton:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mClearAllButton:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateShowButtonBackground()V
    .locals 7

    const v3, 0x7f0805c1

    const v4, 0x7f0805bf

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->showButtonBackground:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotiSettingButton:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v1, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mClearAllButton:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {v5, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method


# virtual methods
.method public addNotification(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextPreviewState()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->showHeadsUpNotification(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public changeDeskPanelViewNotificationPositionX()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextPreviewState()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewPreviewMargin:I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->setDeskPanelPositionX(Landroid/view/View;I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentHeadsUpState()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextHeadsUpState()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->isDeskPanelViewQuickSettingVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070159

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSwipeHelper:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSwipeHelper:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public collapseAll(Z)V
    .locals 2

    const-string/jumbo v0, ""

    const/16 v1, 0x6001

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchStart(ILjava/lang/String;Z)V

    return-void
.end method

.method public collapseDeskPanelViewNotification(Z)V
    .locals 2

    const-string/jumbo v0, ""

    const/16 v1, 0x6001

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchStart(ILjava/lang/String;Z)V

    return-void
.end method

.method public collapseFrom()F
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mPosition:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getTaskBarHeight()I

    move-result v0

    :goto_0
    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    return v1

    :pswitch_2
    return v1

    :pswitch_3
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public collapseTo()F
    .locals 3

    const v2, 0x7f070164

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mPosition:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getTaskBarHeight()I

    move-result v0

    :goto_0
    sub-int v0, v1, v0

    int-to-float v0, v0

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    return v0

    :pswitch_2
    return v1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public expandFrom()F
    .locals 3

    const v2, 0x7f070164

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mPosition:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getTaskBarHeight()I

    move-result v0

    :goto_0
    sub-int v0, v1, v0

    int-to-float v0, v0

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    return v0

    :pswitch_2
    return v1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public expandTo()F
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mPosition:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getTaskBarHeight()I

    move-result v0

    :goto_0
    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentSingleState()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextSingleState()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :cond_1
    return v0

    :pswitch_2
    return v0

    :pswitch_3
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    instance-of v3, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getCurrentStateDeskPanelViewNotification()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v10

    int-to-float v10, v10

    add-float v9, v2, v10

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v2

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v11

    int-to-float v11, v11

    sub-float v0, v10, v11

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getWidth()I

    move-result v6

    cmpl-float v10, p2, v9

    if-ltz v10, :cond_0

    cmpg-float v10, p2, v0

    if-gtz v10, :cond_0

    const/4 v10, 0x0

    cmpl-float v10, p1, v10

    if-ltz v10, :cond_0

    int-to-float v10, v6

    cmpg-float v10, p1, v10

    if-gtz v10, :cond_0

    instance-of v10, v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v10, :cond_2

    move-object v7, v8

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v10

    iget-object v10, v10, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v10, v10, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eq v10, v7, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v11

    iget-object v11, v11, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v11, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v10

    if-eq v10, v7, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sub-float v10, p2, v2

    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v10

    return-object v10

    :cond_2
    return-object v8

    :cond_3
    const/4 v10, 0x0

    return-object v10
.end method

.method public getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentState:I

    return v0
.end method

.method public getCurrentStateDeskPanelViewNotification()Landroid/view/ViewGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentHeadsUpState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getDeskPanelViewNotificationHeadsUp()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentPreviewState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getDeskPanelViewNotificationPreview()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getDeskPanelViewNotificationAllArea()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    move-result-object v0

    return-object v0
.end method

.method public getDeskPanelViewNotificationAllArea()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    return-object v0
.end method

.method public getDeskPanelViewNotificationAllMaxHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewTopMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewBottomMargin:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDeskPanelViewNotificationHeadsUp()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    return-object v0
.end method

.method public getDeskPanelViewNotificationPreview()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    return-object v0
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getNextState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNextState:I

    return v0
.end method

.method public getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSwipeHelper:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;

    return-object v0
.end method

.method public init(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAll:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->init(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    invoke-virtual {v0, p2, p4, p5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->init(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-virtual {v0, p2, p4, p5, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->init(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v0, p2, p4, p5, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->init(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSwipeHelper:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->initViewHierarchyChangeListener()V

    return-void
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentAllState()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentState:I

    const/16 v1, 0x6004

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentHeadsUpState()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentState:I

    const/16 v1, 0x6002

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentNoneState()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentState:I

    const/16 v1, 0x6001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentPreviewState()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentState:I

    const/16 v1, 0x6003

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentSingleState()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentHeadsUpState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentPreviewState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCurrentUnknownState()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentState:I

    const/16 v1, 0x6000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeskPanelViewNotificationAllVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentAllState()Z

    move-result v0

    return v0
.end method

.method public isDeskPanelViewNotificationHeadsUpVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentHeadsUpState()Z

    move-result v0

    return v0
.end method

.method public isDeskPanelViewNotificationPreviewVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentPreviewState()Z

    move-result v0

    return v0
.end method

.method public isNextAllState()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNextState:I

    const/16 v1, 0x6004

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNextHeadsUpState()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNextState:I

    const/16 v1, 0x6002

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNextNoneState()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNextState:I

    const/16 v1, 0x6001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNextPreviewState()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNextState:I

    const/16 v1, 0x6003

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNextSingleState()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextHeadsUpState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextPreviewState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNextUnknownState()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNextState:I

    const/16 v1, 0x6000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThisNotificationPreview(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->isThisNotificationPreview(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_taskbar_desk_DeskPanelViewNotification_43177(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->handleDeskPanelViewNotificationVisibilityChanged(Ljava/lang/String;III)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_taskbar_desk_DeskPanelViewNotification_47443()V
    .locals 2

    const-string/jumbo v0, "DeskPanelViewNotification"

    const-string/jumbo v1, "SOMETHING WRONG"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resetPhase()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_taskbar_desk_DeskPanelViewNotification_9414(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->launchNotificationSettings()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_taskbar_desk_DeskPanelViewNotification_9531(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearAllDeskNotifications()V

    return-void
.end method

.method public launchAppNotificationSnooze(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSwipeHelper:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->onDownUpdate(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuItems(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-interface {v1, p1, v3, v3, v0}, Lcom/android/systemui/SwipeHelper$LongPressListener;->onLongPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    return-void
.end method

.method public notifyDeskPanelPositionChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mPosition:I

    return-void
.end method

.method public notifyDeskPanelViewNotificationVisibilityChanged(Ljava/lang/String;III)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mVisibilityChangedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mVisibilityChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mVisibilityChangedRunnable:Ljava/lang/Runnable;

    :cond_0
    const/16 v0, 0x8

    if-ne p4, v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentAllState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resetExpandableNotificationRowState(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->changeDeskPanelViewNotificationPositionX()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->collapseAllGroups()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getVisualStabilityManager()Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setPanelExpanded(Z)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$3;

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$3;-><init>(IIILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mVisibilityChangedRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mVisibilityChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentPreviewState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resetExpandableNotificationRowState(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentHeadsUpState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resetExpandableNotificationRowState(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->handleDeskPanelViewNotificationVisibilityChanged(Ljava/lang/String;III)V

    if-nez p4, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isDeskPanelViewNotificationHeadsUpVisible()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getVisualStabilityManager()Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setPanelExpanded(Z)V

    :cond_5
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;F)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->resetMenu()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    instance-of v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->cancelFadeAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->onTranslationUpdate(F)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onDeskStatusBarIconMouseLeftClick(Ljava/lang/String;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsSwitching:Z

    if-nez v0, :cond_0

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewPreviewMargin:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentPreviewState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->isThisNotificationPreview(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->handleDeskStatusBarIconMouseLeftClick(ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->handleDeskStatusBarIconMouseLeftClick(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0157

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAll:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    const v0, 0x7f0a0158

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    const v0, 0x7f0a015c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    const v0, 0x7f0a015d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    const v0, 0x7f0a015b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setHeaderView()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setBottomBarView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAll:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNotificationPanelBackground(Landroid/view/ViewGroup;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNotificationPanelBackground(Landroid/view/ViewGroup;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNotificationPanelBackground(Landroid/view/ViewGroup;I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->loadDimens()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->updateButtons()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->updateShowButtonBackground()V

    return-void
.end method

.method public onGroupCreatedFromChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestNotificationUpdate()V

    :cond_0
    return-void
.end method

.method public onGroupExpansionChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChildrenExpanded(ZZ)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resizePanelHeight(Landroid/view/View;)V

    return-void
.end method

.method public onGroupsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestNotificationUpdate()V

    :cond_0
    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mToShowHeadsUpNotificationKey:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentHeadsUpState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    const/16 v1, 0x6001

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchStart(ILjava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    goto :goto_0
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isHeadsUpRemoteInputActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resizePanelHeight(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->setPanelFocusable(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isDeskPanelViewNotificationArea(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->setPanelFocusable(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSwipeHelper:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSwipeHelper:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseAll(Z)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setMeasuredDimension(II)V

    return-void
.end method

.method public onMenuClicked(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    :cond_1
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/SecNotificationInfo;

    if-eqz v2, :cond_4

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SecNotificationInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getSettingClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v0, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SecNotificationInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getSettingClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/systemui/SwipeHelper$LongPressListener;->onLongPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    goto :goto_0
.end method

.method public onMenuReset(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mTranslatingParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mTranslatingParentView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mMenuExposedView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mTranslatingParentView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onMenuShown(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mTranslatingParentView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mMenuExposedView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->onDragCancelled(Landroid/view/View;)V

    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSwipeHelper:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSwipeHelper:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return v3

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->isTaskBarArea(FF)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isHeadsUpRemoteInputActive()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentAllState()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentPreviewState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseAll(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public removeNotification(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentSingleView(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseAll(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->removeNotificationView(Landroid/view/View;)Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resizePanelHeight(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public removeOnlyOneDeskNotificationAnimation(Landroid/view/View;Ljava/lang/Runnable;I)V
    .locals 25

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->cancelAnimation()V

    move-object/from16 v16, p1

    check-cast v16, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v21

    if-nez v21, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentAllState()Z

    move-result v21

    if-eqz v21, :cond_3

    :cond_0
    :goto_0
    const-string/jumbo v21, "alpha"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-wide/16 v22, 0x96

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    if-lez p3, :cond_1

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v15, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v19, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getCurrentStateDeskPanelViewNotification()Landroid/view/ViewGroup;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getCurrentStateDeskPanelViewNotification()Landroid/view/ViewGroup;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v21

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v21, v0

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v21

    if-eqz v21, :cond_7

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_7

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_7

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v11, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    const/4 v11, 0x1

    :cond_2
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getCurrentStateDeskPanelViewNotification()Landroid/view/ViewGroup;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    if-eqz v11, :cond_2

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v21

    add-int/lit8 v22, v13, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentHeadsUpState()Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->getCurrentStackScrollState()Lcom/android/systemui/statusbar/stack/StackScrollState;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v20

    :goto_4
    sget-object v21, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v23

    const/16 v24, 0x0

    aput v23, v22, v24

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    move/from16 v23, v0

    const/16 v24, 0x1

    aput v23, v22, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v7, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v22, 0x12c

    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v18, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct/range {v18 .. v18}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getDivider(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    sget-object v21, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v23

    const/16 v24, 0x0

    aput v23, v22, v24

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    move/from16 v23, v0

    const/16 v24, 0x1

    aput v23, v22, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v6, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v22, 0x12c

    move-wide/from16 v0, v22

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v9, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentPreviewState()Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getCurrentStackScrollState()Lcom/android/systemui/statusbar/stack/StackScrollState;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v20

    goto/16 :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->getCurrentStackScrollState()Lcom/android/systemui/statusbar/stack/StackScrollState;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v20

    goto/16 :goto_4

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_8
    new-instance v21, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$4;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Ljava/lang/Runnable;)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public reset()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resetPhase()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->applyNotification()I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->applyNotification()I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->applyNotification()I

    return-void
.end method

.method public resetExposedMenuView(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSwipeHelper:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSwipeHelper:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    :cond_0
    return-void
.end method

.method public resizePanelHeight(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAll:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAll:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->getVisibility()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAll:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAll:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->getVisibility()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationHeadsUp:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getVisibility()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationPreview:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setVisibility(I)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public setClearAllEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mClearAllButton:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method public setCurrentDisplaySize(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentDisplaySize:Landroid/graphics/Point;

    return-void
.end method

.method public setCurrentState(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentState:I

    return-void
.end method

.method public setHeaderView()V
    .locals 3

    const v1, 0x7f0a015a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080143

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSwipeHelper:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSwipeHelper:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    return-void
.end method

.method public setNextState(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNextState:I

    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 7

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnKeyguard(Z)V

    :cond_0
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnKeyguard(Z)V

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setStatusBarState(IZ)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShouldShowDeskPanelViews:Z

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBarState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBarState:I

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseAll(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->reset()V

    :cond_0
    return-void
.end method

.method public toggleDeskPanelViewNotificationAll(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentAllState()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x6001

    :goto_0
    const/16 v1, 0x6004

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Landroid/widget/ScrollView;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_0
    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->switchStart(ILjava/lang/String;Z)V

    return-void

    :cond_1
    const/16 v0, 0x6004

    goto :goto_0
.end method

.method public updateNotification(Landroid/view/View;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanelViewNotificationAllArea:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    if-eqz v2, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentHeadsUpState()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isHeadsUpRemoteInputActive()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentSingleView(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShouldShowDeskPanelViews:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->showHeadsUpNotification(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
