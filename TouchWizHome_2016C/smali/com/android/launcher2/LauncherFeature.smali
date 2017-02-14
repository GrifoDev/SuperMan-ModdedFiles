.class public Lcom/android/launcher2/LauncherFeature;
.super Ljava/lang/Object;
.source "LauncherFeature.java"


# static fields
.field private static final OEM_DIALER_CLASS_NAME:Ljava/lang/String; = "com.android.dialer.DialtactsActivity"

.field private static TAG:Ljava/lang/String; = null

.field private static final T_DIALER_CLASS_NAME:Ljava/lang/String; = "com.skt.prod.dialer.activities.main.MainActivity"

.field private static final T_DIALER_PACKAGE_NAME:Ljava/lang/String; = "com.skt.prod.dialer"

.field private static isAfterReadGalaxyLabs:Z

.field public static mCountryCode:Ljava/lang/String;

.field private static mDisableFullyHideKeypad:Z

.field private static mHomeAppsStructureFeature:Ljava/lang/String;

.field private static mIsEdge:Z

.field private static mIsKDDI:Z

.field private static mIsTabletLayout:Z

.field private static mIsVZW:Z

.field public static mProductName:Ljava/lang/String;

.field public static mSalesCode:Ljava/lang/String;

.field private static mSupportAlphabeticalMode:Z

.field private static mSupportAlphabeticalOrder:Z

.field private static mSupportAppSearch:Z

.field private static mSupportAppSearchDrag:Z

.field private static mSupportAtoZ:Z

.field private static mSupportAtoZUndo:Z

.field private static mSupportBackgroundBlur:Z

.field private static mSupportBackgroundBlurByWindow:Z

.field private static mSupportBadgeManage:Z

.field private static mSupportChinaPreloadTheme:Z

.field private static mSupportContextServiceSurveyMode:Z

.field private static mSupportCustomerDialerChange:Z

.field private static mSupportCustomerLauncherJPN:Z

.field private static mSupportDisablePageLooping:Z

.field private static mSupportEmptyMsg:Z

.field private static mSupportFestivalPage:Z

.field private static mSupportFlexibleGrid:Z

.field private static mSupportFolderGradation:Z

.field private static mSupportFolderItemMove:Z

.field private static mSupportFolderLock:Z

.field private static mSupportFolderMerge:Z

.field private static mSupportFolderMultiSelection:Z

.field private static mSupportFolderPopup:Z

.field private static mSupportGalaxyAppsSearch:Z

.field private static mSupportGalaxyLabs:Z

.field private static mSupportGameHome:Z

.field private static mSupportGoogleBackupRestore:Z

.field private static mSupportGooglePlayAutoInstall:Z

.field private static mSupportHomeModeChange:Z

.field private static mSupportHomeModeChangeFeature:Z

.field private static mSupportHomeModeChangeIndex:I

.field private static mSupportHotword:Z

.field private static mSupportIconFitMode:Z

.field private static mSupportIconShadow:Z

.field private static mSupportInteratorHaptic:Z

.field private static mSupportLauncherHighPriority:Z

.field private static mSupportMenuIconSizeChanged:Z

.field private static mSupportMoveApps:Z

.field private static mSupportNewColorInvert:Z

.field private static mSupportNfcHwKeyboard:Z

.field private static mSupportQuickOption:Z

.field private static mSupportRTLLayout:Z

.field private static mSupportRemoveBadge:Z

.field private static mSupportRotate:Z

.field private static mSupportSearchTextColorLight:Z

.field private static mSupportSearchbarInApps:Z

.field private static mSupportStatusBarMarginDisable:Z

.field private static mSupportTransitedRotation:Z

.field private static mSupportUpdateMSFodler:Z

.field private static mSupportVoiceSearch:Z

.field public static mSupportWallpaperTilt:Z

.field private static mSupportWeatherAnimAffordance:Z

.field private static mSupportWidgetInstallAnim:Z

.field private static mSupportWorkFolder:Z

.field private static mSystraceLogForScroll:Z

.field private static sOemDialerPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/android/launcher2/LauncherFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherFeature;->TAG:Ljava/lang/String;

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->isAfterReadGalaxyLabs:Z

    sput-object v4, Lcom/android/launcher2/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportMoveApps:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportFolderMultiSelection:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportAtoZUndo:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportAlphabeticalOrder:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportAtoZ:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportGameHome:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportHotword:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportNewColorInvert:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Launcher_ConfigHomeAppsStructure"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherFeature;->mHomeAppsStructureFeature:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_HOME_MODE_CHANGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportHomeModeChangeFeature:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportHomeModeChange:Z

    sput v2, Lcom/android/launcher2/LauncherFeature;->mSupportHomeModeChangeIndex:I

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportGalaxyLabs:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportRemoveBadge:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportFolderItemMove:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportChinaPreloadTheme:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportFestivalPage:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportEmptyMsg:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mDisableFullyHideKeypad:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportFolderPopup:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportBackgroundBlur:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportBackgroundBlurByWindow:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportWorkFolder:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportUpdateMSFodler:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportWidgetInstallAnim:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportWallpaperTilt:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportLauncherHighPriority:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportInteratorHaptic:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportNfcHwKeyboard:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportDisablePageLooping:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportContextServiceSurveyMode:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportCustomerLauncherJPN:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportCustomerDialerChange:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportTransitedRotation:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mIsEdge:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mIsVZW:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mIsKDDI:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportRotate:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportMenuIconSizeChanged:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportFolderGradation:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportSearchTextColorLight:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportStatusBarMarginDisable:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportRTLLayout:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportIconShadow:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportFlexibleGrid:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportAppSearch:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportSearchbarInApps:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportGalaxyAppsSearch:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportIconFitMode:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportVoiceSearch:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportGoogleBackupRestore:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportGooglePlayAutoInstall:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportFolderLock:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSystraceLogForScroll:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportFolderMerge:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportAppSearchDrag:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportQuickOption:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportAlphabeticalMode:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportBadgeManage:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mIsTabletLayout:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportWeatherAnimAffordance:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static badgeDynamicDrawable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static beginSystrace(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSystraceLogForScroll:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static checkDualScreen()Z
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    const-string v1, "vlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkEdgeDevice(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/LauncherFeature;->mIsEdge:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/launcher2/LauncherFeature;->TAG:Ljava/lang/String;

    const-string v4, "PackageManager is null in checkEdgeDevice()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkGalaxyViewDevice()Z
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    const-string v1, "gvlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    const-string v1, "gvwifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkGraceModel()Z
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    const-string v1, "grace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkIsChinaModel()Z
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->readSystemProperties()V

    :cond_0
    const-string v0, "CHINA"

    sget-object v1, Lcom/android/launcher2/LauncherFeature;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hong kong"

    sget-object v1, Lcom/android/launcher2/LauncherFeature;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Taiwan"

    sget-object v1, Lcom/android/launcher2/LauncherFeature;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkS5NeoDevice()Z
    .locals 2

    const-string v0, "s5neoltexx"

    sget-object v1, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static checkSoftkeyDevice()Z
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createSkiplistByMetadata()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static disableFullyHideKeypad()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mDisableFullyHideKeypad:Z

    return v0
.end method

.method public static endSystrace()V
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSystraceLogForScroll:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_0
    return-void
.end method

.method public static getBinaryType()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.build.type"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomerDialerClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.skt.prod.dialer.activities.main.MainActivity"

    return-object v0
.end method

.method public static getCustomerDialerPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.skt.prod.dialer"

    return-object v0
.end method

.method public static getOemDialerClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.dialer.DialtactsActivity"

    return-object v0
.end method

.method public static getOemDialerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    sget-object v4, Lcom/android/launcher2/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v1, "com.android.contacts"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v6, "com.android.contacts"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sput-object v3, Lcom/android/launcher2/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object v4, Lcom/android/launcher2/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    return-object v4

    :cond_1
    sput-object v1, Lcom/android/launcher2/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sput-object v3, Lcom/android/launcher2/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-object v1, Lcom/android/launcher2/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getOmcEtcPath()Ljava/lang/String;
    .locals 1

    const-string v0, "persist.sys.omc_etcpath"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOmcPath()Ljava/lang/String;
    .locals 1

    const-string v0, "persist.sys.omc_path"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOrientation()I
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public static getRemovablePreloadEnabled()I
    .locals 2

    const-string v0, "ro.config.rm_preload_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getStkTitlefromSIM()Ljava/lang/String;
    .locals 2

    const-string v0, "gsm.STK_SETUP_MENU"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportHomeModeChangeIndex()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherFeature;->mSupportHomeModeChangeIndex:I

    return v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 8

    const-class v3, Lcom/android/launcher2/LauncherFeature;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->readSystemProperties()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->readCSCFeature()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->readFloatingFeature()V

    invoke-static {p0}, Lcom/android/launcher2/LauncherFeature;->setFeatureBySystemProperties(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher2/LauncherFeature;->checkEdgeDevice(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher2/LauncherFeature;->readGalaxyLabs(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher2/LauncherFeature;->readConfigValue(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->setFrameworkClassMethod()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->setBadgeManageFeature()V

    sget-object v2, Lcom/android/launcher2/LauncherFeature;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LauncherFeature init : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static isChinaModel()Z
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->readSystemProperties()V

    :cond_0
    const-string v0, "CHINA"

    sget-object v1, Lcom/android/launcher2/LauncherFeature;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDisableHighestGPU()Z
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    const-string v1, "c9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    const-string v1, "a5y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    const-string v1, "a7y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEdgeDevice()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mIsEdge:Z

    return v0
.end method

.method public static isGsmSimScreenEvent(Z)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v0, "gsm.sim.screenEvent"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.screenEvent2"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isKDDIModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mIsKDDI:Z

    return v0
.end method

.method public static isSupportBadgeManage()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportBadgeManage:Z

    return v0
.end method

.method public static isSupportTouchPrediction()Z
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    const-string v1, "c9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportWeatherAnimAffordance()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportWeatherAnimAffordance:Z

    return v0
.end method

.method public static isTabletModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mIsTabletLayout:Z

    return v0
.end method

.method public static isTransitedRotation()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportTransitedRotation:Z

    return v0
.end method

.method public static isVZWModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mIsVZW:Z

    return v0
.end method

.method public static isZeropageSettingApp()Z
    .locals 2

    const-string v0, "com.samsung.android.zeropage"

    sget-object v1, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readCSCFeature()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Launcher_EnableViewByAlphabetAsDefault"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportAlphabeticalOrder:Z

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportAlphabeticalOrder:Z

    if-eqz v0, :cond_0

    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportAtoZ:Z

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Launcher_DisablePageRotation"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportDisablePageLooping:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_DisableGoogle"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportHotword:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Launcher_SupportGuideTextForEmptyPage"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportEmptyMsg:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Launcher_SupportFolderSubMenuDuringEditMode"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportFolderPopup:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FESTIVAL"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_SupportFestival"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportFestivalPage:Z

    const-string v0, "vzw"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Launcher_ConfigOpBrandLabel"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mIsVZW:Z

    const-string v0, "kddi"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Launcher_ConfigOpInterfaceForBadgeUpdate"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mIsKDDI:Z

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "csc  mSupportHotword : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportHotword:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSupportEmptyMsg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportEmptyMsg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSupportFolderPopup : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportFolderPopup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSupportRemoveBadge : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportRemoveBadge:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportFestivalPage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportFestivalPage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsVZW : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/LauncherFeature;->mIsVZW:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsKDDI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/LauncherFeature;->mIsKDDI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mIsVZW:Z

    if-nez v0, :cond_3

    const-string v0, "VZW"

    sget-object v1, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mIsVZW:Z

    :cond_3
    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mIsKDDI:Z

    if-nez v0, :cond_4

    const-string v0, "KDI"

    sget-object v1, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mIsKDDI:Z

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method

.method private static readConfigValue(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportIconShadow:Z

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportSearchTextColorLight:Z

    const v1, 0x7f0c0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportFolderGradation:Z

    const v1, 0x7f0c001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportMenuIconSizeChanged:Z

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportStatusBarMarginDisable:Z

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportRTLLayout:Z

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportFlexibleGrid:Z

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportAppSearch:Z

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportSearchbarInApps:Z

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportRotate:Z

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportMoveApps:Z

    const v1, 0x7f0c0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportBackgroundBlur:Z

    const v1, 0x7f0c0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportBackgroundBlurByWindow:Z

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportFolderMerge:Z

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportAppSearchDrag:Z

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportNewColorInvert:Z

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mIsTabletLayout:Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readFloatingFeature()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_TILT_EFFECT"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportWallpaperTilt:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_LAUNCHER_BOOT_HIGHPRIORITY"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportLauncherHighPriority:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportInteratorHaptic:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportNfcHwKeyboard:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportContextServiceSurveyMode:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportChinaPreloadTheme:Z

    :cond_0
    return-void
.end method

.method private static readGalaxyLabs(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/launcher2/LauncherFeature;->isAfterReadGalaxyLabs:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportHomeModeChange:Z

    if-nez v1, :cond_2

    const-string v1, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "galaxylabs_home_only_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportHomeModeChange:Z

    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->isAfterReadGalaxyLabs:Z

    goto :goto_0

    :cond_2
    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportGalaxyLabs:Z

    goto :goto_1
.end method

.method private static readSystemProperties()V
    .locals 8

    const-string v4, ""

    const-string v1, ""

    const-string v3, ""

    const-string v0, ""

    :try_start_0
    const-string v5, "persist.omc.sales_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "persist.omc.country_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ro.csc.country_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "ril.sales_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v4, v1

    :cond_2
    sput-object v4, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move-object v3, v0

    :cond_4
    sput-object v3, Lcom/android/launcher2/LauncherFeature;->mCountryCode:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v2

    sget-object v5, Lcom/android/launcher2/LauncherFeature;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read SalesCode or CountryCode exception occurred"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setBadgeManageFeature()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportBadgeManage:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportBadgeManage:Z

    goto :goto_0
.end method

.method private static setFeatureBySystemProperties(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportEmptyMsg:Z

    if-nez v0, :cond_0

    const-string v0, "USA"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ATT"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "VZW"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "CCT"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportEmptyMsg:Z

    :cond_0
    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportFolderPopup:Z

    if-nez v0, :cond_2

    const-string v0, "USA"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CANADA"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_1
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportFolderPopup:Z

    :cond_2
    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportHotword:Z

    if-eqz v0, :cond_3

    const-string v0, "CHZ"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CHN"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CHM"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CHU"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CTC"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CHC"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportHotword:Z

    :cond_3
    const-string v0, "SKT"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SKC"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_4
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportCustomerDialerChange:Z

    const-string v0, "DCM"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "KDI"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_5
    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportCustomerLauncherJPN:Z

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mDisableFullyHideKeypad:Z

    if-nez v0, :cond_6

    const-string v0, "USA"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherFeature;->mDisableFullyHideKeypad:Z

    :cond_6
    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportFolderLock:Z

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/android/launcher2/LauncherFeature;->setSupportFolderLock(Landroid/content/Context;)V

    :cond_7
    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportGalaxyLabs:Z

    if-eqz v0, :cond_8

    const-string v0, "SKC"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "KTC"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "LUC"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "SKO"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "KTO"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "LUO"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "CHM"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "CHU"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "CTC"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "CHC"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "KOO"

    sget-object v3, Lcom/android/launcher2/LauncherFeature;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_5
    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportGalaxyLabs:Z

    :cond_8
    return-void

    :cond_9
    move v0, v2

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto/16 :goto_2

    :cond_c
    move v0, v2

    goto/16 :goto_3

    :cond_d
    move v0, v2

    goto/16 :goto_4

    :cond_e
    move v1, v2

    goto :goto_5
.end method

.method private static setFrameworkClassMethod()V
    .locals 0

    invoke-static {}, Lcom/android/launcher2/framework/HoverPopupWindow;->checkClassExist()V

    return-void
.end method

.method public static setSupportFolderLock(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "applock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportFolderLock:Z

    :goto_0
    sget-object v1, Lcom/android/launcher2/LauncherFeature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSupportFolderLock supportFolderLock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/launcher2/LauncherFeature;->mSupportFolderLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportFolderLock:Z

    goto :goto_0
.end method

.method public static setSupportGalaxyAppsSearch(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/launcher2/LauncherFeature;->mSupportGalaxyAppsSearch:Z

    return-void
.end method

.method public static setSupportHomeModeChange(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/launcher2/LauncherFeature;->mSupportHomeModeChange:Z

    return-void
.end method

.method public static supportAlphabeticalOrder()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportAlphabeticalMode:Z

    return v0
.end method

.method public static supportAppSearch()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportAppSearch:Z

    return v0
.end method

.method public static supportAppSearchDrag()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportAppSearchDrag:Z

    return v0
.end method

.method public static supportAtoZ()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportAtoZ:Z

    return v0
.end method

.method public static supportAtoZUndo()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportAtoZUndo:Z

    return v0
.end method

.method public static supportBackgroundBlur()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportBackgroundBlurByWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportBackgroundBlur:Z

    goto :goto_0
.end method

.method public static supportBackgroundBlurByWindow()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportBackgroundBlurByWindow:Z

    return v0
.end method

.method public static supportChinaDA()Z
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isChinaModel()Z

    move-result v0

    return v0
.end method

.method public static supportChinaPreloadTheme()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportChinaPreloadTheme:Z

    return v0
.end method

.method public static supportContextServiceSurveyMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportContextServiceSurveyMode:Z

    return v0
.end method

.method public static supportCustomerDialerChange()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportCustomerDialerChange:Z

    return v0
.end method

.method public static supportCustomerLauncherJPN()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportCustomerLauncherJPN:Z

    return v0
.end method

.method public static supportDefaultHomeOnlyMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportDisablePageLooping()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportDisablePageLooping:Z

    return v0
.end method

.method public static supportEmptyMsg()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportEmptyMsg:Z

    return v0
.end method

.method public static supportFestivalPage()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportFestivalPage:Z

    return v0
.end method

.method public static supportFlexibleGrid()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportFlexibleGrid:Z

    return v0
.end method

.method public static supportFolderAppSearchIndex()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportFolderGradation()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportFolderGradation:Z

    return v0
.end method

.method public static supportFolderItemMove()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportFolderItemMove:Z

    return v0
.end method

.method public static supportFolderLock()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportFolderLock:Z

    return v0
.end method

.method public static supportFolderMerge()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportFolderMerge:Z

    return v0
.end method

.method public static supportFolderMultiSelection()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportFolderMultiSelection:Z

    return v0
.end method

.method public static supportFolderPopup()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportFolderPopup:Z

    return v0
.end method

.method public static supportGalaxyAppsSearch()Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isVZWModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportGalaxyAppsSearch:Z

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/android/launcher2/LauncherFeature;->mSupportGalaxyAppsSearch:Z

    :cond_1
    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportGalaxyAppsSearch:Z

    return v0
.end method

.method public static supportGalaxyLabs()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportGalaxyLabs:Z

    return v0
.end method

.method public static supportGameHome()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportGameHome:Z

    return v0
.end method

.method public static supportGoogleBackupRestore()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportGoogleBackupRestore:Z

    return v0
.end method

.method public static supportHomeModeChange()Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mHomeAppsStructureFeature:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mHomeAppsStructureFeature:Ljava/lang/String;

    const-string v1, "support_homeonly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportHomeModeChangeFeature:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher2/LauncherFeature;->mHomeAppsStructureFeature:Ljava/lang/String;

    const-string v1, "homeapps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput v2, Lcom/android/launcher2/LauncherFeature;->mSupportHomeModeChangeIndex:I

    :cond_0
    sput-boolean v2, Lcom/android/launcher2/LauncherFeature;->mSupportHomeModeChange:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/LauncherFeature;->mHomeAppsStructureFeature:Ljava/lang/String;

    :cond_1
    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->isAfterReadGalaxyLabs:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportHomeModeChange:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/LauncherFeature;->readGalaxyLabs(Landroid/content/Context;)V

    :cond_2
    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportHomeModeChange:Z

    return v0
.end method

.method public static supportHotword()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportHotword:Z

    return v0
.end method

.method public static supportIconFitMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportIconFitMode:Z

    return v0
.end method

.method public static supportIconShadow()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportIconShadow:Z

    return v0
.end method

.method public static supportInteratorHaptic()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportInteratorHaptic:Z

    return v0
.end method

.method public static supportLauncherHighPriority()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportLauncherHighPriority:Z

    return v0
.end method

.method public static supportMenuIconSizeChanged()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportMenuIconSizeChanged:Z

    return v0
.end method

.method public static supportMoveApps()Z
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportMoveApps:Z

    goto :goto_0
.end method

.method public static supportNewColorInvert()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportNewColorInvert:Z

    return v0
.end method

.method public static supportNfcHwKeyboard()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportNfcHwKeyboard:Z

    return v0
.end method

.method public static supportPAI()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportGooglePlayAutoInstall:Z

    return v0
.end method

.method public static supportQuickOptions()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportQuickOption:Z

    return v0
.end method

.method public static supportRTLLayout()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportRTLLayout:Z

    return v0
.end method

.method public static supportRemoveBadge()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportRemoveBadge:Z

    return v0
.end method

.method public static supportRotate()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportRotate:Z

    return v0
.end method

.method public static supportSearchBarApps()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportSearchbarInApps:Z

    return v0
.end method

.method public static supportSearchTextColorLight()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportSearchTextColorLight:Z

    return v0
.end method

.method public static supportSprintExtension()Z
    .locals 2

    const-string v0, "hero2qlteue"

    sget-object v1, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "heroqlteue"

    sget-object v1, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "graceqlteue"

    sget-object v1, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static supportStatusBarMarginDisable()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportStatusBarMarginDisable:Z

    return v0
.end method

.method public static supportUpdateMSFodler()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportUpdateMSFodler:Z

    return v0
.end method

.method public static supportVoiceSearch()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportVoiceSearch:Z

    return v0
.end method

.method public static supportWallpaperTilt()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportWallpaperTilt:Z

    return v0
.end method

.method public static supportWidgetInstallAnim()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportWidgetInstallAnim:Z

    return v0
.end method

.method public static supportWorkFolder()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherFeature;->mSupportWorkFolder:Z

    return v0
.end method

.method public static supportZeroPageSettingDialog(Landroid/content/Context;)Z
    .locals 3

    sget-object v1, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    :cond_0
    const-string v1, "de.axelspringer.yana.zeropage"

    invoke-static {p0, v1}, Lcom/android/launcher2/Utilities;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    const-string v2, "a3x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    const-string v2, "a5x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    const-string v2, "zero"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/launcher2/LauncherFeature;->mProductName:Ljava/lang/String;

    const-string v2, "zen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
