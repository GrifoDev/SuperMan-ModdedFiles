.class public Lcom/android/settings/wfd/WifiDisplaySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wfd/WifiDisplaySettings$10;,
        Lcom/android/settings/wfd/WifiDisplaySettings$11;,
        Lcom/android/settings/wfd/WifiDisplaySettings$12;,
        Lcom/android/settings/wfd/WifiDisplaySettings$1;,
        Lcom/android/settings/wfd/WifiDisplaySettings$2;,
        Lcom/android/settings/wfd/WifiDisplaySettings$3;,
        Lcom/android/settings/wfd/WifiDisplaySettings$4;,
        Lcom/android/settings/wfd/WifiDisplaySettings$5;,
        Lcom/android/settings/wfd/WifiDisplaySettings$6;,
        Lcom/android/settings/wfd/WifiDisplaySettings$7;,
        Lcom/android/settings/wfd/WifiDisplaySettings$8;,
        Lcom/android/settings/wfd/WifiDisplaySettings$9;,
        Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;,
        Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;,
        Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;,
        Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;,
        Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    }
.end annotation


# static fields
.field private static final SS_WFD_SERVICE_WITH_GCAST:Z

.field public static mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public PlayerType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private changeString:Ljava/lang/String;

.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private endConnect:Landroid/view/MenuItem;

.field private extraCauseOfStart:I

.field private isChanged:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mAvFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private mChange_device_info:Landroid/widget/LinearLayout;

.field private mConnectTypeForLogging:Ljava/lang/String;

.field private mConnectingAddressForSmartSchool:Ljava/lang/String;

.field private mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

.field private mContext:Landroid/content/Context;

.field private mDeviceNameErrorText:Landroid/widget/TextView;

.field protected mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

.field private mDlnaHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mDlnaList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mDlnaServiceConnectListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

.field private mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

.field private mEmptyView:Landroid/widget/TextView;

.field private mGalleryUri:Landroid/content/Intent;

.field private mGlobalEditDeviceName:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private final mImageFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private mInPickerDialog:Z

.field private mIsKnoxMode:Z

.field private mMenu:Landroid/view/ContextMenu;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mNo_device_found_layout:Landroid/widget/LinearLayout;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mPendingChanges:I

.field private mPinConnectionRequested:Z

.field private mPlayerType:I

.field private mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

.field private mReadyToConnect:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameDialog:Landroid/app/AlertDialog;

.field private final mRestartScan:Ljava/lang/Runnable;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private final mScanTimeout:Ljava/lang/Runnable;

.field private final mScreenSharingFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private final mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStartWithConnectedState:Z

.field private mStarted:Z

.field private mTempDeviceName:Ljava/lang/String;

.field protected mTurningWifiDisplayOn:Z

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

.field protected mWifiDisplayOnSetting:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private preChecked:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mImageFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScreenSharingFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTempDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceNameErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTempDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isAnyDeviceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->prepareConnection()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings/wfd/WifiDisplaySettings;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setPreferenceScreenEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showDisconnectDialog()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->showOptionsDialog(Landroid/hardware/display/SemWifiDisplay;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getScreenSharingP2pMacAddr(Lcom/samsung/android/allshare/Device;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semGetDlnaDeviceUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDevice()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->handlePreferenceScreenEnabled(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x138e4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    const-string/jumbo v0, "QIC_SET"

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "TYPE_VIDEO"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "TYPE_IMAGE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "TYPE_MUSIC"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "TYPE_MUSIC_CHN"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->PlayerType:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceConnectListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mImageFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScreenSharingFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$9;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$10;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$11;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$12;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    return-void
.end method

.method private applyState(Z)V
    .locals 37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->getFeatureState()I

    move-result v16

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "applyState = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v32, 0x1

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4

    :cond_0
    const/16 v32, 0x3

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v32

    if-nez v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    move/from16 v32, v0

    if-nez v32, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v32, v0

    if-nez v32, :cond_7

    const/16 v32, 0x2

    move/from16 v0, v32

    if-eq v5, v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v32

    if-eqz v32, :cond_7

    :cond_3
    const-string/jumbo v33, "WifiDisplaySettings"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v32

    if-eqz v32, :cond_6

    const-string/jumbo v32, "GCast"

    :goto_1
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v34, " is connected.. Settings finish()"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    return-void

    :cond_4
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    goto/16 :goto_0

    :cond_5
    const/16 v32, 0x2

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-nez v32, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v32, "SemWifiDisplay"

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-nez v32, :cond_a

    const/16 v32, 0x2

    move/from16 v0, v16

    move/from16 v1, v32

    if-eq v0, v1, :cond_8

    const/16 v32, 0x1

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    :cond_8
    const-string/jumbo v32, "WifiDisplaySettings"

    const-string/jumbo v33, "SemWifiDisplay is disconnected.. Settings finish()"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/android/settings/wfd/WfdPickerDialog;

    move/from16 v32, v0

    if-eqz v32, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    :cond_9
    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v32, v0

    if-nez v32, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v32

    if-eqz v32, :cond_b

    const-string/jumbo v32, "WifiDisplaySettings"

    const-string/jumbo v33, "Dlna is connected.. Settings finish()"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    return-void

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v32

    if-nez v32, :cond_c

    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_c
    const/16 v32, 0x3

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_40

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->getDisplays()[Landroid/hardware/display/SemWifiDisplay;

    move-result-object v12

    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "applyState displays.length = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    array-length v0, v12

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/util/ArrayList;

    array-length v0, v12

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v32, 0x0

    array-length v0, v12

    move/from16 v33, v0

    :goto_2
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    aget-object v10, v12, v32

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->isAvailable()Z

    move-result v34

    if-eqz v34, :cond_d

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    :cond_e
    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/display/SemWifiDisplay;

    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "applyState availableDisplays.length = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    array-length v0, v6

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v32

    if-eqz v32, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    move/from16 v32, v0

    if-eqz v32, :cond_12

    const/16 v32, 0x0

    array-length v0, v6

    move/from16 v33, v0

    :goto_3
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_f

    aget-object v10, v6, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_11

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForPrevDisconnect:Z

    :cond_f
    :goto_4
    if-eqz p1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_10
    return-void

    :cond_11
    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v32

    if-nez v32, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/Collection;->size()I

    move-result v15

    const/16 v29, 0x0

    const/16 v25, 0x0

    sget-boolean v32, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v32, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v29

    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "routeCount : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    :goto_5
    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v28

    const/16 v32, 0x4

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v32

    if-eqz v32, :cond_13

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_13

    add-int/lit8 v25, v25, 0x1

    :cond_13
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/hardware/display/DisplayManager;->semGetLastConnectedDisplay(Z)Landroid/hardware/display/SemWifiDisplay;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->semGetLastConnectedDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v21

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getLastConnectedGCastDevice()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wfd/Wfd_Certification;->getCertificationModeOn()Z

    move-result v32

    if-eqz v32, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/Wfd_Certification;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V

    :cond_15
    if-eqz v4, :cond_29

    const/16 v32, 0x2

    move/from16 v0, v32

    if-ne v5, v0, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    return-void

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v32, v0

    if-nez v32, :cond_19

    new-instance v32, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v9

    const/16 v32, 0xa

    move/from16 v0, v32

    if-eq v9, v0, :cond_17

    const/16 v32, 0xd

    move/from16 v0, v32

    if-ne v9, v0, :cond_1a

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_18
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDlnaPreference(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_7

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_6

    :cond_1a
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v4, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/SemWifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_1b
    array-length v0, v6

    move/from16 v32, v0

    if-nez v32, :cond_1c

    if-nez v25, :cond_1c

    if-nez v15, :cond_1c

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v32

    if-eqz v32, :cond_27

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1d

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v32

    if-eqz v32, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    :cond_1d
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    move/from16 v32, v0

    if-nez v32, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-eqz v32, :cond_f

    :cond_1e
    array-length v0, v6

    move/from16 v32, v0

    if-nez v32, :cond_1f

    if-nez v25, :cond_1f

    if-nez v15, :cond_1f

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v32

    if-eqz v32, :cond_2c

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wfd/WfdPickerDialog;->IsChangeDevice()Z

    move-result v32

    if-eqz v32, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_a
    if-eqz v20, :cond_20

    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "applyState lastConnectedDisplay.getDeviceName() = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", lastConnectedDisplay.getDeviceAddress() = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "applyState mDlnaList = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getBssid()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getFrequency()I

    move-result v17

    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "bssid : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", frequency : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_21
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_23

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportMirroring()Z

    move-result v19

    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    :goto_b
    if-nez v32, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v32

    if-eqz v32, :cond_30

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semGetDlnaDeviceUid()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_30

    :cond_22
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v32

    if-nez v32, :cond_21

    if-eqz v19, :cond_33

    if-eqz v20, :cond_33

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_33

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v8, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->canConnectTDLS(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Ljava/lang/String;I)Z

    move-result v32

    if-eqz v32, :cond_33

    if-nez v5, :cond_33

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_21

    const-string/jumbo v33, "WifiDisplaySettings"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "last connect to "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    if-eqz v19, :cond_34

    const-string/jumbo v32, "sharing"

    :goto_e
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v34, " device"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    if-eqz v19, :cond_35

    sget-object v32, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    :goto_f
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v13, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    :cond_23
    const/16 v32, 0x0

    array-length v0, v6

    move/from16 v33, v0

    :goto_10
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_3b

    aget-object v10, v6, v32

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_24
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_25

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    const-string/jumbo v34, "WifiDisplaySettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "SemWifiDisplay Mac Address = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " Dlna Mac Address = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_24

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v8, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->canConnectTDLS(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Ljava/lang/String;I)Z

    move-result v34

    if-eqz v34, :cond_24

    const/4 v7, 0x1

    :cond_25
    if-eqz v7, :cond_36

    :cond_26
    :goto_11
    add-int/lit8 v32, v32, 0x1

    goto :goto_10

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    goto/16 :goto_9

    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v32

    if-eqz v32, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2a
    :goto_12
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semGetDlnaDeviceUid()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_2a

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2a

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDlnaPreference(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_12

    :cond_2b
    sget-boolean v32, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v32, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v32

    if-eqz v32, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v32, v0

    const/16 v33, 0x4

    invoke-virtual/range {v32 .. v33}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v30

    if-eqz v30, :cond_1d

    const-string/jumbo v32, "WifiDisplaySettings"

    const-string/jumbo v33, "addPreference connected GCast"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_f

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v32

    if-eqz v32, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    goto/16 :goto_4

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    :cond_2f
    const/16 v32, 0x0

    goto/16 :goto_b

    :cond_30
    if-eqz v19, :cond_31

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v8, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->canConnectTDLS(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Ljava/lang/String;I)Z

    move-result v32

    if-nez v32, :cond_32

    :cond_31
    if-nez v19, :cond_22

    :cond_32
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDlnaPreference(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    :cond_33
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v32, v0

    if-nez v32, :cond_21

    if-eqz v21, :cond_21

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/display/SemDlnaDevice;->getUid()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_21

    goto/16 :goto_d

    :cond_34
    const-string/jumbo v32, "dlna"

    goto/16 :goto_e

    :cond_35
    sget-object v32, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    goto/16 :goto_f

    :cond_36
    const-string/jumbo v34, "WifiDisplaySettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "applyState add wfd device = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10, v4}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v34

    if-nez v34, :cond_37

    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v10, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/SemWifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingAddressForSmartSchool:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v34, v0

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_38

    if-nez v5, :cond_38

    const-string/jumbo v34, "WifiDisplaySettings"

    const-string/jumbo v35, "connect for smart-school"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v34, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingAddressForSmartSchool:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplay(Ljava/lang/String;)V

    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingAddressForSmartSchool:Ljava/lang/String;

    goto/16 :goto_11

    :cond_38
    if-eqz v20, :cond_39

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v34

    if-eqz v34, :cond_39

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v34, v0

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_39

    if-nez v5, :cond_39

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v34

    if-eqz v34, :cond_3a

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/settings/wfd/Wfd_Certification;->getCertificationModeOn()Z

    move-result v34

    if-nez v34, :cond_26

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v34

    if-nez v34, :cond_26

    if-nez v5, :cond_26

    array-length v0, v6

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v34, v0

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_26

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v34

    if-nez v34, :cond_26

    const-string/jumbo v34, "WifiDisplaySettings"

    const-string/jumbo v35, "Only one device found"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v34, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v10, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    goto/16 :goto_11

    :cond_3a
    const-string/jumbo v34, "WifiDisplaySettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "connectLastConnection deviceInfo="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceInfo()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v34, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v10, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    goto/16 :goto_11

    :cond_3b
    sget-boolean v32, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v32, :cond_2d

    const/16 v18, 0x0

    :goto_13
    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v28

    const/16 v32, 0x4

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v32

    if-eqz v32, :cond_3c

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_3c

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v33, v0

    const/16 v34, 0x4

    invoke-virtual/range {v33 .. v34}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3d

    :cond_3c
    :goto_14
    add-int/lit8 v18, v18, 0x1

    goto :goto_13

    :cond_3d
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v30

    if-eqz v30, :cond_3e

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_3e
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "route.getName() = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_3c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_3c

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3c

    const-string/jumbo v32, "WifiDisplaySettings"

    const-string/jumbo v33, "last connect to GCast device."

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v32, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    goto/16 :goto_14

    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    goto/16 :goto_4

    :cond_40
    const/16 v32, 0x2

    move/from16 v0, v16

    move/from16 v1, v32

    if-eq v0, v1, :cond_41

    const/16 v32, 0x1

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const-string/jumbo v33, "device_policy"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_42

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-eqz v32, :cond_44

    :cond_42
    if-eqz v23, :cond_43

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->semGetAllowWifi(Landroid/content/ComponentName;)Z

    move-result v32

    if-eqz v32, :cond_44

    :cond_43
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    move/from16 v32, v0

    if-nez v32, :cond_f

    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    move-object/from16 v32, v0

    if-eqz v32, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog;->cancel()V

    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->closeContextMenu()V

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setGuidedActionBarClickable(Z)V

    goto/16 :goto_4
.end method

.method private canConnectTDLS(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportTDLS()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getWlanFrequency()I

    move-result v1

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private connectAllShareFW()V
    .locals 6

    const-string/jumbo v3, "WifiDisplaySettings"

    const-string/jumbo v4, "connectAllShareFW"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v3, "WifiDisplaySettings"

    const-string/jumbo v4, "ServiceConnector.createServiceProvider"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceConnectListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    const-string/jumbo v5, "com.samsung.android.allshare.media"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/allshare/ServiceConnector;->createServiceProvider(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectAllShareFW - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectAllShareFW - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string/jumbo v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectAllShareFW - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private connectDlna(Ljava/lang/String;Z)V
    .locals 4

    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connectDlna device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.screensharing.DLNA_CONNECTION_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "resume_request"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "player_type"

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send Intent DLNA_CONNECTION_REQUEST : uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", resume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    goto :goto_0
.end method

.method private connectGCast(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connectGCast route = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    :cond_0
    return-void
.end method

.method private connectScreenSharing()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v2, v4, :cond_0

    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v4, "connectScreenSharing ConnectingDevice.mType == ConnectionType.NA"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v2, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->-get0(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "gcast"

    const v5, 0x2208a

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v4, v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->-get0(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectGCast(Landroid/media/MediaRouter$RouteInfo;)V

    :goto_0
    const-string/jumbo v2, "CONN"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isVideoRunningOnTop(Landroid/content/Context;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v2, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v13, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v13}, Landroid/hardware/display/SemWifiDisplay;->getDeviceInfo()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    invoke-virtual {v13}, Landroid/hardware/display/SemWifiDisplay;->getDeviceInfo()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    :cond_2
    const/4 v15, 0x1

    :goto_1
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectScreenSharing : SemWifiDisplay Info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , devInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Landroid/hardware/display/SemWifiDisplay;->getDeviceInfo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v11

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    if-eqz v16, :cond_5

    move v2, v15

    :goto_2
    iput-boolean v2, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-boolean v5, v5, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    const/16 v6, 0xb

    invoke-virtual {v2, v6, v4, v5}, Landroid/hardware/display/DisplayManager;->semConnectWifiDisplay(ILjava/lang/String;Z)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100303

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v4, v2

    :goto_4
    if-eqz v15, :cond_8

    const-string/jumbo v2, "3"

    :goto_5
    const/16 v6, 0x1f3f

    invoke-static {v5, v6, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    const-string/jumbo v4, "CNTP"

    if-eqz v15, :cond_9

    const-string/jumbo v2, "SCR_SHA"

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100300

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v4, v2

    goto :goto_4

    :cond_8
    const-string/jumbo v2, "1"

    goto :goto_5

    :cond_9
    const-string/jumbo v2, "SCR_MIR"

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v12, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getWlanMacAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportTDLS()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v18, :cond_b

    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start TDLS with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4}, Landroid/net/wifi/WifiManager;->startMediaShare(Ljava/lang/String;Z)V

    :cond_b
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportMirroring()Z

    move-result v15

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isOnlySupportsAudio()Z

    move-result v14

    const-string/jumbo v4, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectScreenSharing : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v15, :cond_e

    const-string/jumbo v2, "ScreenSharingDevice Info "

    :goto_7
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getModelName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " isOnlySupportsAudio : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v14, :cond_f

    const-string/jumbo v2, "True"

    :goto_8
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    if-nez v2, :cond_c

    if-eqz v14, :cond_10

    :cond_c
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v19, v0

    const-string/jumbo v4, "7236"

    const-string/jumbo v6, ""

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-boolean v9, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIcon()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v5, 0xd

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/settings/wfd/WifiDisplaySettings;->setParamData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->enableWifiDisplay(Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDLNA()Lcom/samsung/android/allshare/Device;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/allshare/ScreenSharingDevice;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->sendScreenSharingTriggerMsg(Lcom/samsung/android/allshare/ScreenSharingDevice;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-boolean v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    if-eqz v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->updateDlnaList()V

    :cond_d
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100303

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v4, v2

    :goto_c
    if-eqz v15, :cond_16

    const-string/jumbo v2, "3"

    :goto_d
    const/16 v6, 0x1f3f

    invoke-static {v5, v6, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    const-string/jumbo v4, "CNTP"

    if-eqz v15, :cond_17

    const-string/jumbo v2, "SCR_SHA"

    :goto_e
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v2, "DlnaDevice Info "

    goto/16 :goto_7

    :cond_f
    const-string/jumbo v2, "False"

    goto/16 :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    if-eqz v16, :cond_11

    move v2, v15

    :goto_f
    iput-boolean v2, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    goto/16 :goto_9

    :cond_11
    const/4 v2, 0x0

    goto :goto_f

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v19, v0

    const-string/jumbo v4, "7236"

    const-string/jumbo v6, ""

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-boolean v9, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIcon()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v5, 0xa

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/settings/wfd/WifiDisplaySettings;->setParamData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->enableWifiDisplay(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_13
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "mirroring"

    const v5, 0x2208a

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v4, v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    if-nez v2, :cond_d

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "dlna"

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v5

    const v6, 0x2208a

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2, v4, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectDlna(Ljava/lang/String;Z)V

    goto/16 :goto_b

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100300

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v4, v2

    goto/16 :goto_c

    :cond_16
    const-string/jumbo v2, "2"

    goto/16 :goto_d

    :cond_17
    const-string/jumbo v2, "DLNA"

    goto/16 :goto_e
.end method

.method private connectWifiDisplay(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "connectWifiDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    return-void
.end method

.method private connectWifiDisplayWithPin(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "connectWifiDisplayWithPin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    return-void
.end method

.method private createDlnaPreference(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;
    .locals 2

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)V

    return-object v0
.end method

.method private createDongleRenameDialog()Landroid/app/AlertDialog;
    .locals 18

    const/16 v2, 0x17

    const/16 v3, 0x17

    const/4 v15, 0x2

    new-array v7, v15, [Landroid/text/InputFilter;

    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$16;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$16;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    const/16 v16, 0x0

    aput-object v15, v7, v16

    new-instance v15, Landroid/text/InputFilter$LengthFilter;

    const/16 v16, 0x18

    invoke-direct/range {v15 .. v16}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/16 v16, 0x1

    aput-object v15, v7, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string/jumbo v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const v15, 0x7f040316

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v15, 0x7f11070b

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    const v15, 0x7f11070c

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceNameErrorText:Landroid/widget/TextView;

    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    const v15, 0x7f11070d

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    const v15, 0x7f11070e

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v15, "~`!@$%^&*()-_=+[];\\:\'\",<.>/?"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v15, 0x6

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    const/16 v15, 0x4000

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v12, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v15}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z

    if-nez v15, :cond_1

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    new-instance v11, Lcom/android/settings/wfd/WifiDisplaySettings$17;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$17;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)V

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {v12}, Landroid/widget/EditText;->selectAll()V

    const-string/jumbo v15, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/wfd/WifiDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    new-instance v15, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x7f0b0e27

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f0b152e

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/android/settings/wfd/WifiDisplaySettings$18;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$18;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/SemWifiDisplay;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f0b152f

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/android/settings/wfd/WifiDisplaySettings$19;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$19;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;Landroid/widget/EditText;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$20;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$20;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$21;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Lcom/android/settings/wfd/WifiDisplaySettings$21;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v15, -0x1

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$22;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v13, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$22;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v6

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    return-object v1

    :cond_0
    return-object v2
.end method

.method private createWifiDisplayPreference(Landroid/hardware/display/SemWifiDisplay;Z)Landroid/preference/Preference;
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/SemWifiDisplay;)V

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v4

    if-eqz v4, :cond_2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p2, :cond_1

    const v4, 0x7f040349

    invoke-virtual {v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setWidgetLayoutResource(I)V

    :cond_1
    return-object v2

    :pswitch_1
    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v5, "SemWifiDisplayStatus.DISPLAY_STATE_CONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v5, "SemWifiDisplayStatus.DISPLAY_STATE_CONNECTING"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->canConnect()Z

    move-result v4

    if-nez v4, :cond_0

    const v4, 0x7f0b1210

    invoke-virtual {v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    invoke-virtual {v2, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private disconnectAllShareFW()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "disconnectAllShareFW"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnector;->deleteServiceProvider(Lcom/samsung/android/allshare/ServiceProvider;)V

    return-void
.end method

.method private disconnectDevice()V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iput-boolean v5, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForPrevDisconnect:Z

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.android.screensharing.CHANGE_DEVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    :cond_0
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "disconnect AP Mirroring device for changing device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semDisconnectWifiDisplay()V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->removeLastConnectedDevice(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    return-void

    :cond_2
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "disconnect Wifidisplay for changing device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    if-ne v0, v5, :cond_5

    :cond_4
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "disconnect Dlna device for changing device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semGetDlnaDeviceUid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDlna(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "disconnect GCast device for changing device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectGCast()V

    goto :goto_1
.end method

.method private disconnectDlna(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "disconnectDlna device"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v2, "keep_alive"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send Intent DLNA_DISCONNECTION_REQUEST : uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", keepAliveApplication = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private disconnectGCast()V
    .locals 3

    sget-boolean v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "disconnectGCast device"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v1}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v2}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    :cond_0
    return-void
.end method

.method private findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/SemWifiDisplay;
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getDisplays()[Landroid/hardware/display/SemWifiDisplay;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method private finishSettings()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    return-void
.end method

.method private getBssid()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ""

    return-object v2
.end method

.method private getFrequency()I
    .locals 2

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method private getLastConnectedGCastDevice()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetLastConnectedGCastDevice()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private getScreenSharingP2pMacAddr(Lcom/samsung/android/allshare/Device;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string/jumbo v3, "com.samsung.android.allshare.Device"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v3, "getScreenSharingP2pMacAddr"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v3, ""

    return-object v3
.end method

.method private handlePreferenceScreenEnabled(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.screensharing.LOGGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private isAnyDeviceConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isGCastConnected()Z
    .locals 5

    const/4 v3, 0x4

    sget-boolean v2, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isGCastConnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private isPendingForPrevDisconnect()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForPrevDisconnect:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "Now pending to disconnect for previous connection."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private prepareConnection()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "change device"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPinConnectionRequested:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " with pin. "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v3, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iput-boolean v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForPrevDisconnect:Z

    :goto_2
    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v3, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->-get0(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    goto :goto_2
.end method

.method private removeLastConnectedDevice(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V
    .locals 2

    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semGetLastConnectedDisplay(Z)Landroid/hardware/display/SemWifiDisplay;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semRemoveLastConnectedDlnaDevice()V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semRemoveLastConnectedGCastDevice()V

    goto :goto_0
.end method

.method private requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestPopup cause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.SHOW_WIFI_DISPLAY_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10808000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    packed-switch p1, :pswitch_data_0

    :goto_0
    const-string/jumbo v2, "cause"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_1
    return-void

    :pswitch_0
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "requestPopup << SEM_POPUP_TYPE_CONNECTING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "DeviceName"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "deviceType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "intent call exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2208a
        :pswitch_0
    .end packed-switch
.end method

.method private scheduleUpdate(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    :cond_1
    return-void
.end method

.method private semGetDlnaDeviceUid()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemDlnaDevice;->getUid()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private semIsDlnaDeviceConnected()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendScreenSharingTriggerMsg(Lcom/samsung/android/allshare/ScreenSharingDevice;)V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->getWlanMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->getP2pMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->getBluetoothMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendScreenSharingTriggerMsg :  wlanMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " p2pMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " btMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x1c44

    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/samsung/android/allshare/ScreenSharingDevice;->connectScreenSharingM2TV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private setGuidedActionBarClickable(Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method

.method private setMenuIcon()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMenuIcon():: isLandscape="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    if-nez v2, :cond_1

    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "onConfigurationChanged:: menu item is not created yet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method private setParamData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "ipAddr"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "port"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "deviceType"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "options"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "deviceName"

    invoke-virtual {v1, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "remoteP2pMacAddr"

    invoke-virtual {v1, v2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "isPendingRequest"

    invoke-virtual {v1, v2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setParamData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiDisplaySettings"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPreferenceScreenEnabled(Z)V
    .locals 4

    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreferenceScreenEnabled enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method

.method private showDisconnectDialog()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showInputMethod()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$23;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$23;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$24;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$24;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showOptionsDialog(Landroid/hardware/display/SemWifiDisplay;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040348

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f11027f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$14;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$14;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/SemWifiDisplay;)V

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$15;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$15;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b1213

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b1215

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b1214

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startListen()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->semRegisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V

    sget-boolean v1, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    :cond_0
    return-void
.end method

.method private stopListen()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semUnregisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;)V

    sget-boolean v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    :cond_0
    return-void
.end method

.method private switchChanged(Z)V
    .locals 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->preChecked:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "onCheckedChanged() : already WfdConnected!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    const-string/jumbo v0, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isChecked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_on"

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    :cond_2
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->preChecked:Z

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unscheduleUpdate()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b18a1

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x66

    return v0
.end method

.method public invalidate()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x1f3f

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "onActivityCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_certification_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_wps_config"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1002ff

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_1
    invoke-static {v1, v5, v0}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    return-void

    :cond_2
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "Connected but mWifiDisplayOnSetting false, so change status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100302

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->setMenuIcon()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const v8, 0x1030132

    invoke-direct {v4, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "media_router"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRouter;

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "display"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v7, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-direct {v4, p0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    new-instance v4, Lcom/android/settings/wfd/Wfd_Certification;

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-direct {v4, v7, v8, p0}, Lcom/android/settings/wfd/Wfd_Certification;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdBrokerRunning(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.intent.action.DISMISS_WIFI_DISPLAY_POPUP"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    if-ne v4, v9, :cond_7

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v7, "onCreate() GCast is connected. mStartWithConnectedState = true"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    :cond_2
    const v4, 0x7f080154

    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/wfd/WfdPickerDialog;

    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    new-instance v4, Lcom/android/settings/wfd/WifiDisplaySettings$13;

    invoke-direct {v4, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$13;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "com.sec.android.allshare.intent.action.CAST_START"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "deviceAddress"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingAddressForSmartSchool:Ljava/lang/String;

    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate() : mInPickerDialog="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v4, "more_actions_package_name"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "more_actions_knox_state"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    const-string/jumbo v4, "more_actions_screen_sharing_mode"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_9

    const/4 v2, 0x1

    :goto_2
    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGalleryUri:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGalleryUri:Landroid/content/Intent;

    if-nez v4, :cond_4

    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v7, "Uri intent is null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v1, :cond_6

    const-string/jumbo v4, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate() : packageFrom "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5

    const-string/jumbo v4, "com.samsung.android.video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iput v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    :cond_5
    :goto_3
    const-string/jumbo v4, "com.samsung.android.video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "SHA_PAN"

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectAllShareFW()V

    return-void

    :cond_7
    move v4, v6

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v4, "cause"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    const-string/jumbo v4, "com.sec.android.gallery3d"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iput v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    goto :goto_3

    :cond_b
    const-string/jumbo v4, "com.sec.android.app.music"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iput v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    goto :goto_3

    :cond_c
    const-string/jumbo v4, "com.samsung.android.app.music.chn"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x3

    iput v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    goto :goto_3

    :cond_d
    const-string/jumbo v4, "com.sec.android.gallery3d"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string/jumbo v4, "SHA_PAN"

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    goto :goto_4

    :cond_e
    const-string/jumbo v4, "com.sec.android.app.music"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string/jumbo v4, "com.samsung.android.app.music.chn"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_f
    const-string/jumbo v4, "MUSIC"

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    goto :goto_4
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    instance-of v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v5, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    const v4, 0x7f0b0e21

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    instance-of v4, v3, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnecting(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isDongleRenameAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    check-cast v2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->-get0(Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;)Landroid/hardware/display/SemWifiDisplay;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v5, "user press to rename!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDongleRenameDialog()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    check-cast v3, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    invoke-virtual {v3}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v5

    sget-object v6, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v5, v5, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v5, "user press to connect with pin!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v5, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v5, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPinConnectionRequested:Z

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDevice()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/16 v3, 0x8

    const-string/jumbo v1, "WifiDisplaySettings"

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f040319

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f110713

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f110712

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object v0
.end method

.method public onDetach()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDetach()V

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->unscheduleUpdate()V

    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semSetActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdBrokerRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.DISMISS_WIFI_DISPLAY_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectAllShareFW()V

    const-string/jumbo v0, "SDEV"

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 4

    const-string/jumbo v1, "WifiDisplaySettings"

    const-string/jumbo v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopListen()V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    invoke-interface {v1}, Landroid/view/ContextMenu;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v2, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->PAUSE:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->semSetActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPause IllegalArgumentException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    instance-of v3, p2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v3, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    invoke-virtual {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->handlePreferenceScreenEnabled(I)V

    new-instance v3, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-direct {v3, p0, v1, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    iput-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isAnyDeviceConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDevice()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    const-string/jumbo v1, "WifiDisplaySettings"

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v2, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->RESUME:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->semSetActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startListen()V

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mGlobalEditDeviceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showInputMethod()V

    :cond_0
    const/4 v0, 0x1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iput-boolean v4, v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    return-void

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    return-void
.end method

.method public startScanWifiDisplays()V
    .locals 4

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "startScanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x251c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semStartScanWifiDisplays()V

    :cond_0
    return-void
.end method

.method public stopScanWifiDisplays()V
    .locals 2

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "stopScanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semStopScanWifiDisplays()V

    return-void
.end method

.method protected update(I)V
    .locals 7

    const/4 v4, 0x0

    const-string/jumbo v5, "WifiDisplaySettings"

    const-string/jumbo v6, "update"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->semCheckExceptionalCase()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_display_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-virtual {v4}, Lcom/android/settings/wfd/Wfd_Certification;->updateCertificationMode()V

    const/4 v1, 0x1

    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v4, :cond_7

    :cond_2
    and-int/lit8 v4, p1, 0x4

    if-nez v4, :cond_3

    and-int/lit8 v4, p1, 0x10

    if-eqz v4, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    if-nez v4, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    :cond_4
    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_5
    :goto_0
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->updateDlnaList()V

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->applyState(Z)V

    return-void

    :pswitch_1
    const-string/jumbo v5, "WifiDisplaySettings"

    const-string/jumbo v6, "group play is running!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0e29

    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    return-void

    :pswitch_2
    const-string/jumbo v5, "WifiDisplaySettings"

    const-string/jumbo v6, "live broadcast is running!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0e2a

    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    return-void

    :cond_8
    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v5, "update scanWifiDisplays"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public updateDlnaList()V
    .locals 22

    const-string/jumbo v19, "WifiDisplaySettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "updateDlnaList PlayerType: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    const/16 v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    const-string/jumbo v18, "TYPE_NONE"

    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v9

    const-string/jumbo v18, "AVPLAYER_VIDEO"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    const-string/jumbo v18, "AVPLAYER_AUDIO"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/allshare/Device;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v10}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->PlayerType:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    move/from16 v18, v0

    if-nez v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/wfd/WfdSettingsUtils;->isVideoRunningOnTop(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    if-nez v18, :cond_a

    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/allshare/Device;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIpAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    :cond_6
    const-string/jumbo v19, "WifiDisplaySettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Pending... to request DLNA "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/SemWifiDisplay;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "dlna"

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v20

    const v21, 0x2208a

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectDlna(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    :cond_b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_c
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/allshare/Device;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_e
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/allshare/Device;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    const-string/jumbo v18, "WifiDisplaySettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " device total count : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " ssList("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") videoList ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") audioList ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") imageList ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    const-string/jumbo v18, "WifiDisplaySettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "\t device Info : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_10
    const-string/jumbo v18, "WifiDisplaySettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " device total count : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " ssList("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "), knox mode is running."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void
.end method
