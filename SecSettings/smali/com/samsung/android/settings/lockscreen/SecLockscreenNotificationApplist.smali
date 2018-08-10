.class public Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecLockscreenNotificationApplist.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$1;,
        Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;,
        Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final REMOVED_LOCK_NONE_PREFERENCE_KEYS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field guideView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDescriptionPref:Lcom/samsung/android/settings/UnclickablePreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmptyView:Landroid/widget/TextView;

.field private mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private final mLockNotiCardOpacity:Landroid/database/ContentObserver;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

.field private mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

.field private mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

.field private mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

.field private mNoticardBackgroundHeight:I

.field private mShowNotiFrom:Landroid/support/v7/preference/SecPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWhereToShow:Lcom/android/settings/SecDropDownPreference;

.field notiCardLayout:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->updateNotiCardOpacity()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const-string/jumbo v0, "SecLockNotiApplist"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->DEBUG:Z

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "set_visibility"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "lockscreen_category"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "notification_icons_only"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "noti_card_seekbar"

    aput-object v1, v0, v3

    const-string/jumbo v1, "noti_inverse_text"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->REMOVED_LOCK_NONE_PREFERENCE_KEYS:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$1;-><init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockNotiCardOpacity:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;-><init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addHeaderNotificationCardView()V
    .locals 3

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v1, Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/NotificationTemplateView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    const v1, 0x7f0d0187

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->guideView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getNoticardViewMeasuredHeight(Lcom/android/internal/widget/NotificationTemplateView;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNoticardBackgroundHeight:I

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->guideView:Landroid/view/View;

    const v2, 0x7f0a05cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->notiCardLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->notiCardLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->notiCardLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenWallpaperImg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->notiCardLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNoticardBackgroundHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->updateNotiCardOpacity()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->guideView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->setPinnedHeaderView(Landroid/view/View;)V

    return-void
.end method

.method private applyEmptyView()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmptyView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmptyView:Landroid/widget/TextView;

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmptyView:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f1302fe

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070140

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmptyView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmptyView:Landroid/widget/TextView;

    const v4, 0x7f1210aa

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmptyView:Landroid/widget/TextView;

    const v4, 0x7f120fe9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenWallpaperImg()Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/WallpaperManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v3

    :cond_0
    return-object v5
.end method

.method private getNoticardViewMeasuredHeight(Lcom/android/internal/widget/NotificationTemplateView;)I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Lcom/android/internal/widget/NotificationTemplateView;->measure(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070550

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/widget/NotificationTemplateView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private initWhereToShowPreference()V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v2, "where_to_show"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SecDropDownPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    const-string/jumbo v4, "0"

    aput-object v4, v3, v6

    const-string/jumbo v4, "1"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "2"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_notifications_option"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    new-instance v3, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;-><init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;[Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method private refreshNoticardLayout()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->notiCardLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->notiCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->notiCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "white_lockscreen_wallpaper"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/NotificationTemplateView;->setIsWhiteWallpaper(Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getDisplayWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateNotiCardOpacity()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_noticard_opacity"

    const/16 v4, 0x2d

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v1, v2, v3

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/NotificationTemplateView;->setViewOpacity(F)V

    :cond_0
    return-void
.end method

.method private updateNotificationsPref()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string/jumbo v2, "unclickable_pref"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/UnclickablePreference;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mDescriptionPref:Lcom/samsung/android/settings/UnclickablePreference;

    const-string/jumbo v2, "set_visibility"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    const-string/jumbo v2, "notification_icons_only"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v2, "show_notifications_from"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mShowNotiFrom:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v2, "noti_card_seekbar"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    const-string/jumbo v2, "noti_inverse_text"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.app.aodservice"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mDescriptionPref:Lcom/samsung/android/settings/UnclickablePreference;

    const v3, 0x7f1210a6

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(I)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    if-nez v2, :cond_1

    const-string/jumbo v2, "SecLockNotiApplist"

    const-string/jumbo v3, "Preference not found: set_visibility"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mShowNotiFrom:Landroid/support/v7/preference/SecPreference;

    new-instance v3, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$4;-><init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_2

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method private updatePrefStateWhenLockTypeNone()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mDescriptionPref:Lcom/samsung/android/settings/UnclickablePreference;

    const v3, 0x7f1210a5

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->setVisibilityPinnedHeaderView(Z)V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->REMOVED_LOCK_NONE_PREFERENCE_KEYS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->REMOVED_LOCK_NONE_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    move-object v3, p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getDisplayWidth()I

    move-result v0

    if-ge v5, v0, :cond_0

    int-to-float v6, v0

    int-to-float v7, v5

    div-float v4, v6, v7

    int-to-float v6, v2

    mul-float/2addr v6, v4

    float-to-int v2, v6

    move v5, v0

    const/4 v6, 0x1

    invoke-static {p1, v0, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_0
    :try_start_0
    iget v6, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNoticardBackgroundHeight:I

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNoticardBackgroundHeight:I

    const/4 v8, 0x0

    invoke-static {v3, v8, v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eq v3, p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string/jumbo v6, "SecLockNotiApplist"

    const-string/jumbo v7, "IllegalArgumentException from cropBitmap"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public executeBixby()V
    .locals 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NotificationsOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Notifications"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Notifications"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Notifications"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Notifications"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "NotificationsOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Notifications"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Notifications"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Notifications"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Notifications"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "HideContentOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HideContent"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Notifications"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HideContent"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Notifications"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "HideContentOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HideContent"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Notifications"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HideContent"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Notifications"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v1, "NotificationIconsOnlyOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "NotificationIconsOnly"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Notifications"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "NotificationIconsOnly"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Notifications"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v1, "NotificationIconsOnlyOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "NotificationIconsOnly"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Notifications"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "NotificationIconsOnly"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Notifications"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v1, "ShowNotificationsFrom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mShowNotiFrom:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method

.method public getDisplayWidth()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2

    :cond_1
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x114c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string/jumbo v1, "SecLockNotiApplist"

    const-string/jumbo v2, "onActivityCreated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->addHeaderNotificationCardView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->applyEmptyView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500d6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "SecLockNotiApplist"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWallpaperManager:Landroid/app/WallpaperManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->updateNotificationsPref()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->initWhereToShowPreference()V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "NotificationsOntheLockscreen"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockNotiCardOpacity:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "lock_screen_allow_private_notifications"

    if-nez v0, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b037c

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-eqz v0, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const-string/jumbo v1, ""

    if-eqz v0, :cond_4

    const-string/jumbo v2, "hide_contents"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    sget-boolean v2, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "VLST"

    invoke-static {v2, v5, v6, v1}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    :cond_1
    :goto_3
    return v4

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "show_content"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "lockscreen_minimizing_notification"

    if-eqz v0, :cond_7

    move v2, v3

    :goto_4
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b037e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-eqz v0, :cond_8

    move v2, v3

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_7
    move v2, v4

    goto :goto_4

    :cond_8
    move v2, v4

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    :goto_6
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    goto :goto_6

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "notification_text_color_inversion"

    if-eqz v0, :cond_c

    move v2, v3

    :goto_7
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0377

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_d

    :goto_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->updateSeekBarDescVisible()V

    goto/16 :goto_3

    :cond_c
    move v2, v4

    goto :goto_7

    :cond_d
    move v3, v4

    goto :goto_8
.end method

.method public onResume()V
    .locals 10

    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "lock_noticard_opacity"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockNotiCardOpacity:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v5, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->refreshNoticardLayout()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->updatePrefStateWhenLockTypeNone()V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->finish()V

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenAllowPrivateNotifications()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "lockscreen_minimizing_notification"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "notification_text_color_inversion"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_6

    const/4 v1, 0x1

    :goto_4
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    const/16 v6, 0xc

    invoke-static {v4, v6, v5}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v2}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    const/4 v6, 0x4

    invoke-static {v4, v6, v5}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v7, "NotificationsOntheLockscreen"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->setVisibilityPinnedHeaderView(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    move v4, v6

    goto/16 :goto_1

    :cond_3
    move v4, v6

    goto/16 :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenAllowPrivateNotifications()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lock_screen_show_notifications"

    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0380

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eqz p2, :cond_2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    if-eqz p2, :cond_3

    xor-int/lit8 v1, v0, 0x1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->setVisibilityPinnedHeaderView(Z)V

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    sget-boolean v1, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "VLST"

    const-string/jumbo v4, "do_not_show_notifications"

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
