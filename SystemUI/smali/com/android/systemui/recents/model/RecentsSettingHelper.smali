.class public Lcom/android/systemui/recents/model/RecentsSettingHelper;
.super Ljava/lang/Object;
.source "RecentsSettingHelper.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/recents/model/PluginRecentsSettingHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsSettingHelper$1;,
        Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;,
        Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;,
        Lcom/android/systemui/recents/model/RecentsSettingHelper$UserSwitchObserver;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAppLockObserver:Landroid/database/ContentObserver;

.field private mApplicationIconChangedByMDM:Z

.field private mApplicationNameChangedByMDM:Z

.field private mButtonShapeEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentProfiledUserId:I

.field private mDarkFontEnabled:Z

.field private mDesktopModeListener:Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;

.field private mEmergencyModeEnabled:Z

.field private mGearVrDocked:Z

.field private mGearVrMode:Z

.field private mGearVrRecentMode:I

.field private final mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

.field private mHideSecureFolderTask:Z

.field private mIconTraySettingEnabled:I

.field private mIsDesktopMode:Z

.field private mPrivateModeEnabled:Z

.field private mThemePackageName:Ljava/lang/String;

.field private mUPSModeEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/model/RecentsSettingHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mCurrentProfiledUserId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mDarkFontEnabled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mEmergencyModeEnabled:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/model/RecentsSettingHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIconTraySettingEnabled:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIsDesktopMode:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeEnabled:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mApplicationIconChangedByMDM:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mApplicationNameChangedByMDM:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/recents/model/RecentsSettingHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIconTraySettingEnabled:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIsDesktopMode:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeEnabled:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/systemui/recents/model/RecentsSettingHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mThemePackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mButtonShapeEnabled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/recents/model/RecentsSettingHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mCurrentProfiledUserId:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mDarkFontEnabled:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mEmergencyModeEnabled:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrDocked:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrMode:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/recents/model/RecentsSettingHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrRecentMode:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mHideSecureFolderTask:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isApplicationIconChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isApplicationNameChanged()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mAppLockObserver:Landroid/database/ContentObserver;

    iput-boolean v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrDocked:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrMode:Z

    iput v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrRecentMode:I

    new-instance v0, Lcom/android/systemui/recents/model/RecentsSettingHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper$1;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->register()V

    return-void
.end method

.method private isApplicationIconChanged()Z
    .locals 2

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/ApplicationPolicy;->isAnyApplicationIconChangedAsUser(I)Z

    move-result v0

    return v0
.end method

.method private isApplicationNameChanged()Z
    .locals 2

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/ApplicationPolicy;->isAnyApplicationNameChangedAsUser(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "PrivateMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isPrivateModeEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " UPSM="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " EmergencyMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isEmergencyModeEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " DarkFont="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDarkFontEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " ButtonShape="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isButtonShapeEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " OpenThemePackage="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "HideSecureFolder="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->hideSecureFolderTask()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " AppNameChanged="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isApplicationNameChangedByMDM()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " AppIconChanged="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isApplicationIconChangedByMDM()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v1, " DesktopMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIsDesktopMode:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " GearVrDocked="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrDocked:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " GearVrMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrMode:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " GearVrRecentMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrRecentMode:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public hideSecureFolderTask()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mHideSecureFolderTask:Z

    return v0
.end method

.method public isApplicationIconChangedByMDM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mApplicationIconChangedByMDM:Z

    return v0
.end method

.method public isApplicationNameChangedByMDM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mApplicationNameChangedByMDM:Z

    return v0
.end method

.method public isButtonShapeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mButtonShapeEnabled:Z

    return v0
.end method

.method public isDarkFontEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mDarkFontEnabled:Z

    return v0
.end method

.method public isDesktopMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIsDesktopMode:Z

    return v0
.end method

.method public isEmergencyModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mEmergencyModeEnabled:Z

    return v0
.end method

.method public isGearVrDocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrDocked:Z

    return v0
.end method

.method public isGearVrRecentsEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrRecentMode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isGearVrRecentsIncludeVrTasks()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrRecentMode:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isGearVrRecentsOverrideRecents()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrRecentMode:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isGearVrRecentsUseVrTransition()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrRecentMode:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOpenThemeApplied()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mThemePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrivateModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeEnabled:Z

    return v0
.end method

.method public isUPSModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeEnabled:Z

    return v0
.end method

.method public register()V
    .locals 13

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "personal_mode_enabled"

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_3

    move v9, v7

    :goto_0
    iput-boolean v9, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeEnabled:Z

    const-string/jumbo v9, "personal_mode_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/model/RecentsSettingHelper$2;

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/model/RecentsSettingHelper$2;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual {v1, v9, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "ultra_powersaving_mode"

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-ne v9, v7, :cond_4

    move v9, v7

    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeEnabled:Z

    const-string/jumbo v9, "ultra_powersaving_mode"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/model/RecentsSettingHelper$3;

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/model/RecentsSettingHelper$3;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual {v1, v9, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "emergency_mode"

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-ne v9, v7, :cond_5

    move v9, v7

    :goto_2
    iput-boolean v9, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mEmergencyModeEnabled:Z

    const-string/jumbo v9, "emergency_mode"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/model/RecentsSettingHelper$4;

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/model/RecentsSettingHelper$4;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual {v1, v9, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v9, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mAppLockObserver:Landroid/database/ContentObserver;

    if-nez v9, :cond_0

    new-instance v9, Lcom/android/systemui/recents/model/RecentsSettingHelper$5;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/recents/model/RecentsSettingHelper$5;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mAppLockObserver:Landroid/database/ContentObserver;

    const-string/jumbo v9, "app_lock_enabled"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mAppLockObserver:Landroid/database/ContentObserver;

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual {v1, v9, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "need_dark_font"

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-ne v9, v7, :cond_6

    move v9, v7

    :goto_3
    iput-boolean v9, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mDarkFontEnabled:Z

    const-string/jumbo v9, "need_dark_font"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/model/RecentsSettingHelper$6;

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/model/RecentsSettingHelper$6;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual {v1, v9, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "show_button_background"

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-ne v9, v7, :cond_7

    move v9, v7

    :goto_4
    iput-boolean v9, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mButtonShapeEnabled:Z

    const-string/jumbo v9, "show_button_background"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/model/RecentsSettingHelper$7;

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/model/RecentsSettingHelper$7;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual {v1, v9, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v5, Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    new-instance v9, Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;

    invoke-direct {v9, p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;)V

    iput-object v9, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mDesktopModeListener:Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mDesktopModeListener:Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerDesktopModeListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isDesktopMode()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIsDesktopMode:Z

    iget-object v9, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "tap_to_icon"

    const/4 v11, -0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIconTraySettingEnabled:I

    new-instance v4, Lcom/android/systemui/recents/model/RecentsSettingHelper$8;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v9}, Lcom/android/systemui/recents/model/RecentsSettingHelper$8;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    const-string/jumbo v9, "tap_to_icon"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-virtual {v1, v9, v10, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "current_sec_appicon_theme_package"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-virtual {v1, v9, v10, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v9, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableOpenThemeLayout:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "current_sec_active_themepackage"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mThemePackageName:Ljava/lang/String;

    const-string/jumbo v9, "current_sec_active_themepackage"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/model/RecentsSettingHelper$9;

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/model/RecentsSettingHelper$9;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual {v1, v9, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    iget-object v9, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "hide_secure_folder_flag"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_8

    :goto_5
    iput-boolean v7, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mHideSecureFolderTask:Z

    const-string/jumbo v7, "hide_secure_folder_flag"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/model/RecentsSettingHelper$10;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/recents/model/RecentsSettingHelper$10;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v7, "content://com.sec.knox.provider2/ApplicationPolicy/getApplicationNameFromDb"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isApplicationNameChanged()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mApplicationNameChangedByMDM:Z

    invoke-direct {p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isApplicationIconChanged()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mApplicationIconChangedByMDM:Z

    new-instance v7, Lcom/android/systemui/recents/model/RecentsSettingHelper$11;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8, v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper$11;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;Landroid/net/Uri;)V

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v1, v0, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mCurrentProfiledUserId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/model/RecentsSettingHelper$UserSwitchObserver;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/recents/model/RecentsSettingHelper$UserSwitchObserver;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Lcom/android/systemui/recents/model/RecentsSettingHelper$UserSwitchObserver;)V

    iget-object v9, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->TAG:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    :try_start_2
    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/Rune;->hasHmtFeature(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "vr_recents_mode"

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getGlobalSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrRecentMode:I

    const-string/jumbo v7, "vr_recents_mode"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/model/RecentsSettingHelper$12;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/recents/model/RecentsSettingHelper$12;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v1, v7, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v7, "vr"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrManagerService;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_3
    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    invoke-interface {v6, v7}, Lcom/samsung/android/vr/IGearVrManagerService;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_7
    return-void

    :cond_3
    move v9, v8

    goto/16 :goto_0

    :cond_4
    move v9, v8

    goto/16 :goto_1

    :cond_5
    move v9, v8

    goto/16 :goto_2

    :cond_6
    move v9, v8

    goto/16 :goto_3

    :cond_7
    move v9, v8

    goto/16 :goto_4

    :cond_8
    move v7, v8

    goto/16 :goto_5

    :catch_0
    move-exception v2

    :try_start_4
    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Exception during register UserSwitchObserver "

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_2
    move-exception v2

    :try_start_5
    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to register GearVR state listener: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7
.end method
