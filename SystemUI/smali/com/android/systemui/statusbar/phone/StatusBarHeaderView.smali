.class public Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
.super Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;
.source "StatusBarHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;,
        Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;
    }
.end annotation


# instance fields
.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mAlarmShowing:Z

.field private mAlarmStatus:Landroid/widget/TextView;

.field private mAllowExpand:Z

.field private mAmPm:Landroid/widget/TextView;

.field private mAvatarCollapsedScaleFactor:F

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mCaptureValues:Z

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClock:Landroid/view/View;

.field private mClockCollapsedScaleFactor:F

.field private mClockCollapsedSize:I

.field private mClockExpandedSize:I

.field private mClockMarginBottomCollapsed:I

.field private mClockMarginBottomExpanded:I

.field private mCollapsedHeight:I

.field private final mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mCurrentT:F

.field private final mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mDateCollapsed:Landroid/widget/TextView;

.field private mDateExpanded:Landroid/widget/TextView;

.field private mDateGroup:Landroid/view/View;

.field private mDetailTransitioning:Z

.field private mEmergencyCallsOnly:Landroid/widget/TextView;

.field private mExpanded:Z

.field private mExpandedHeight:I

.field private final mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mListening:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserCollapsedMargin:I

.field private mMultiUserExpandedMargin:I

.field private mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mMultiUserSwitchWidthCollapsed:I

.field private mMultiUserSwitchWidthExpanded:I

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsDetailHeader:Landroid/view/View;

.field private mQsDetailHeaderProgress:Landroid/widget/ImageView;

.field private mQsDetailHeaderSwitch:Landroid/widget/Switch;

.field private mQsDetailHeaderTitle:Landroid/widget/TextView;

.field private final mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

.field private mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field private mSettingsContainer:Landroid/view/View;

.field private mShowEmergencyCallsOnly:Z

.field private mShowingDetail:Z

.field private mSignalCluster:Landroid/view/View;

.field private mSignalClusterDetached:Z

.field private mSystemIcons:Landroid/widget/LinearLayout;

.field private mSystemIconsContainer:Landroid/view/ViewGroup;

.field private mSystemIconsSuperContainer:Landroid/view/View;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDetailTransitioning:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipping(F)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->startSettingsActivity()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAllowExpand:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    return-void
.end method

.method private applyAlpha(Landroid/view/View;F)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private applyLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->clockY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarX:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsTranslation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsRotation:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->setRotation(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->emergencyCallsOnlyAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDetailTransitioning:Z

    if-eqz v0, :cond_7

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateCollapsedAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateExpandedAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryLevelAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->signalClusterAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setScaleY(F)V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->alarmStatusAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    goto :goto_3
.end method

.method private captureLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V
    .locals 5

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->clockY:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->emergencyCallsOnlyAlpha:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->alarmStatusAlpha:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateCollapsedAlpha:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateExpandedAlpha:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLeft()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarX:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getTop()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarY:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryY:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryLevelAlpha:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsAlpha:F

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsTranslation:F

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    if-eqz v0, :cond_0

    move v1, v3

    :cond_0
    iput v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->signalClusterAlpha:F

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v0, :cond_1

    const/high16 v3, 0x42b40000    # 90.0f

    :cond_1
    iput v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsRotation:F

    return-void

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLeft()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_2
.end method

.method private getAlphaForVisibility(Landroid/view/View;)F
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDimens()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0286

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserExpandedMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0287

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserCollapsedMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d028c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomExpanded:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockCollapsedMargin()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d028f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthCollapsed:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0290

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthExpanded:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0292

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAvatarCollapsedScaleFactor:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0295

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0296

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    return-void
.end method

.method private reattachSignalCluster()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private requestCaptureValues()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestLayout()V

    return-void
.end method

.method private setClipping(F)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    float-to-int v3, p1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->invalidateOutline()V

    return-void
.end method

.method private startBatteryActivity()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private startSettingsActivity()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private updateAmPmTranslation()V
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    mul-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScaleX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private updateAvatarScale()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAvatarCollapsedScaleFactor:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAvatarCollapsedScaleFactor:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0
.end method

.method private updateClickTargets()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method private updateClockCollapsedMargin()V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d028d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v4, 0x7f0d028e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    const v5, 0x3fa66666    # 1.3f

    invoke-static {v4, v6, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    sub-float/2addr v4, v6

    const v5, 0x3e999998    # 0.29999995f

    div-float v0, v4, v5

    sub-float v4, v6, v0

    int-to-float v5, v2

    mul-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomCollapsed:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestLayout()V

    return-void
.end method

.method private updateClockLp()V
    .locals 3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomExpanded:I

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-eq v1, v2, :cond_0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomCollapsed:I

    goto :goto_0
.end method

.method private updateClockScale()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    :goto_0
    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setScaleY(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    goto :goto_0
.end method

.method private updateHeights()V
    .locals 3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v0, :cond_0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    goto :goto_0
.end method

.method private updateLayoutValues(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->interpoloate(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    return-void
.end method

.method private updateListeners()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    goto :goto_0
.end method

.method private updateMultiUserSwitch()V
    .locals 4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v3, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserExpandedMargin:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthExpanded:I

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    if-ne v1, v3, :cond_0

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v3, v2, :cond_1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserCollapsedMargin:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthCollapsed:I

    goto :goto_0
.end method

.method private updateSignalClusterDetachment()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->reattachSignalCluster()V

    goto :goto_0
.end method

.method private updateSystemIconsLayoutParams()V
    .locals 4

    const/16 v3, 0x10

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    aget v2, v2, v3

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getId()I

    move-result v1

    goto :goto_0
.end method

.method private updateVisibilities()V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsContainer:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateSignalClusterDetachment()V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowEmergencyCallsOnly:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v4, :cond_1

    move v3, v1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsContainer:Landroid/view/View;

    const v3, 0x7f130309

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v3

    goto :goto_5

    :cond_8
    move v1, v2

    goto :goto_6
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public getCollapsedHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    return v0
.end method

.method public onBatteryLevelChanged(IZZIIIIZ)V
    .locals 6

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->isTunerClick()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    invoke-static {v1, v2}, Lcom/android/systemui/tuner/TunerService;->showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->startSettingsActivity()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f050b

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/systemui/tuner/TunerService;->setTunerEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    if-ne p1, v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->startBatteryActivity()V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const v5, 0x7f0d0296

    const v4, 0x7f0d0295

    const v3, 0x7f0d0218

    const v2, 0x7f0d0298

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    const v1, 0x7f0d02ad

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    const v1, 0x7f0d0297

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    const v0, 0x1020016

    invoke-static {p0, v0, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v0, 0x1020017

    invoke-static {p0, v0, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    const v0, 0x7f1303b3

    invoke-static {p0, v0, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    const v1, 0x10402b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockScale()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockCollapsedMargin()V

    return-void
.end method

.method public onEmergencyModeChanged()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onFinishInflate()V

    const v0, 0x7f1301cf

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    const v0, 0x7f1301d0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1303cb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    const v0, 0x7f1301ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    const v0, 0x7f1303b1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    const v0, 0x7f1303b2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    const v0, 0x7f1301cd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v0, 0x7f1301ce

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    const v0, 0x7f1303cc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    const v0, 0x7f1303cd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    const v0, 0x7f130308

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const v0, 0x7f130307

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1302be

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    const v0, 0x7f130310

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    const v0, 0x7f1303ca

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    const v0, 0x7f1301d1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    const v0, 0x7f1301cb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f130392

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    const v0, 0x7f1303ef

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->loadDimens()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateVisibilities()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockScale()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAvatarScale()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->captureLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentT:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateLayoutValues(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->captureLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    goto :goto_0
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/keyguard/KeyguardStatusView;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    return-void
.end method

.method public setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V
    .locals 0

    return-void
.end method

.method public setEmergencyCallsOnly(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowEmergencyCallsOnly:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowEmergencyCallsOnly:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAllowExpand:Z

    if-nez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eq p1, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpansion(F)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentT:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v0, v1

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    int-to-float v0, v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipping(F)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateLayoutValues(F)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateListeners()V

    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateEverything()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateHeights()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateVisibilities()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateSystemIconsLayoutParams()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClickTargets()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateMultiUserSwitch()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockScale()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAvatarScale()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockLp()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    return-void
.end method
