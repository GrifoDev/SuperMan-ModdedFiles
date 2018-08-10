.class public Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;
.super Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
.source "KeyguardClockPage.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;,
        Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;,
        Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-servicebox-pages-clock-KeyguardClockPage$InternalClockTypeSwitchesValues:[I


# instance fields
.field private mActionDownOnClock:Z

.field private mBundleDeltaX:F

.field private mBundleDeltaY:F

.field private mBundleStartX:F

.field private mBundleStartY:F

.field private mClockHolder:Landroid/widget/FrameLayout;

.field private mClockKey:Ljava/lang/String;

.field private mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

.field private mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

.field public mClockViewPattern12:Ljava/lang/String;

.field public mClockViewPattern24:Ljava/lang/String;

.field public mDateViewPattern:Ljava/lang/String;

.field private mExpandClock:Z

.field private mExternalClockType:I

.field private mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

.field private mIsFMMLock:Z

.field private mIsNationalRoamingIgnorable:Z

.field private mIsNetworkRoaming:Z

.field private mIsRMMLock:Z

.field private mLocale:Ljava/util/Locale;

.field private mLockStarExternalClockType:I

.field private mLockStarInternalClockType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

.field private mRefreshLogCounter:I

.field private mScaleMode:I

.field private mShouldShowDefaultClock:Z

.field private mShouldShowDualClock:Z

.field private mShouldShowImageClock:Z

.field private mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

.field protected mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    return-object v0
.end method

.method private static synthetic -getcom-android-systemui-servicebox-pages-clock-KeyguardClockPage$InternalClockTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-com-android-systemui-servicebox-pages-clock-KeyguardClockPage$InternalClockTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-com-android-systemui-servicebox-pages-clock-KeyguardClockPage$InternalClockTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->values()[Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandImageSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->None:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-com-android-systemui-servicebox-pages-clock-KeyguardClockPage$InternalClockTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateClockColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->None:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsFMMLock:Z

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsRMMLock:Z

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern12:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern24:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mDateViewPattern:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockType:I

    iput v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mActionDownOnClock:Z

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;-><init>(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    :cond_0
    return-void
.end method

.method private changeHourFormat()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;->changeHourFormat()V

    :cond_0
    return-void
.end method

.method private considerChangeClockView()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method private considerChangeClockView(Z)V
    .locals 19

    const-string/jumbo v16, "KeyguardClockPage"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "considerChangeClockView() >> START >> forceReplace: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    move/from16 v16, v0

    if-eqz v16, :cond_7

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    const/4 v2, 0x1

    :goto_1
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v5

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFMMLock()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRMMEnabled()Z

    move-result v7

    if-nez v2, :cond_9

    xor-int/lit8 v16, v5, 0x1

    if-eqz v16, :cond_9

    xor-int/lit8 v16, v3, 0x1

    if-eqz v16, :cond_9

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v9

    :goto_2
    if-eqz v9, :cond_b

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isThemeClockEnabled()Z

    move-result v8

    :goto_3
    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f050034

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    :goto_4
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowImageClock:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->needToShowDualClock()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDualClock:Z

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_e

    if-nez v5, :cond_d

    if-nez v3, :cond_d

    move/from16 v16, v2

    :goto_5
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDefaultClock:Z

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_f

    move v15, v8

    :goto_6
    if-nez v2, :cond_0

    if-nez v6, :cond_10

    :cond_0
    if-eqz v2, :cond_11

    xor-int/lit8 v16, v4, 0x1

    if-eqz v16, :cond_11

    xor-int/lit8 v14, v7, 0x1

    :goto_7
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v16

    if-eqz v16, :cond_13

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_12

    sget-object v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->None:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarExternalClockType:I

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExpandClock:Z

    :cond_1
    :goto_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_2

    const-string/jumbo v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v16, " hometime:"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v16, " locale:"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v16, " hasBG?"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v16

    if-eqz v16, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v18, 0x7f050033

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    :goto_9
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez p1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    move-object/from16 v16, v0

    if-nez v16, :cond_3

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_6

    :cond_4
    const-string/jumbo v16, "KeyguardClockPage"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "previousClockKey:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", newClockKey:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockType:I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateScaleMode(Z)V

    :cond_5
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    const-string/jumbo v16, "KeyguardClockPage"

    const-string/jumbo v17, "considerChangeClockView() << END <<"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_d
    const/16 v16, 0x1

    goto/16 :goto_5

    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_5

    :cond_f
    const/4 v15, 0x1

    goto/16 :goto_6

    :cond_10
    const/4 v14, 0x1

    goto/16 :goto_7

    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarInternalClockType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto/16 :goto_8

    :cond_13
    if-eqz v15, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowImageClock:Z

    move/from16 v16, v0

    if-eqz v16, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDualClock:Z

    move/from16 v16, v0

    if-eqz v16, :cond_14

    sget-object v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    :goto_a
    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_1

    const/4 v12, 0x1

    goto/16 :goto_8

    :cond_14
    if-eqz v14, :cond_15

    sget-object v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandImageSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto :goto_a

    :cond_15
    sget-object v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto :goto_a

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDualClock:Z

    move/from16 v16, v0

    if-eqz v16, :cond_17

    sget-object v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto :goto_a

    :cond_17
    if-eqz v14, :cond_18

    sget-object v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto :goto_a

    :cond_18
    sget-object v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto :goto_a

    :cond_19
    sget-object v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->None:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDualClock:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1b

    const/4 v12, 0x7

    :goto_b
    if-nez v14, :cond_1a

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_1a

    const/4 v12, 0x2

    :cond_1a
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExpandClock:Z

    goto/16 :goto_8

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDefaultClock:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1c

    const/4 v12, 0x1

    goto :goto_b

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockType()I

    move-result v12

    goto :goto_b

    :cond_1d
    const/16 v16, 0x0

    goto/16 :goto_9
.end method

.method private findViewByTransitionName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-object v5

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object p1

    :cond_2
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->findViewByTransitionName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v5
.end method

.method private generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v4, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v2, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateDefaultOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isDateEmbeddedClockType()Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v2, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v2, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHorizontalClockType()Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v2, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v2, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInClockArea(Landroid/view/MotionEvent;)Z
    .locals 4

    sget-boolean v3, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private isNetworkRoamingState()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sget-boolean v4, Lcom/android/systemui/Rune;->COMMON_SUPPORT_MULTI_SIM_DEVICE:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_0

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    return v4

    :cond_2
    return v6
.end method

.method private isVerticalClockType()Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v2, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v2, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandImageSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToShowDualClock()Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isDualClock()Z

    move-result v1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isShowRoamingClockOnKeyguard()Z

    move-result v2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isEasyModeOn()Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->setAutoHomecityTimezone(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    xor-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "KeyguardClockPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "needToShowDualClock() isRoamingClockEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isWhereToShowOptionEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isEasyModeEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mIsNetworkRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "KeyguardClockPage"

    const-string/jumbo v4, "needToShowDualClock() homecity_timezone is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/Rune;->canIgnoreNationalRoamingToShowSingleClock(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "KeyguardClockPage"

    const-string/jumbo v4, "needToShowDualClock() canIgnoreNationalRoamingToShowSingleClock() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/Rune;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "KeyguardClockPage"

    const-string/jumbo v4, "needToShowDualClock() isWiFiOnlyDevice() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    const/4 v3, 0x1

    return v3
.end method

.method private setAutoHomecityTimezone(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "GMT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "KeyguardClockPage"

    const-string/jumbo v6, "setAutoHomecityTimezone(): isDeviceProvisioned=false"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "HomecityTimezoneDeviceProvisioned"

    const-string/jumbo v7, ""

    invoke-static {v5, v6, v7}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "HomecityTimezoneDeviceProvisioned"

    invoke-static {v5, v6, v0}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_3

    const-string/jumbo v5, "KeyguardClockPage"

    const-string/jumbo v6, "setAutoHomecityTimezone(): TelephonyManager=null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const-string/jumbo v5, "KeyguardClockPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAutoHomecityTimezone(): simState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_4

    return-void

    :cond_4
    sget-boolean v5, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SET_SEOUL_AS_DEFAULT_HOMECITY_TIMEZONE:Z

    if-eqz v5, :cond_5

    const-string/jumbo v1, "Asia/Seoul"

    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/systemui/util/SettingsHelper;->setHomeTimeZone(Ljava/lang/String;)V

    const-string/jumbo v5, "KeyguardClockPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAutoHomecityTimezone(): homecity_timezone set by SystemUI >> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", homecity_timezone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", persist.sys.timezone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "persist.sys.timezone"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isNetworkRoaming="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isNetworkRoamingState()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isNationalRoaming="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/Rune;->isNationalRoaming(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v5, Lcom/android/systemui/Rune;->COMMON_SUPPORT_MULTI_SIM_DEVICE:Z

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", sim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "gsm.sim.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {v8, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", plmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "gsm.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {v8, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", sim2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "gsm.sim.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {v9, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", plmn2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "gsm.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {v9, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "HomecityTimezoneSet"

    invoke-static {v5, v6, v2}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", sim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "gsm.sim.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", plmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "gsm.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private updateClockColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->updateClockColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    :cond_0
    return-void
.end method

.method private updateClockStates()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setScalableClockShowing(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDualClock:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDefaultClock:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockType()I

    move-result v2

    if-ne v2, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setFixedClockShowing(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setClockScaleMode(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setFixedClockShowing(Z)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v2, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setScalableClockShowing(Z)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v4, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v4, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-ne v3, v4, :cond_6

    :cond_5
    :goto_1
    invoke-interface {v2, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setFixedClockShowing(Z)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private updateScaleMode(Z)V
    .locals 10

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-nez v6, :cond_0

    return-void

    :cond_0
    const/4 v4, -0x1

    iget v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    if-eq v6, v9, :cond_1

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v7, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->None:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-eq v6, v7, :cond_9

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_0
    const/4 v6, -0x1

    if-ne v4, v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v6}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getOwnerInfo()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->hasSpace()Z

    move-result v2

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v1

    :goto_2
    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isSViewCovered()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v6, v9, :cond_10

    const/4 v0, 0x1

    :goto_3
    if-nez v1, :cond_5

    if-eqz v0, :cond_11

    :cond_5
    if-eqz v2, :cond_11

    const/4 v4, 0x4

    :cond_6
    :goto_4
    iget v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    if-eq v6, v4, :cond_8

    const-string/jumbo v6, "KeyguardClockPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateScaleMode() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " >> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    if-eqz p1, :cond_8

    iget v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v6}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8

    sget-boolean v6, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8

    :cond_7
    invoke-direct {p0, v9}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    :cond_8
    return-void

    :cond_9
    if-eqz p1, :cond_a

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v6}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v6}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockType:I

    if-ne v6, v7, :cond_b

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v6}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_b
    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    iget v7, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockType:I

    invoke-virtual {v6, v7}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockView(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v5}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_11
    if-nez v1, :cond_12

    if-eqz v0, :cond_13

    :cond_12
    const/4 v4, 0x3

    goto/16 :goto_4

    :cond_13
    if-eqz v2, :cond_14

    const/4 v4, 0x2

    goto/16 :goto_4

    :cond_14
    const/4 v4, 0x1

    goto/16 :goto_4
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    const/4 v1, 0x4

    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenClockEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;->setClockVisibility(I)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setTimeVisibility(I)V

    :cond_1
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenDateEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;->setDateVisibility(I)V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setDateVisibility(I)V

    :cond_3
    return-void
.end method

.method protected getContentsView(I)Landroid/view/View;
    .locals 10

    const/4 v9, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string/jumbo v4, "KeyguardClockPage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getContentsView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0d0090

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-getcom-android-systemui-servicebox-pages-clock-KeyguardClockPage$InternalClockTypeSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-virtual {v5}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    :cond_1
    const-string/jumbo v4, "KeyguardClockPage"

    const-string/jumbo v5, "Lockscreen doesn\'t need to show clock."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    return-object v4

    :pswitch_0
    sget-boolean v4, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockView(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_2

    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-object v3

    :cond_3
    const v1, 0x7f0d0074

    goto :goto_0

    :pswitch_1
    if-ne p1, v7, :cond_4

    const v1, 0x7f0d0092

    goto :goto_0

    :cond_4
    const v1, 0x7f0d0090

    goto :goto_0

    :pswitch_2
    if-ne p1, v7, :cond_5

    const v1, 0x7f0d0093

    goto :goto_0

    :cond_5
    const v1, 0x7f0d0091

    goto :goto_0

    :pswitch_3
    const v1, 0x7f0d0070

    goto :goto_0

    :pswitch_4
    const v1, 0x7f0d006f

    goto :goto_0

    :pswitch_5
    sget-boolean v4, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    iget v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockType:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockView(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    sget-boolean v4, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExpandClock:Z

    if-nez v4, :cond_7

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v4}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    iget v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setScaleMode(I)V

    :cond_7
    return-object v3

    :cond_8
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_6

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_9
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getLockStarClockType()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarExternalClockType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "servicebox_clock"

    return-object v0
.end method

.method protected getTransitionOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .locals 3

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateCompositeOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomInterpolator(Landroid/animation/TimeInterpolator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomInterpolator(Landroid/animation/TimeInterpolator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    goto :goto_0

    :cond_1
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomInterpolator(Landroid/animation/TimeInterpolator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    goto :goto_0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "KeyguardClockPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initViews() mClockView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mExternalClockView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", rootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eq v0, p1, :cond_1

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eq v0, p1, :cond_3

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    instance-of v0, p1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;->setClockCacheKey(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    :cond_4
    :goto_0
    iput-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern12:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern24:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mDateViewPattern:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateClockStates()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->refreshTime()V

    return-void

    :cond_5
    instance-of v0, p1, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    iput-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    goto :goto_0

    :cond_6
    check-cast p1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;->setClockCacheKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isSwitchAnimationPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onAttachedToWindow()V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->registerClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateClockColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClockColorChanged()V
    .locals 2

    const-string/jumbo v0, "KeyguardClockPage"

    const-string/jumbo v1, "onClockColorChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateClockColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void
.end method

.method public onClockPackageChanged()V
    .locals 0

    return-void
.end method

.method public onClockStyleChanged()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onDetachedFromWindow()V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    const v0, 0x7f0a0264

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLockModeChanged()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateScaleMode(Z)V

    :cond_0
    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method public onOpenThemeReApply()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method public onOwnerInfoSpaceChanged(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateScaleMode(Z)V

    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 7

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isNetworkRoamingState()Z

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/Rune;->canIgnoreNationalRoamingToShowSingleClock(Landroid/content/Context;)Z

    move-result v1

    const/4 v0, 0x0

    const-string/jumbo v4, "KeyguardClockPage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRefreshCarrierInfo(pre, now): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    if-eq v4, v2, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    const/4 v0, 0x1

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNationalRoamingIgnorable:Z

    if-eq v4, v1, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNationalRoamingIgnorable:Z

    const/4 v0, 0x1

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iput-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView()V

    :cond_3
    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->changeHourFormat()V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateScaleMode(Z)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isInClockArea(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mActionDownOnClock:Z

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mActionDownOnClock:Z

    if-eqz v0, :cond_2

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mActionDownOnClock:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isInClockArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mActionDownOnClock:Z

    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_3
    const-string/jumbo v0, "KeyguardClockPage"

    const-string/jumbo v1, "DP Touch up start service box"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->showServiceBox()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->playSoundEffect(I)V

    return v3
.end method

.method public onUpdateLockscreenHiddenItems()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardClockPage"

    const-string/jumbo v1, "performAccessibilityAction DP Touch up"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "KeyguardClockPage"

    const-string/jumbo v1, "DP Touch up start service box"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->showServiceBox()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->playSoundEffect(I)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mActionDownOnClock:Z

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public prepareTransition(Lcom/android/systemui/servicebox/utils/SecTransition;)V
    .locals 14

    const/16 v9, 0x10

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    sget-boolean v5, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    if-ne v5, v13, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isHorizontalClockType()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "common_clock_transition_sec_colon"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_second"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    :goto_0
    sget-boolean v5, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    const-string/jumbo v6, "common_clock_transition_bundle"

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->findViewByTransitionName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_4

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isVerticalClockType()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "common_clock_transition_colon"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_sec_colon"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_second"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isDateEmbeddedClockType()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "common_clock_transition_hour"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_colon"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_minute"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_sec_colon"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_second"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_date"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_date_shamsi"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v5, "common_clock_transition_hour"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_colon"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_minute"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_sec_colon"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_second"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    check-cast v5, Landroid/view/View;

    const-string/jumbo v6, "common_clock_transition_bundle"

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->findViewByTransitionName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_1

    :cond_4
    new-array v3, v13, [I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartY:F

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    aget v6, v3, v10

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaY:F

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    aget v6, v3, v11

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaX:F

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    aget v6, v3, v10

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaY:F

    :cond_5
    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateDefaultOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setScalePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v10, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v7, v13, [F

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartY:F

    aput v8, v7, v11

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartY:F

    iget v9, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaY:F

    add-float/2addr v8, v9

    aput v8, v7, v10

    invoke-static {v12, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    new-array v5, v10, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->X:Landroid/util/Property;

    new-array v7, v13, [F

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    aput v8, v7, v11

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    iget v9, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaX:F

    add-float/2addr v8, v9

    aput v8, v7, v10

    invoke-static {v12, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v5, v10, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v13, [F

    fill-array-data v7, :array_0

    invoke-static {v12, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v5, v10, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v13, [F

    fill-array-data v7, :array_1

    invoke-static {v12, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/16 v5, 0x24

    invoke-virtual {v1, v5}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setScalePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :cond_6
    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v0, v12}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    const-string/jumbo v5, "common_clock_transition_bundle"

    invoke-virtual {p1, v5, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    :goto_2
    return-void

    :cond_7
    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateCompositeOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v5

    const/16 v6, 0x14d

    invoke-virtual {v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v4

    const-string/jumbo v5, "common_clock_transition_hour"

    invoke-virtual {p1, v5, v4}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_colon"

    invoke-virtual {p1, v5, v4}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_minute"

    invoke-virtual {p1, v5, v4}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_date"

    invoke-virtual {p1, v5, v4}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_date_shamsi"

    invoke-virtual {p1, v5, v4}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateDefaultOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setScalePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v10, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v7, v13, [F

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartY:F

    iget v9, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaY:F

    add-float/2addr v8, v9

    aput v8, v7, v11

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartY:F

    aput v8, v7, v10

    invoke-static {v12, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    new-array v5, v10, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->X:Landroid/util/Property;

    new-array v7, v13, [F

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    iget v9, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaX:F

    add-float/2addr v8, v9

    aput v8, v7, v11

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    aput v8, v7, v10

    invoke-static {v12, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v5, v10, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v13, [F

    fill-array-data v7, :array_2

    invoke-static {v12, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v5, v10, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v13, [F

    fill-array-data v7, :array_3

    invoke-static {v12, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/16 v5, 0x24

    invoke-virtual {v1, v5}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setScalePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :cond_8
    const-wide/16 v6, 0x14d

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v12, v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    const-string/jumbo v5, "common_clock_transition_bundle"

    invoke-virtual {p1, v5, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v5, "common_clock_transition_bundle"

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateCompositeOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    const/16 v7, 0x12c

    invoke-virtual {v6, v7}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setPivot(II)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    goto/16 :goto_2

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public refreshTime()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "KeyguardClockPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshTime(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;->getClockCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Roaming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->-wrap0(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowImageClock:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern12:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView12:Ljava/lang/String;

    sget-object v2, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView24:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->dateView:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;->refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView12:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern12:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView24:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern24:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->dateView:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mDateViewPattern:Ljava/lang/String;

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern12:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern24:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern24:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mDateViewPattern:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mDateViewPattern:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public refreshViews(I)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->refresh()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->refreshTime()V

    goto :goto_0
.end method

.method public setCoverState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;->setCoverState(Z)V

    :cond_0
    return-void
.end method

.method public setLockStarClockType(I)V
    .locals 3

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "KeyguardClockPage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid clock type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarExternalClockType:I

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void

    :cond_1
    sparse-switch p1, :sswitch_data_0

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarInternalClockType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto :goto_0

    :sswitch_0
    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarInternalClockType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarInternalClockType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public setLockStarClockType(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "clock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "clock"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->setLockStarClockType(I)V

    return-void
.end method

.method public setMobileKeyboardState(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateScaleMode(Z)V

    :cond_0
    return-void
.end method

.method public setPageType(IZ)V
    .locals 2

    const/4 v1, 0x2

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isNetworkRoamingState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    goto :goto_0
.end method
