.class public Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;
.super Ljava/lang/Object;
.source "SimpleStatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;,
        Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;
    }
.end annotation


# instance fields
.field public final NOTIFICATION_ADD:I

.field public final NOTIFICATION_CANCEL:I

.field public final NOTIFICATION_UPDATE:I

.field public final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field protected mNotificationKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mSimpleStatusBarMaxNotificationNum:I

.field private final mTimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 5

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "SimpleStatusBarIconController"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->NOTIFICATION_ADD:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->NOTIFICATION_UPDATE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->NOTIFICATION_CANCEL:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mNotificationKeyList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;-><init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;-><init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mTimeComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSimpleStatusBarMaxNotificationNum:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    new-array v2, v2, [Landroid/net/Uri;

    const-string/jumbo v3, "simple_status_bar"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method private createCueMoreIconView()Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v6, v6, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0391

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v2

    div-float v3, v4, v5

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleX(F)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleY(F)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mContext:Landroid/content/Context;

    const v5, 0x7f02056c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private getLastNotificationIcons(ILcom/android/systemui/statusbar/NotificationData;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/systemui/statusbar/NotificationData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mTimeComparator:Ljava/util/Comparator;

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v1, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lcom/android/systemui/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_2
    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_0

    :cond_3
    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldShowOnIndicator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isTopLevelChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_5
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, p1, :cond_0

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    return-object v3
.end method


# virtual methods
.method public applySimpleStatusBar(ILcom/android/systemui/statusbar/NotificationData;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/systemui/statusbar/NotificationData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSimpleStatusBarMaxNotificationNum:I

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->getLastNotificationIcons(ILcom/android/systemui/statusbar/NotificationData;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSimpleStatusBarMaxNotificationNum:I

    if-le p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->createCueMoreIconView()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public isSimpleStatusBarEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isSimpleStatusBarEnabled()Z

    move-result v0

    return v0
.end method
