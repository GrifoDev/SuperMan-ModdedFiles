.class public Lcom/android/systemui/qs/QuickStatusBarHeader;
.super Landroid/widget/RelativeLayout;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/qs/QSTileHost$CustomTileListCallback;
.implements Lcom/android/systemui/statusbar/NotificationData$NotificationSumCallback;


# instance fields
.field private isPopupShow:Z

.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mBadgeBackground:Landroid/widget/LinearLayout;

.field private mBadgeText:Landroid/widget/TextView;

.field private mCarrierText:Landroid/view/View;

.field private mContactUsMenu:Landroid/view/MenuItem;

.field private mDateTimeAlarmGroup:Landroid/view/ViewGroup;

.field private mDateTimeDivider:Landroid/view/View;

.field private mDateTimeGroup:Landroid/view/ViewGroup;

.field private mEdit:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mExpanded:Z

.field public mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsSupportContactUs:Z

.field private mListening:Z

.field private mMoreButton:Landroid/widget/ImageButton;

.field protected mMoreButtonAlpha:Lcom/android/systemui/qs/TouchAnimator;

.field private mMoreButtonBadge:Landroid/widget/TextView;

.field private mMoreButtonBadgeText:Ljava/lang/String;

.field private mMoreButtonContainer:Landroid/view/View;

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field protected mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mScreenGrid:Landroid/view/MenuItem;

.field private mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

.field protected mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

.field private mSettingsBadgeCount:I

.field private mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field protected mSettingsContainer:Landroid/view/View;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mTimeView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QuickStatusBarHeader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QuickStatusBarHeader;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QuickStatusBarHeader;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->isPopupShow:Z

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsValueList:[Landroid/net/Uri;

    iput v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsBadgeCount:I

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonBadgeText:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_qs_QuickStatusBarHeader_19554()V
    .locals 0

    return-void
.end method

.method private setFocusDirection()V
    .locals 4

    const v1, 0x7f0a033f

    const v3, 0x7f0a0142

    const v2, 0x7f0a04ba

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setNextFocusLeftId(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setNextFocusUpId(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method static synthetic startSettings(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->startSettingsActivity()V

    return-void
.end method

.method private startSettingsActivity()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private updateCustomTileBadgeState(Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonBadgeText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonBadge:Landroid/widget/TextView;

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-gtz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonBadge:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateQSColoringResources()V
    .locals 4

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0a0141

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v2, 0x7f0a013c

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateResources()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->createDivider()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateSettingsAnimator()V

    return-void
.end method

.method private updateSettingsBadge()V
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBadgeText:Landroid/widget/TextView;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsBadgeCount:I

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBadgeText:Landroid/widget/TextView;

    const-string/jumbo v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsBadgeCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_2
    :goto_0
    int-to-float v3, v1

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBadgeText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070072

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v0, v3

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected createDivider()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTimeView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v7}, Landroid/widget/TextView;->measure(II)V

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    int-to-float v1, v5

    const v5, 0x3f0ccccd    # 0.55f

    mul-float/2addr v5, v1

    float-to-int v0, v5

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070499

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070498

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeDivider:Landroid/view/View;

    if-eqz v5, :cond_0

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeDivider:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v7, v2, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sget-boolean v5, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07050f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeDivider:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0
.end method

.method public dismissGridPopup()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSScreenGridDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    :cond_0
    return-void
.end method

.method protected hideQSPopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->dismissGridPopup()V

    return-void
.end method

.method public isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_0

    return v4

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v1, "QuickStatusBarHeader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Installed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v1, "QuickStatusBarHeader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NOT Installed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public isSupportContactUs(Landroid/content/Context;)Z
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v0, "com.samsung.android.voc"

    const v1, 0xa220268

    const-string/jumbo v4, "com.samsung.android.voc"

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsSupportContactUs:Z

    iget-boolean v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsSupportContactUs:Z

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.android.voc"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    const v5, 0xa220268

    if-ge v4, v5, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsSupportContactUs:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsSupportContactUs:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v2

    iput-boolean v7, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsSupportContactUs:Z

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "QuickStatusBarHeader"

    const-string/jumbo v5, "not installed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method synthetic lambda$-com_android_systemui_qs_QuickStatusBarHeader_14506()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setClickable(Z)V

    return-void
.end method

.method public launchContactUsApp(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x1

    const-string/jumbo v0, "3l25p17305"

    iget-object v7, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    const v8, 0x7f1208b1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.systemui.quickpanel"

    const-string/jumbo v4, "ask"

    const-string/jumbo v6, "voc://view/contactUs"

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v7, "packageName"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "appId"

    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "appName"

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "feedbackType"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v8, 0x1

    invoke-interface {v7, v5, v8}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v9

    :catch_0
    move-exception v3

    const-string/jumbo v7, "QuickStatusBarHeader"

    const-string/jumbo v8, "do not find samsung members packcage"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x0

    return v7
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    const-class v3, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3, v4}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationData;->setNotificationSumCallback(Lcom/android/systemui/statusbar/NotificationData$NotificationSumCallback;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getNotificationSum()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->onNotificationSumChanged(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-ne p1, v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->isTunerClick()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/qs/QuickStatusBarHeader$startSettings;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$startSettings;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-static {v1, v2}, Lcom/android/systemui/tuner/TunerService;->showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    const/4 v3, 0x0

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/-$Lambda$MYFfJqf0RvM0fw4npDsNGCyRkVQ;

    invoke-direct {v1}, Lcom/android/systemui/qs/-$Lambda$MYFfJqf0RvM0fw4npDsNGCyRkVQ;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->startSettingsActivity()V

    sget-object v0, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v1, "1103"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->showQSPopupMenu()V

    sget-object v0, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v1, "2003"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v2, "string"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "tuner_toast"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/systemui/tuner/TunerService;->setTunerEnabled(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->hideQSPopupMenu()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public onCustomTileListChanged(Ljava/lang/String;I)V
    .locals 3

    const-string/jumbo v0, "QuickStatusBarHeader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomTileListChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateCustomTileBadgeState(Ljava/lang/String;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCustomTileListCallback(Lcom/android/systemui/qs/QSTileHost$CustomTileListCallback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindowInternal()V

    const-class v2, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->removeCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2, v3}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationData;->setNotificationSumCallback(Lcom/android/systemui/statusbar/NotificationData$NotificationSumCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    const v9, 0x7f0a0409

    const/16 v6, 0x8

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v7, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const v4, 0x7f05001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    const v4, 0x7f0a01fe

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f070512

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v5, v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const v4, 0x7f0a013f

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeAlarmGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeAlarmGroup:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeAlarmGroup:Landroid/view/ViewGroup;

    const v7, 0x7f0a01a3

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a0142

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setPivotY(F)V

    const v4, 0x7f0a013c

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    check-cast v4, Landroid/widget/TextView;

    sget v10, Lcom/android/mwilky/Renovate;->mHeaderDateColor:I

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const v4, 0x7f0a01ff

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCarrierText:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const v4, 0x7f0a04ba

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    sget v10, Lcom/android/mwilky/Renovate;->mHeaderSettingsIconColor:I

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v4, 0x7f0a04bb

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    const v4, 0x7f0a033f

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    sget v10, Lcom/android/mwilky/Renovate;->mHeaderMenuIconColor:I

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v4, 0x7f0a0340

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonBadge:Landroid/widget/TextView;

    const v4, 0x7f0a0341

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    :cond_2
    const v4, 0x7f0a0362

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v5, 0x7f0a0361

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMultiUserAvatar:Landroid/widget/ImageView;

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    const v4, 0x7f0a0140

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeDivider:Landroid/view/View;

    const v4, 0x7f0a0149

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v0, Landroid/view/View;

    sget v10, Lcom/android/mwilky/Renovate;->mHeaderDividerColor:I

    invoke-virtual {v4, v10}, Landroid/view/View;->setBackgroundColor(I)V

    const v4, 0x7f0a0531

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTimeView:Landroid/widget/TextView;

    sget v10, Lcom/android/mwilky/Renovate;->mHeaderClockColor:I

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    const v5, 0x7f0a0077

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    const v5, 0x7f0a0078

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBadgeText:Landroid/widget/TextView;

    const-class v4, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateSettingsAnimator()V

    new-instance v4, Lcom/android/systemui/qs/QuickStatusBarHeader$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$1;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setFocusDirection()V

    const-class v4, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v4}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateQSColoringResources()V

    :cond_4
    return-void

    :cond_5
    move v4, v6

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f070511

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto/16 :goto_1
.end method

.method public onNotificationSumChanged(I)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsBadgeCount:I

    const-string/jumbo v0, "QuickStatusBarHeader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Settings badge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsBadgeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateSettingsBadge()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRtlPropertiesChanged(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMultiUserAvatar:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateVisibilities()V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setExpanded(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateEverything()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setFocusDirection()V

    return-void
.end method

.method public setExpansion(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonAlpha:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonAlpha:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setListening(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setupHost(Lcom/android/systemui/qs/QSTileHost;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateVisibilities()V

    return-void
.end method

.method public setQSScreenGrid(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSScreenGridDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSScreenGridDialog;->setQSScreenGrid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->dismissGridPopup()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setupHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/qs/QuickQSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->addCustomTileListCallback(Lcom/android/systemui/qs/QSTileHost$CustomTileListCallback;)V

    :cond_0
    return-void
.end method

.method public showGridPopup()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/QSScreenGridDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSScreenGridDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSScreenGridDialog;->show()V

    return-void
.end method

.method public showQSPopupMenu()V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isQuickSettingEditEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    const/high16 v2, 0x7f0e0000

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0a019b

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    iput-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mEdit:Lcom/android/internal/view/menu/MenuItemImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonBadgeText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonBadgeText:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mEdit:Lcom/android/internal/view/menu/MenuItemImpl;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonBadgeText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setBadgeText(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0a0451

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mScreenGrid:Landroid/view/MenuItem;

    sget-boolean v1, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mScreenGrid:Landroid/view/MenuItem;

    goto :goto_0

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0a00f3

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContactUsMenu:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContactUsMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/android/systemui/qs/QuickStatusBarHeader$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$3;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    const v2, 0x800005

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setGravity(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public updateEverything()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/-$Lambda$MYFfJqf0RvM0fw4npDsNGCyRkVQ$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$Lambda$MYFfJqf0RvM0fw4npDsNGCyRkVQ$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->hideQSPopupMenu()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateVisibilities()V

    return-void
.end method

.method protected updateSettingsAnimator()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->isLayoutRtl()Z

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0704e3

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    if-eqz v1, :cond_0

    neg-float v2, v2

    :cond_0
    new-instance v7, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    const-string/jumbo v9, "translationX"

    new-array v10, v12, [F

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_0
    aput v4, v10, v6

    aput v5, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const-string/jumbo v7, "translationX"

    new-array v8, v12, [F

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v9

    if-eqz v9, :cond_1

    move v2, v5

    :cond_1
    aput v2, v8, v6

    aput v5, v8, v11

    invoke-virtual {v0, v4, v7, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonContainer:Landroid/view/View;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0704e5

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonContainer:Landroid/view/View;

    const-string/jumbo v8, "translationX"

    new-array v9, v12, [F

    if-eqz v1, :cond_3

    neg-float v3, v3

    :cond_3
    aput v3, v9, v6

    aput v5, v9, v11

    invoke-virtual {v4, v7, v8, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonContainer:Landroid/view/View;

    const-string/jumbo v8, "alpha"

    new-array v9, v12, [F

    aput v5, v9, v6

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v9, v11

    invoke-virtual {v4, v7, v8, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    const v5, 0x3f333333    # 0.7f

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonAlpha:Lcom/android/systemui/qs/TouchAnimator;

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    if-eqz v4, :cond_5

    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    new-instance v5, Lcom/android/systemui/qs/QuickStatusBarHeader$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$2;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    move v4, v2

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    :goto_2
    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setPivotX(F)V

    goto :goto_1

    :cond_8
    move v4, v6

    goto :goto_2
.end method

.method protected updateVisibilities()V
    .locals 9

    const/16 v7, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isUsersEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v1, v4, 0x1

    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v2

    iget-object v8, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    sget-boolean v4, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    move v4, v5

    :goto_1
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->hasMultipleUsers()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-boolean v4, Lcom/android/systemui/Rune;->QPANEL_IS_LDU_POPUP:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeskMode()Z

    move-result v4

    xor-int/lit8 v3, v4, 0x1

    :goto_2
    iget-object v8, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v3, :cond_8

    move v4, v6

    :goto_3
    invoke-virtual {v8, v4}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonContainer:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonContainer:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_1
    move v5, v7

    :cond_2
    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonBadge:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    if-nez v0, :cond_a

    iget-boolean v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonBadgeText:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonBadgeText:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_a

    const/4 v3, 0x1

    :goto_5
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMoreButtonBadge:Landroid/widget/TextView;

    if-eqz v3, :cond_b

    move v4, v6

    :goto_6
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateTimeAlarmGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCarrierText:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateSettingsBadge()V

    return-void

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    move v4, v6

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    move v4, v5

    goto :goto_3

    :cond_9
    iget-boolean v8, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v8, :cond_2

    move v5, v6

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    :cond_b
    move v4, v7

    goto :goto_6
.end method
