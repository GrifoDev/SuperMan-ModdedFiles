.class public Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;
.super Ljava/lang/Object;
.source "ServiceBoxSettingsHelper.java"


# static fields
.field public static final CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

.field private static final DEFAULT_PAGES_ORDER:[Ljava/lang/String;

.field private static final SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String;

.field private static final WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;


# instance fields
.field private mClockSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mContentObserverHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mLastPageKeyOrder:Ljava/lang/String;

.field private mLastPageOrder:Ljava/lang/String;

.field private mObserverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteViewsSettingsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

.field private mServiceBoxSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mWhiteWallpaperSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# direct methods
.method static synthetic -get0()[Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()[Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageOrder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/util/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageOrder:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->isSettingValueEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->TAG:Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "servicebox_music"

    aput-object v1, v0, v3

    const-string/jumbo v1, "servicebox_calendar"

    aput-object v1, v0, v4

    const-string/jumbo v1, "servicebox_alarm"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->DEFAULT_PAGES_ORDER:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "additional_information_val"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "add_info_music_control"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "add_info_today_schedule"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "add_info_alarm"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "lockscreen_aod_servicebox_page"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, "face_widget_order"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "lockscreen_aod_staying_music_page"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "aod_lock_music_facewidget_blacklist"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "aod_lock_music_media_key_code"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "white_cover_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "dualclock_menu_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "homecity_timezone"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "high_text_contrast_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "roaming_clock_option"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, "face_widgets_option"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "use_iris_firstlock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "face_without_swipe_to_unlock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "intelligentscan_without_swipe_to_unlock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageOrder:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageKeyOrder:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContentObserverHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;-><init>(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    :cond_0
    new-instance v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$2;-><init>(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mWhiteWallpaperSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$3;-><init>(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mClockSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method private isSettingValueEnabled(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v1, p1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public addSettingsObserver(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-boolean v2, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addSettingsObserver() key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    new-instance v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$4;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContentObserverHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2, p2, p1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$4;-><init>(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->isSettingValueEnabled(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-virtual {v2, v4, v5, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getPagesOrder()[Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxPageOrder()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPagesOrder() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->DEFAULT_PAGES_ORDER:[Ljava/lang/String;

    return-object v1

    :cond_0
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isPageEnabled(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "servicebox_clock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "servicebox_music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledServiceBoxMusicPage()Z

    move-result v0

    return v0

    :cond_1
    const-string/jumbo v0, "servicebox_calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledServiceBoxTodaysPage()Z

    move-result v0

    return v0

    :cond_2
    const-string/jumbo v0, "servicebox_alarm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledServiceBoxAlarmPage()Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public isRemoteViewsEnabled(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v6

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v3, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRemoteViewsEnabled() remoteKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", hashKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    sget-object v3, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRemoteViewsEnabled() there is no data, remoteKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public registListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mWhiteWallpaperSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v2, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v2, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mClockSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v2, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public removeSettingsObserver(Ljava/lang/String;)V
    .locals 4

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSettingsObserver() key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->removeRemoteViews(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public resetPageKeyOrder()V
    .locals 1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageOrder:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageKeyOrder:Ljava/lang/String;

    return-void
.end method

.method public saveCurrentPageKeyListForAOD(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveCurrentPageKeyListForAOD() order = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mLastPageKeyOrder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageKeyOrder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageKeyOrder:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageKeyOrder:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_lock_share_page_key_order"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public unregistListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mWhiteWallpaperSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mClockSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method
