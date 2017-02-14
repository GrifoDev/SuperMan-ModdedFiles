.class public Lcom/samsung/android/share/SShareCommon;
.super Ljava/lang/Object;
.source "SShareCommon.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SShareCommon"

.field private static mIsSupportButtons:Z

.field private static mIsSupportEnhancedMoreActions:Z

.field private static mIsSupportGridResolver:Z

.field private static mIsSupportLogging:Z

.field private static mIsSupportMoreActions:Z

.field private static mIsSupportNearby:Z

.field private static mIsSupportPageMode:Z

.field private static mIsSupportRecentSort:Z

.field private static mIsSupportResolverGuide:Z

.field private static mIsSupportShareLink:Z

.field private static mIsSupportShareLinkLayout:Z

.field private static mIsSupportShowButtonShapes:Z

.field private static mIsSupportSimpleSharing:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceDefault:Z

.field private mEasySignUpAlreadyChecked:Z

.field private mEasySignUpEnabled:Z

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

.field private mIconChangePlayer:I

.field private mIconPrint:I

.field private mIconQuickConnect:I

.field private mIconScreenMirroring:I

.field private mIconScreenSharing:I

.field private mItemCount:I

.field private mLaunchedFromUid:I

.field private mResolverGuideIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportGridResolver:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShowButtonShapes:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportResolverGuide:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportSimpleSharing:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportLogging:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportNearby:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportMoreActions:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportPageMode:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportRecentSort:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportEnhancedMoreActions:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShareLink:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShareLinkLayout:Z

    return-void
.end method

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
    .locals 1
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

    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mItemCount:I

    iput-boolean v0, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpAlreadyChecked:Z

    iput-boolean v0, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z

    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenMirroring:I

    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconQuickConnect:I

    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconPrint:I

    iput-object p1, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    iput p8, p0, Lcom/samsung/android/share/SShareCommon;->mItemCount:I

    iput p6, p0, Lcom/samsung/android/share/SShareCommon;->mLaunchedFromUid:I

    iput-object p7, p0, Lcom/samsung/android/share/SShareCommon;->mExtraIntentList:Ljava/util/List;

    iput-boolean p3, p0, Lcom/samsung/android/share/SShareCommon;->mDeviceDefault:Z

    if-eqz p3, :cond_0

    if-eqz p4, :cond_3

    :cond_0
    :goto_0
    if-nez p4, :cond_1

    if-eqz p5, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setGridResolverFeature()V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setButtonsFeature()V

    invoke-direct {p0, p2}, Lcom/samsung/android/share/SShareCommon;->setResolverGuideFeature(Landroid/content/Intent;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setPageModeFeature()V

    return-void

    :cond_3
    if-nez p5, :cond_0

    if-ltz p6, :cond_0

    invoke-static {p6}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getShareLinkSupportState()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2}, Lcom/samsung/android/share/SShareCommon;->setShareLinkFeature(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setShareLinkLayoutFeature()V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setQuickConnectFeature()V

    invoke-direct {p0, p2}, Lcom/samsung/android/share/SShareCommon;->setMoreActionsFeature(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setRecentSortFeature()V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setLoggingFeature()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lcom/samsung/android/share/SShareCommon;->setSimpleSharingFeature(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private checkSimpleShareSupport()Z
    .locals 6

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpAlreadyChecked:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z

    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/android/share/SShareSignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v1

    const-string/jumbo v2, "SShareCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkSimpleShareSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z

    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpAlreadyChecked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z

    return v2

    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v5, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z

    const-string/jumbo v2, "SShareCommon"

    const-string/jumbo v3, "SShareSignUpManager returns exception !!!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
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

.method private getEnhancedMoreActionsSupportState()Z
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

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getMoreActionsSupportState(Landroid/content/Intent;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->isEmergencyOrUPSModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    :try_start_0
    const-string/jumbo v4, "more_actions_screen_sharing"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    const-string/jumbo v4, "more_actions_screen_mirroring"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenMirroring:I

    const-string/jumbo v4, "more_actions_change_player"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    invoke-virtual {p0}, Lcom/samsung/android/share/SShareCommon;->getSupportNearby()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "more_actions_quick_connect"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    :goto_0
    iput v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconQuickConnect:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_9

    move v4, v3

    :goto_1
    iput v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconPrint:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    if-ne v4, v2, :cond_1

    const-string/jumbo v4, "more_actions_change_player"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenMirroring:I

    if-ne v4, v2, :cond_2

    const-string/jumbo v4, "more_actions_screen_mirroring"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    if-eq v4, v2, :cond_3

    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    if-ne v4, v6, :cond_4

    :cond_3
    const-string/jumbo v4, "more_actions_screen_sharing"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconQuickConnect:I

    if-ne v4, v2, :cond_5

    const-string/jumbo v4, "more_actions_quick_connect"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconPrint:I

    if-ne v4, v2, :cond_6

    const-string/jumbo v4, "more_actions_print"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6
    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    if-eq v4, v2, :cond_7

    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenMirroring:I

    if-ne v4, v2, :cond_a

    :cond_7
    :goto_3
    return v2

    :cond_8
    move v4, v3

    goto :goto_0

    :cond_9
    :try_start_1
    const-string/jumbo v4, "more_actions_print"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v4, "SShareCommon"

    const-string/jumbo v5, "OutOfMemoryError !!! during getting more actions"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v4, "SShareCommon"

    const-string/jumbo v5, "Exception !!! during getting more actions"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_a
    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    if-eq v4, v2, :cond_7

    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    if-eq v4, v6, :cond_7

    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconQuickConnect:I

    if-eq v4, v2, :cond_7

    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconPrint:I

    if-eq v4, v2, :cond_7

    move v2, v3

    goto :goto_3
.end method

.method private getPageModeSupportState()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->isDesktopModeEnabled()Z

    move-result v2

    if-eqz v1, :cond_0

    sget-boolean v3, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getQuickConnectSupportState()Z
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.oneconnect"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return v2
.end method

.method private getResolverGuideSupportState(Landroid/content/Intent;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->isUSA()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isIntentFileUriScheme(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

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

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getShareLinkSupportState(Landroid/content/Intent;)Z
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->checkSimpleShareSupport()Z

    move-result v1

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/share/SShareCommon;->isKnoxModeEnabled()Z

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->isEmergencyOrUPSModeEnabled()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isForceSimpleSharingDisable(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v5, "SShareCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "featureEnable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " intentSupport = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " knoxMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " emergencyMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " forceDisable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5

    :cond_1
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    const/4 v5, 0x1

    return v5
.end method

.method private getSimpleSharingSupportState(Landroid/content/Intent;)Z
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->checkSimpleShareSupport()Z

    move-result v1

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/share/SShareCommon;->isKnoxModeEnabled()Z

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->isEmergencyOrUPSModeEnabled()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isForceSimpleSharingDisable(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v5, "SShareCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "featureEnable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " intentSupport = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " knoxMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " emergencyMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " forceDisable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5

    :cond_1
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    const/4 v5, 0x1

    return v5
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

.method private isDesktopModeEnabled()Z
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

.method private isEmergencyOrUPSModeEnabled()Z
    .locals 6

    const/16 v5, 0x200

    iget-object v4, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v3

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v2

    :cond_2
    const/4 v0, 0x0

    if-nez v1, :cond_5

    :goto_2
    return v3

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

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

.method private setButtonsFeature()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getButtonsSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getButtonShapeSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShowButtonShapes:Z

    :cond_0
    return-void
.end method

.method private setGridResolverFeature()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportGridResolver:Z

    return-void
.end method

.method private setLoggingFeature()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareConstants;->ENABLE_SURVEY_MODE:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportLogging:Z

    return-void
.end method

.method private setMoreActionsFeature(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->getMoreActionsSupportState(Landroid/content/Intent;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportMoreActions:Z

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getEnhancedMoreActionsSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportEnhancedMoreActions:Z

    return-void
.end method

.method private setPageModeFeature()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getPageModeSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportPageMode:Z

    return-void
.end method

.method private setQuickConnectFeature()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportNearby:Z

    return-void
.end method

.method private setRecentSortFeature()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportPageMode:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportRecentSort:Z

    return-void
.end method

.method private setResolverGuideFeature(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->getResolverGuideSupportState(Landroid/content/Intent;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportResolverGuide:Z

    return-void
.end method

.method private setShareLinkFeature(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->getShareLinkSupportState(Landroid/content/Intent;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShareLink:Z

    return-void
.end method

.method private setShareLinkLayoutFeature()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getShareLinkLayoutSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShareLinkLayout:Z

    return-void
.end method

.method private setSimpleSharingFeature(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->getSimpleSharingSupportState(Landroid/content/Intent;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportSimpleSharing:Z

    return-void
.end method


# virtual methods
.method public getChangePlayerEnable()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    return v0
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

.method public getSupportButtons()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    return v0
.end method

.method public getSupportEnhancedMoreActions()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportEnhancedMoreActions:Z

    return v0
.end method

.method public getSupportGridResolver()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportGridResolver:Z

    return v0
.end method

.method public getSupportLogging()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportLogging:Z

    return v0
.end method

.method public getSupportMoreActions()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportMoreActions:Z

    return v0
.end method

.method public getSupportNearby()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportNearby:Z

    return v0
.end method

.method public getSupportPageMode()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportPageMode:Z

    return v0
.end method

.method public getSupportRecentSort()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportRecentSort:Z

    return v0
.end method

.method public getSupportResolverGuide()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportResolverGuide:Z

    return v0
.end method

.method public getSupportShareLink()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShareLink:Z

    return v0
.end method

.method public getSupportShareLinkLayout()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShareLinkLayout:Z

    return v0
.end method

.method public getSupportShowButtonShapes()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShowButtonShapes:Z

    return v0
.end method

.method public getSupportSimpleSharing()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportSimpleSharing:Z

    return v0
.end method

.method public isDeviceDefaultTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/share/SShareCommon;->mDeviceDefault:Z

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
    .locals 3

    iget v1, p0, Lcom/samsung/android/share/SShareCommon;->mLaunchedFromUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setResolverGuideIntent(Landroid/app/Activity;Landroid/content/Intent;Z)V
    .locals 6

    sget-boolean v4, Lcom/samsung/android/share/SShareCommon;->mIsSupportResolverGuide:Z

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v0, 0x0

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v4, "android"

    const-string/jumbo v5, "com.android.internal.app.ResolverGuideActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "extra_safe_forward"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x800000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iput-object v3, p0, Lcom/samsung/android/share/SShareCommon;->mResolverGuideIntent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "SShareCommon"

    const-string/jumbo v5, "Class Not Found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v4, "SShareCommon"

    const-string/jumbo v5, "Activity Not Found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
