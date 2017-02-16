.class public Lcom/sec/android/cover/clearcover/ClearCoverPage;
.super Landroid/widget/FrameLayout;
.source "ClearCoverPage.java"

# interfaces
.implements Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/ClearCoverPage$1;,
        Lcom/sec/android/cover/clearcover/ClearCoverPage$2;,
        Lcom/sec/android/cover/clearcover/ClearCoverPage$3;,
        Lcom/sec/android/cover/clearcover/ClearCoverPage$ExpandRunnable;,
        Lcom/sec/android/cover/clearcover/ClearCoverPage$NotificationIconClickListener;,
        Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;
    }
.end annotation


# static fields
.field private static final synthetic -com-sec-android-cover-clearcover-ClearCoverPage$PopupTypeSwitchesValues:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private WALLPAPER_COLOR_BLACK:I

.field private WALLPAPER_COLOR_BLUE:I

.field private WALLPAPER_COLOR_GOLD:I

.field private WALLPAPER_COLOR_GREEN:I

.field private WALLPAPER_COLOR_REAL_BLACK:I

.field private WALLPAPER_COLOR_SILVER:I

.field protected mBackgroundView:Landroid/view/View;

.field private mClickedNotification:Landroid/service/notification/StatusBarNotification;

.field private mClockWidget:Landroid/view/View;

.field protected mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mDualClockWidget:Landroid/view/View;

.field private mExpandNotificationDelay:I

.field private mExpandNotifications:Z

.field private mGroupSBN:Landroid/service/notification/StatusBarNotification;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

.field private mNotificationContainer:Landroid/view/ViewGroup;

.field private mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mRemoteViewContainerStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/cover/widget/RemoteViewContainerView;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/clearcover/ClearCoverPage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/clearcover/ClearCoverPage;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/clearcover/ClearCoverPage;)Lcom/sec/android/cover/widget/RemoteViewContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    return-object v0
.end method

.method private static synthetic -getcom-sec-android-cover-clearcover-ClearCoverPage$PopupTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-com-sec-android-cover-clearcover-ClearCoverPage$PopupTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-com-sec-android-cover-clearcover-ClearCoverPage$PopupTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->values()[Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->OPEN_COVER_BY_SECURITY:Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->OPEN_COVER_NOTIFICATIONS:Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->OPEN_COVER_TO_VIEW_CALL:Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->OPEN_COVER_TO_VIEW_MESSAGE:Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-com-sec-android-cover-clearcover-ClearCoverPage$PopupTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClickedNotification:Landroid/service/notification/StatusBarNotification;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sec/android/cover/clearcover/ClearCoverPage;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mExpandNotificationDelay:I

    return p1
.end method

.method static synthetic -set2(Lcom/sec/android/cover/clearcover/ClearCoverPage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mExpandNotifications:Z

    return p1
.end method

.method static synthetic -set3(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mGroupSBN:Landroid/service/notification/StatusBarNotification;

    return-object p1
.end method

.method static synthetic -set4(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setClockVisibility()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/clearcover/ClearCoverPage;Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->showCoverOpenPopup(Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->updateNotifications()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sec/android/cover/clearcover/ClearCoverPage;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->updateRemoteViewContainerVisibility(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mBackgroundView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClickedNotification:Landroid/service/notification/StatusBarNotification;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mExpandNotifications:Z

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mGroupSBN:Landroid/service/notification/StatusBarNotification;

    const/16 v0, 0x578

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mExpandNotificationDelay:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage$1;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage$2;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverPage$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage$3;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->initializeColors()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method private getAppGroupNotifications([Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/service/notification/StatusBarNotification;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getAppGroupNotifications()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getApplicatioName(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, ""

    const/16 v3, 0x2200

    :try_start_0
    invoke-virtual {p2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Name not found for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getGroupNotificationsSummaries([Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/service/notification/StatusBarNotification;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    invoke-direct {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->isValidNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private getNotificationIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/drawable/Icon;
    .locals 2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method private getParentIconMap([Landroid/service/notification/StatusBarNotification;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Icon;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method private gotoOpenPage()V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->isShowingPopupDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendNotificationPendingIntentOpen(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "CS03"

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->reportContextualSurvey(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mPendingIntent:Landroid/app/PendingIntent;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClickedNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClickedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendNotificationPendingIntentOpen(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "CS03"

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->reportContextualSurvey(Landroid/content/Context;Ljava/lang/String;)V

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClickedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->cancelNotification(Ljava/lang/String;)V

    :cond_2
    iput-object v6, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClickedNotification:Landroid/service/notification/StatusBarNotification;

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mExpandNotifications:Z

    if-eqz v1, :cond_4

    iput-boolean v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mExpandNotifications:Z

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/cover/clearcover/ClearCoverPage$ExpandRunnable;

    invoke-direct {v2, p0, v6}, Lcom/sec/android/cover/clearcover/ClearCoverPage$ExpandRunnable;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/service/notification/StatusBarNotification;)V

    iget v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mExpandNotificationDelay:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mGroupSBN:Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/cover/clearcover/ClearCoverPage$ExpandRunnable;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mGroupSBN:Landroid/service/notification/StatusBarNotification;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/cover/clearcover/ClearCoverPage$ExpandRunnable;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/service/notification/StatusBarNotification;)V

    iget v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mExpandNotificationDelay:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object v6, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mGroupSBN:Landroid/service/notification/StatusBarNotification;

    goto :goto_0
.end method

.method private initializeColors()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_silver:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_SILVER:I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_black:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_BLACK:I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_blue:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_BLUE:I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_green:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_GREEN:I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_gold:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_GOLD:I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_hero_color_black:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_REAL_BLACK:I

    return-void
.end method

.method private initializeNotifications()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x4

    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "initializeNotifications()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/sec/android/sviewcover/R$id;->stub_notifications:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationContainer:Landroid/view/ViewGroup;

    :cond_0
    new-array v3, v5, [Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    iput-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    sget v3, Lcom/sec/android/sviewcover/R$layout;->clear_cover_notification_item:I

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    aput-object v3, v4, v0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    aget-object v3, v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v3

    new-instance v4, Lcom/sec/android/cover/clearcover/ClearCoverPage$4;

    invoke-direct {v4, p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage$4;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->setCoverNotificationListener(Lcom/sec/android/cover/monitor/CoverNotificationMonitor$CoverNotificationListener;)V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->updateNotifications()V

    return-void
.end method

.method private isCoverOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlayingCurrentRemoteView()Z
    .locals 6

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getRemoteViewType()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIsPlaying:Z

    :goto_0
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPlayingCurrentRemoteView() currentType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isPlaying = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isValidNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v3, 0x96

    if-lt v2, v3, :cond_1

    const/16 v3, 0xa0

    if-gt v2, v3, :cond_1

    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Showing Secure folder noti on owner user"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Skiping notification with invalid icon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    if-eq v2, v0, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Skiping notification from other user"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private requestRemoteViews()V
    .locals 3

    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestRemoteViews : Requesting latest remote views to apps.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setBackgroundColor()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->isCoverOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setBackgroundColor() return : cover open"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mBackgroundView:Landroid/view/View;

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setBackgroundColor() return : mBackgroundView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string/jumbo v3, "s_view_cover_skin_color"

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    sget-boolean v2, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_COLORED_CLEARCOVER_BG:Z

    if-eqz v2, :cond_2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_SILVER:I

    :goto_0
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBackgroundColor() currentCoverColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", backgroundColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :pswitch_1
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_SILVER:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_BLACK:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_BLUE:I

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_GREEN:I

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_GOLD:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_REAL_BLACK:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private setClockVisibility()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string/jumbo v3, "dualclock_menu_settings"

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v1

    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setClockVisibility : isDualClock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isRoaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClockWidget:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClockWidget:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private showCoverOpenPopup(Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;)V
    .locals 4

    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showCoverOpenPopup() type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-getcom-sec-android-cover-clearcover-ClearCoverPage$PopupTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_missed_event_secured_popup:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_for_detail_message:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_for_detail_call:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_view_notification_details:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateNotifications()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationContainer:Landroid/view/ViewGroup;

    if-nez v14, :cond_3

    :cond_0
    sget-object v15, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateNotifications(): notifications == null: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-nez v10, :cond_1

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v16, "mNotificationContainer == null: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationContainer:Landroid/view/ViewGroup;

    if-nez v14, :cond_2

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v14

    const-string/jumbo v15, "lock_screen_show_notifications"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getSecureInt(Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_5

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/sec/android/cover/CoverUtils;->isUsimDownloadTopActivity(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_4
    sget-object v14, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "updateNotifications(): Notifications disabled on lockscreen"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationContainer:Landroid/view/ViewGroup;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getAppGroupNotifications([Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getGroupNotificationsSummaries([Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getParentIconMap([Landroid/service/notification/StatusBarNotification;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationContainer:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v2, 0x0

    const/4 v14, 0x0

    array-length v15, v10

    :goto_3
    if-ge v14, v15, :cond_d

    aget-object v12, v10, v14

    sget-object v16, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Processing notification: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v16

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->isLockScreenEnabledPkg(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->isValidNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v16

    if-nez v16, :cond_8

    :cond_7
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_9

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    :cond_9
    add-int/lit8 v2, v2, 0x1

    const/16 v16, 0x4

    move/from16 v0, v16

    if-gt v2, v0, :cond_7

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Icon;

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    move-object/from16 v16, v0

    add-int/lit8 v17, v2, -0x1

    aget-object v16, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    move-object/from16 v16, v0

    add-int/lit8 v17, v2, -0x1

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setIcon(Landroid/graphics/drawable/Icon;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    move-object/from16 v16, v0

    add-int/lit8 v17, v2, -0x1

    aget-object v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/sec/android/sviewcover/R$string;->minimized_notification_talkback_description_open:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v11}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getApplicatioName(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    move-object/from16 v16, v0

    add-int/lit8 v17, v2, -0x1

    aget-object v16, v16, v17

    new-instance v17, Lcom/sec/android/cover/clearcover/ClearCoverPage$NotificationIconClickListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/sec/android/cover/clearcover/ClearCoverPage$NotificationIconClickListener;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_a
    sget-object v16, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Notification for group "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " is not "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getNotificationIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    move-object/from16 v16, v0

    add-int/lit8 v17, v2, -0x1

    aget-object v16, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_d
    const/4 v14, 0x4

    if-le v2, v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    const/4 v15, 0x3

    aget-object v14, v14, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v2, -0x3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    const/4 v15, 0x3

    aget-object v14, v14, v15

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    const/4 v15, 0x3

    aget-object v14, v14, v15

    new-instance v15, Lcom/sec/android/cover/clearcover/ClearCoverPage$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage$5;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V

    invoke-virtual {v14, v15}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    const/4 v15, 0x3

    aget-object v14, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/sec/android/sviewcover/R$string;->minimized_notification_talkback_description_open_more:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_e
    return-void

    :cond_f
    move v5, v2

    :goto_6
    const/4 v14, 0x4

    if-ge v5, v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    aget-object v14, v14, v5

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setVisibility(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6
.end method

.method private updateRemoteViewContainerVisibility(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateRemoteViewContainerVisibility()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    const/4 v0, 0x0

    const-string/jumbo v3, "voice_recorder"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "return : container is null, type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v3, "video_controller"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    goto :goto_0

    :cond_2
    iget-boolean v3, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIsPlaying:Z

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->isPlayingCurrentRemoteView()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v4, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "return : current remote view is playing("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getRemoteViewType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->isCurentlyPlaying()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "return : MusicPlayer is playing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3, v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "return : top container and latest container are same"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    :cond_6
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v3, v5}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    invoke-virtual {v0, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected getPackageManagerForUser(I)Landroid/content/pm/PackageManager;
    .locals 6

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverEvent :  coverSwitchState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " coverType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " coverColor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->gotoOpenPage()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setBackgroundColor()V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->updateNotifications()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setVisibility(I)V

    sget v0, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClockWidget:Landroid/view/View;

    sget v0, Lcom/sec/android/sviewcover/R$id;->dual_clock_time_and_date:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mDualClockWidget:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClockWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClockWidget:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mDualClockWidget:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_sound_warning_remoteview_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    :cond_2
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_voice_recorder_remoteview_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string/jumbo v1, "voice_recorder"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    :cond_3
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_video_remoteview_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string/jumbo v1, "video_controller"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    :cond_4
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_music_widget:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->setOnPlaybackStateChangedListener(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;)V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->initializeNotifications()V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setClockVisibility()V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->requestRemoteViews()V

    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setMetadata(Landroid/media/MediaMetadata;)V

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 4

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    :cond_2
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v1, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSessionDestroyed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->clear()V

    :cond_0
    return-void
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mBackgroundView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setBackgroundColor()V

    return-void
.end method
