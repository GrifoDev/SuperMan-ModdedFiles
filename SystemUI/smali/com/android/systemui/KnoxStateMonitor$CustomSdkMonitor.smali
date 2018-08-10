.class Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;
.super Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomSdkMonitor"
.end annotation


# instance fields
.field private mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

.field private mChargerConnectionSoundEnabledState:Z

.field private mHideNotificationMessages:I

.field private mIsCustomSdkStatusBarHidden:Z

.field private mKnoxCustomDoubleTapState:Z

.field private mKnoxCustomLockScreenHiddenItems:I

.field private mKnoxCustomLockScreenOverrideMode:I

.field private mKnoxCustomQuickPanelButtonUsers:Z

.field private mKnoxCustomQuickPanelButtons:I

.field private mKnoxCustomQuickPanelEditMode:I

.field private mKnoxCustomUnlockSimOnBootState:Z

.field private mQuickPanelItems:Ljava/lang/String;

.field private mStatusBarIconsState:Z

.field private mStatusBarMode:I

.field private mStatusBarNotificationsState:Z

.field private mStatusBarText:Ljava/lang/String;

.field private mStatusBarTextSize:I

.field private mStatusBarTextStyle:I

.field private mStatusBarTextWidth:I

.field private mUnlockSimPin:Ljava/lang/String;

.field private mVolumePanelEnabledState:Z

.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarMode:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    return v0
.end method

.method public constructor <init>(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    iput-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    iput-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    iput-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    iput-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    iput-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    iput-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    iput v1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    iput v1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    iput v2, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarMode:I

    iput v1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    iput v1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    iput v1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    iput v1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    iput-object v3, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->registerCallback()V

    return-void
.end method

.method private registerCallback()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v2, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerCallback this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->registerSystemUICallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "registerSystemUICallback() cannot reference because privateCustomDeviceManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "registerSystemUICallback() Failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    return-object v0
.end method

.method public getQuickPanelItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    return-object v5
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusBarTextSize()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    return v0
.end method

.method public getStatusBarTextStyle()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    return v0
.end method

.method public getStatusBarTextWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    return v0
.end method

.method public getUnlockSimPin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    return-object v0
.end method

.method public isBatteryNotificationEnabled()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isBrightnessControllerEnabled()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isCarrierTextEnabled()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isChargerConnectionSoundEnabledState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    return v0
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isLockscreenAllDisabled()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit16 v0, v0, 0x3ff

    const/16 v1, 0x3ff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLockscreenBatteryInfoEnabled()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockscreenClockEnabled()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockscreenDateEnabled()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockscreenHelpTextEnabled()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockscreenOwnerInfoEnabled()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPanelExpandEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    return v0
.end method

.method public isQuickConnectEnabled()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isQuickSettingEditEnabled()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSafetyWarningDialogEnabled()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSetToSwipeLock()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isStatusBarDoubleTapEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    return v0
.end method

.method public isStatusBarHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    return v0
.end method

.method public isStatusBarIconsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    return v0
.end method

.method public isUnlockSimOnBootState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    return v0
.end method

.method public isUsersEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    return v0
.end method

.method public isVolumePanelEnabledState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    return v0
.end method

.method public setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V
    .locals 2

    const/16 v1, 0x139a

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setChargerConnectionSoundEnabledState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    :cond_0
    return-void
.end method

.method public setHideNotificationMessages(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    :cond_0
    return-void
.end method

.method public setLockScreenHiddenItems(I)V
    .locals 2

    const/16 v1, 0x1392

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setLockScreenOverrideMode(I)V
    .locals 2

    const/16 v1, 0x1393

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setQuickPanelButtonUsers(Z)V
    .locals 2

    const/16 v1, 0x139f

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setQuickPanelButtons(I)V
    .locals 2

    const/16 v1, 0x1394

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setQuickPanelEditMode(I)V
    .locals 2

    const/16 v1, 0x1395

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setQuickPanelItems(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x1396

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public setScreenOffOnStatusBarDoubleTapState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    return-void
.end method

.method public setStatusBarHidden(Z)V
    .locals 2

    const/16 v1, 0x139b

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setStatusBarIconsState(Z)V
    .locals 2

    const/16 v1, 0x1399

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setStatusBarNotificationsState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    :cond_0
    return-void
.end method

.method public setStatusBarTextInfo(Ljava/lang/String;III)V
    .locals 2

    const/16 v1, 0x1397

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    if-eqz v0, :cond_3

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    iput p3, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    iput p4, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    if-eq v0, p4, :cond_2

    goto :goto_0
.end method

.method public setUnlockSimOnBootState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    :cond_0
    return-void
.end method

.method public setUnlockSimPin(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setVolumePanelEnabledState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    :cond_0
    return-void
.end method
