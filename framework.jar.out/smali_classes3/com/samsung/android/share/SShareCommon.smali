.class public Lcom/samsung/android/share/SShareCommon;
.super Ljava/lang/Object;
.source "SShareCommon.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SShareCommon"


# instance fields
.field private mAlwaysUseOption:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceDefault:Z

.field private mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mHasFilteredItem:Z

.field private mIconChangePlayer:I

.field private mIconPrint:I

.field private mIconQuickConnect:I

.field private mIconScreenMirroring:I

.field private mIconScreenSharing:I

.field private mItemCount:I

.field private mLaunchedFromUid:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResolverGuideIntent:Landroid/content/Intent;

.field private mSCSupport:Z

.field private mSCVersion:I

.field private mSendBixbyResult:Z

.field private mShareLinkReflectionTitle:Ljava/lang/String;

.field private mSupportedFeatures:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ZILjava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "ZI",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;I)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/share/SShareCommon;-><init>(Landroid/content/Context;Landroid/content/Intent;ZZZILjava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ZZZILjava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "ZZZI",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mSupportedFeatures:I

    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mItemCount:I

    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenMirroring:I

    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconQuickConnect:I

    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconPrint:I

    iput-object p1, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/samsung/android/share/SShareCommon;->mAlwaysUseOption:Z

    iput-boolean p5, p0, Lcom/samsung/android/share/SShareCommon;->mHasFilteredItem:Z

    iput p8, p0, Lcom/samsung/android/share/SShareCommon;->mItemCount:I

    iput p6, p0, Lcom/samsung/android/share/SShareCommon;->mLaunchedFromUid:I

    iput-object p7, p0, Lcom/samsung/android/share/SShareCommon;->mExtraIntentList:Ljava/util/List;

    iput-boolean p3, p0, Lcom/samsung/android/share/SShareCommon;->mDeviceDefault:Z

    iget-object v0, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SShareCommon;->mPm:Landroid/content/pm/PackageManager;

    if-eqz p3, :cond_1

    xor-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    xor-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_1

    if-ltz p6, :cond_1

    invoke-static {p6}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/share/SShareCommon;->checkShareLinkFeature(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->checkSamsungConnectInfo()V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getShareToDeviceSupportState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->checkDeviceShareFeature()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->checkLoggingFeature()V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->checkBixbyFeature()V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->checkDirectShareFeature()V

    :cond_1
    if-nez p4, :cond_2

    if-eqz p5, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->checkButtonsFeature()V

    invoke-direct {p0, p2}, Lcom/samsung/android/share/SShareCommon;->checkResolverGuideFeature(Landroid/content/Intent;)V

    :cond_3
    const-string/jumbo v0, "SShareCommon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SShare Support Feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/share/SShareCommon;->mSupportedFeatures:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkBixbyFeature()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareConstants;->ENABLE_BIXBY:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/share/SShareConstants;->SUPPORT_BIXBY:I

    invoke-direct {p0, v0}, Lcom/samsung/android/share/SShareCommon;->setSupportedFeature(I)V

    :cond_0
    return-void
.end method

.method private checkButtonsFeature()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getButtonsSupportState()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/share/SShareConstants;->SUPPORT_BUTTONS:I

    invoke-direct {p0, v0}, Lcom/samsung/android/share/SShareCommon;->setSupportedFeature(I)V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getButtonShapeSupportState()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/share/SShareConstants;->SUPPORT_SHOW_BUTTON_SHAPES:I

    invoke-direct {p0, v0}, Lcom/samsung/android/share/SShareCommon;->setSupportedFeature(I)V

    :cond_0
    return-void
.end method

.method private checkDeviceShareFeature()V
    .locals 1

    sget v0, Lcom/samsung/android/share/SShareConstants;->SUPPORT_DEVICE_SHARE:I

    invoke-direct {p0, v0}, Lcom/samsung/android/share/SShareCommon;->setSupportedFeature(I)V

    return-void
.end method

.method private checkDirectShareFeature()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_share"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget v0, Lcom/samsung/android/share/SShareConstants;->SUPPORT_DIRECT_SHARE:I

    invoke-direct {p0, v0}, Lcom/samsung/android/share/SShareCommon;->setSupportedFeature(I)V

    :cond_0
    return-void
.end method

.method private checkLoggingFeature()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareConstants;->ENABLE_SURVEY_MODE:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/share/SShareConstants;->SUPPORT_LOGGING:I

    invoke-direct {p0, v0}, Lcom/samsung/android/share/SShareCommon;->setSupportedFeature(I)V

    :cond_0
    return-void
.end method

.method private checkResolverGuideFeature(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->getResolverGuideSupportState(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/share/SShareConstants;->SUPPORT_RESOLVER_GUIDE:I

    invoke-direct {p0, v0}, Lcom/samsung/android/share/SShareCommon;->setSupportedFeature(I)V

    :cond_0
    return-void
.end method

.method private checkSamsungConnectInfo()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectSupportState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/share/SShareCommon;->mSCSupport:Z

    invoke-virtual {p0}, Lcom/samsung/android/share/SShareCommon;->getSamsungConnectVersion()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mSCVersion:I

    return-void
.end method

.method private checkShareLinkFeature(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->getShareLinkSupportState(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/share/SShareConstants;->SUPPORT_SHARE_LINK:I

    invoke-direct {p0, v0}, Lcom/samsung/android/share/SShareCommon;->setSupportedFeature(I)V

    :cond_0
    return-void
.end method

.method private getButtonShapeSupportState()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "show_button_background"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getButtonsSupportState()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "default_app_selection_option"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getQuickConnectSupportState()Z
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareCommon;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "com.samsung.android.oneconnect"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/samsung/android/share/SShareConstants;->ENABLE_QUICKCONNECT_D2D:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SShareCommon"

    const-string/jumbo v3, "getQuickConnectSupportState - oneconnect isn\'t preload app"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SShareCommon"

    const-string/jumbo v3, "getQuickConnectSupportState - oneconnect isn\'t installed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private getResolverGuideSupportState(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getShareLinkLayoutSupportState()Z
    .locals 2

    const-string/jumbo v0, "2016B"

    sget-object v1, Lcom/samsung/android/share/SShareConstants;->SECUX_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "2017A"

    sget-object v1, Lcom/samsung/android/share/SShareConstants;->SECUX_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "2018A"

    sget-object v1, Lcom/samsung/android/share/SShareConstants;->SECUX_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getShareLinkSupportState()Z
    .locals 2

    const-string/jumbo v0, "2016B"

    sget-object v1, Lcom/samsung/android/share/SShareConstants;->SECUX_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "2017A"

    sget-object v1, Lcom/samsung/android/share/SShareConstants;->SECUX_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "2018A"

    sget-object v1, Lcom/samsung/android/share/SShareConstants;->SECUX_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getShareLinkSupportState(Landroid/content/Intent;)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/share/SShareCommon;->isKnoxModeEnabled()Z

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->isEmergencyOrUPSModeEnabled()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isForceSimpleSharingDisable(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v2, :cond_0

    xor-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    xor-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    const-string/jumbo v4, "SShareCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " intentSupport = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " knoxMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " emergencyMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " forceDisable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4
.end method

.method private getShareToDeviceSupportState()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x13a74

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/share/SShareCommon;->mSCSupport:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mSCVersion:I

    const v1, 0x8f0d180

    if-lt v0, v1, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    return v3

    :cond_2
    return v2
.end method

.method private getSupportedFeatures()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mSupportedFeatures:I

    return v0
.end method

.method private hasExtraIntentUriInfo()Z
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/share/SShareCommon;->mExtraIntentList:Ljava/util/List;

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/share/SShareCommon;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/share/SShareCommon;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private isEmergencyOrUPSModeEnabled()Z
    .locals 5

    const/16 v4, 0x200

    iget-object v3, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v3

    xor-int/lit8 v1, v3, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v2

    :cond_1
    :goto_1
    const/4 v0, 0x0

    if-nez v1, :cond_4

    :goto_2
    return v2

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private isForceSimpleSharingDisable(Landroid/content/Intent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "simple_sharing_force_disable"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method private isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isIntentUriDataIValidCheck(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isIntentUriDataIValidCheck(Landroid/content/Intent;)Z
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "android.intent.action.SEND"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    :cond_0
    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->hasExtraIntentUriInfo()Z

    move-result v7

    if-eqz v7, :cond_1

    return v9

    :cond_1
    return v8

    :cond_2
    const-string/jumbo v7, "com.android.contacts"

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    return v9

    :cond_3
    const-string/jumbo v7, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_4

    return v8

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_7

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string/jumbo v8, "com.android.contacts"

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v3, 0x1

    return v3

    :cond_5
    const/4 v3, 0x1

    return v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return v3

    :cond_8
    return v9
.end method

.method private isUSA()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Framework_SupportResolverActivityGuide"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setSupportedFeature(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mSupportedFeatures:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mSupportedFeatures:I

    return-void
.end method


# virtual methods
.method public checkDeviceShareSupport(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/samsung/android/share/SShareConstants;->SUPPORT_DEVICE_SHARE:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/share/SShareCommon;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    const-string/jumbo v3, "SShareCommon"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scDri="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " smDri="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    return v2
.end method

.method public getChangePlayerEnable()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    return v0
.end method

.method public getMenuName(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/share/SShareCommon;->mShareLinkReflectionTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareCommon;->mShareLinkReflectionTitle:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040976

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104094d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104094c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040953

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string/jumbo v0, "SShareCommon"

    const-string/jumbo v1, "wrong app type!! name is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getPrintEnable()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconPrint:I

    return v0
.end method

.method public getQuickConnectEnable()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconQuickConnect:I

    return v0
.end method

.method public getResolverGuideIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareCommon;->mResolverGuideIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getSamsungConnectVersion()I
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareCommon;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "com.samsung.android.oneconnect"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_1
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getScreenMirroringEnable()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenMirroring:I

    return v0
.end method

.method public getScreenSharingEnable()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    return v0
.end method

.method isDesktopModeEnabled()Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isDeviceDefaultTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/share/SShareCommon;->mDeviceDefault:Z

    return v0
.end method

.method public isFeatureSupported(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/share/SShareCommon;->mSupportedFeatures:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isIntentFileUriScheme(Landroid/content/Intent;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.intent.action.SEND"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    :cond_0
    if-eqz v3, :cond_5

    const-string/jumbo v5, "file"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    return v7

    :cond_1
    const-string/jumbo v5, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_2

    return v8

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string/jumbo v6, "file"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v7

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string/jumbo v5, "file"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    return v7

    :cond_5
    return v8
.end method

.method public isKnoxModeEnabled()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mLaunchedFromUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShareLinkReflectionTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/SShareCommon;->mShareLinkReflectionTitle:Ljava/lang/String;

    return-void
.end method
