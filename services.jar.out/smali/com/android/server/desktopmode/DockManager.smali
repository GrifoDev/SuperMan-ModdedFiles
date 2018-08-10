.class Lcom/android/server/desktopmode/DockManager;
.super Ljava/lang/Object;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DockManager$1;,
        Lcom/android/server/desktopmode/DockManager$DockHandler;,
        Lcom/android/server/desktopmode/DockManager$DockMsgState;
    }
.end annotation


# static fields
.field private static final MSG_DOCK_FAST_CHARGING_ERROR:I = 0xdd

.field private static final MSG_DOCK_FAST_CHARGING_ERROR_UNDEFINED:I = 0xdc

.field private static final MSG_DOCK_FAST_CHARGING_EXTRA_ERROR_UPDATED:I = 0xf1

.field private static final MSG_DOCK_FAST_CHARGING_EXTRA_UNDEFINED:I = 0xf0

.field private static final MSG_DOCK_FAST_CHARGING_REQUEST_CREATE:I = 0xc9

.field private static final MSG_DOCK_FAST_CHARGING_REQUEST_DESTROY:I = 0xcc

.field private static final MSG_DOCK_FAST_CHARGING_REQUEST_POWER_INFO:I = 0xca

.field private static final MSG_DOCK_FAST_CHARGING_REQUEST_SET_ENABLE:I = 0xcb

.field private static final MSG_DOCK_FAST_CHARGING_REQUEST_UNDEFINED:I = 0xc8

.field private static final MSG_DOCK_FAST_CHARGING_RESPONSE_POWER_INFO:I = 0xd3

.field private static final MSG_DOCK_FAST_CHARGING_RESPONSE_SET_ENABLE:I = 0xd4

.field private static final MSG_DOCK_FAST_CHARGING_RESPONSE_UNDEFINED:I = 0xd2

.field private static final MSG_DOCK_FAST_CHARGING_VERSION_DSVERSION_UPDATED:I = 0xe7

.field private static final MSG_DOCK_FAST_CHARGING_VERSION_UNDEFINED:I = 0xe6

.field private static final MSG_DOCK_FOTA_ERROR_ONERROR:I = 0x141

.field private static final MSG_DOCK_FOTA_ERROR_UNDEFINED:I = 0x140

.field private static final MSG_DOCK_FOTA_REQUEST_CHECK:I = 0x12e

.field private static final MSG_DOCK_FOTA_REQUEST_CREATE:I = 0x12d

.field private static final MSG_DOCK_FOTA_REQUEST_DESTROY:I = 0x130

.field private static final MSG_DOCK_FOTA_REQUEST_START:I = 0x12f

.field private static final MSG_DOCK_FOTA_REQUEST_UNDEFINED:I = 0x12c

.field private static final MSG_DOCK_FOTA_RESPONSE_ONBOOT:I = 0x137

.field private static final MSG_DOCK_FOTA_RESPONSE_ONCHECK:I = 0x138

.field private static final MSG_DOCK_FOTA_RESPONSE_ONEND:I = 0x13b

.field private static final MSG_DOCK_FOTA_RESPONSE_ONPROGRESS:I = 0x13a

.field private static final MSG_DOCK_FOTA_RESPONSE_ONSTART:I = 0x139

.field private static final MSG_DOCK_FOTA_RESPONSE_UNDEFINED:I = 0x136

.field private static final MSG_TYPE_ERROR:I = 0x66

.field private static final MSG_TYPE_EXTRA:I = 0x68

.field private static final MSG_TYPE_REQUEST:I = 0x64

.field private static final MSG_TYPE_RESPONSE:I = 0x65

.field private static final MSG_TYPE_VERSION:I = 0x67

.field private static final NO_CHARGER_POWER:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final mInterfaceNameSource:Ljava/lang/String; = "wlan0"

.field private static final mInterfaceNameTarget:Ljava/lang/String; = "eth0"

.field private static final sDSVersionForBootMode:Ljava/lang/String; = "FFFF"

.field private static final sDSVersionForDefault:Ljava/lang/String; = "####"


# instance fields
.field private mAdaptiveFastChargingSettingsEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

.field private final mDeviceEventListener:Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

.field private mDockChargerPower:I

.field private mDockChargerSupport:I

.field private mDockControlLibError:Landroid/util/SparseBooleanArray;

.field private mDockFastChargingState:I

.field private mDockFastChargingStateReason:Ljava/lang/String;

.field private mDockFotaRecoveryMode:Z

.field private mDockFotaState:I

.field private mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

.field private mDockVersion:Ljava/lang/String;

.field private mDockVersionExtra:Ljava/lang/String;

.field private mFotaManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;

.field private mFotaManagerListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

.field private mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

.field private final mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

.field private mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

.field private mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

.field private mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

.field private mLastDockFotaLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

.field private mLastDockVersion:Ljava/lang/String;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mPrevDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSDCFotaManagerEventHandler:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

.field private final mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field private mVirtualMacAddress:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/desktopmode/DockManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DockManager;->mAdaptiveFastChargingSettingsEnabled:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DesktopModeHwManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockFotaLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mSDCFotaManagerEventHandler:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/desktopmode/DockManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/desktopmode/DockManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockControlLibError:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/desktopmode/DockManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaRecoveryMode:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/desktopmode/DockManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaState:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mFotaManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mFotaManagerListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/desktopmode/DockManager;Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/desktopmode/DockManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/desktopmode/DockManager;Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;)Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mSDCFotaManagerEventHandler:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/desktopmode/DockManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/desktopmode/DockManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaRecoveryMode:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;)Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/desktopmode/DockManager;Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mFotaManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/desktopmode/DockManager;Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;)Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mFotaManagerListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/server/desktopmode/DockManager;Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;)Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mPrevDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/desktopmode/DockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->setVirtualMacAddress()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/desktopmode/DockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->updateDockLibStatus()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/desktopmode/DockManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DockManager;->updateDockVersionToSettings(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeHwManager;Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;Lcom/android/server/desktopmode/SettingsHelper;)V
    .locals 9

    const/4 v0, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    iput-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    iput-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mPrevDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    iput-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockVersion:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/android/server/desktopmode/DockManager;->mAdaptiveFastChargingSettingsEnabled:Z

    iput-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    iput-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    iput v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingState:I

    iput-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingStateReason:Ljava/lang/String;

    iput v8, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    iput v8, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    iput-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    iput-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    iput-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mVirtualMacAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mFotaManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;

    iput-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mFotaManagerListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

    iput-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mSDCFotaManagerEventHandler:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

    iput v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaState:I

    iput-boolean v8, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaRecoveryMode:Z

    new-instance v0, Lcom/android/server/desktopmode/DockManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DockManager$1;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDeviceEventListener:Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/desktopmode/DockManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mDeviceEventListener:Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->registerListener(Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;)V

    iput-object p3, p0, Lcom/android/server/desktopmode/DockManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    iput-object p3, p0, Lcom/android/server/desktopmode/DockManager;->mPrevDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    iput-object p4, p0, Lcom/android/server/desktopmode/DockManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    new-instance v0, Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/desktopmode/DockManager$DockHandler;-><init>(Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/DockManager$DockHandler;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    new-instance v0, Lcom/android/server/desktopmode/DockManager$DockMsgState;

    const/16 v2, 0xc8

    const/16 v3, 0xd2

    const/16 v4, 0xdc

    const/16 v5, 0xe6

    const/16 v6, 0xf0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/desktopmode/DockManager$DockMsgState;-><init>(Lcom/android/server/desktopmode/DockManager;IIIII)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockControlLibError:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/android/server/desktopmode/DockManager$DockMsgState;

    const/16 v2, 0x12c

    const/16 v3, 0x136

    const/16 v4, 0x140

    move-object v1, p0

    move v5, v8

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/desktopmode/DockManager$DockMsgState;-><init>(Lcom/android/server/desktopmode/DockManager;IIIII)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockFotaLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    return-void
.end method

.method private convertVirtualMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x11

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-byte v4, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x100

    or-int/lit8 v4, v4, 0x2

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xc

    const/16 v5, 0xe

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-byte v4, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x100

    xor-int/lit8 v4, v4, 0x40

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    const/16 v6, 0xc

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xe

    const/16 v6, 0x11

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method private createDockControlLib(I)V
    .locals 2

    const v0, 0xa020

    if-eq p1, v0, :cond_0

    const v0, 0xa029

    if-ne p1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/desktopmode/DockManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DockManager$2;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    new-instance v1, Lcom/android/server/desktopmode/DockManager$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/DockManager$3;-><init>(Lcom/android/server/desktopmode/DockManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createDockControlLib is not supported"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createDockFotaLib()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mFotaManagerListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/desktopmode/DockManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DockManager$5;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mFotaManagerListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    new-instance v1, Lcom/android/server/desktopmode/DockManager$6;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DockManager$6;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private destroyDockControlLib()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    new-instance v1, Lcom/android/server/desktopmode/DockManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DockManager$4;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private destroyDockFotaLib()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    new-instance v1, Lcom/android/server/desktopmode/DockManager$7;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DockManager$7;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static dockControlErrorToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "SET_FAST_CHARGING_UVDM_FAILED"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "CHARGING_MODE_UPDATE_UVDM_FAILED"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "CONNECTED_POWER_CHARGER_INFO_UPDATE_UVDM_FAILED"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "SET_FAST_CHARGING_DEX_BUSY"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "CONNECTED_POWER_CHARGER_INFO_UPDATE_DEX_BUSY"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "FAN_LEVEL_CONTROL_DEX_BUSY"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static dockFastChargingStateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "STATE_DOCK_FAST_CHARGING_NOT_AVAILABLE"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "STATE_DOCK_FAST_CHARGING_AVAILABLE"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "STATE_DOCK_FAST_CHARGING_ENABLING"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "STATE_DOCK_FAST_CHARGING_USING"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static dockFotaErrorToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "ERROR_CODE_UNKOWN"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "ERROR_CODE_NETWORK"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "ERROR_CODE_USB_DISCONNECT"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "ERROR_CODE_SECURITY_PERMISSION_DENIED"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "ERROR_CODE_CANNOT_CHIP_OPEN"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "ERROR_CODE_USB_DEVICE_PERMISSION_DENIED"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "ERROR_CODE_FOTA_FAILED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static dockFotaStateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "STATE_DOCK_FOTA_NOT_AVAILABLE"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "STATE_DOCK_FOTA_REQUEST_TO_CHECK"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "STATE_DOCK_FOTA_AVAILABLE"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "STATE_DOCK_FOTA_UPDATE_CONFIRMED"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "STATE_DOCK_FOTA_UPDATE_CONFIRMED_RECOVERY"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "STATE_DOCK_FOTA_UPDATE_IN_PROGRESS"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "STATE_DOCK_FOTA_UPDATE_IN_PROGRESS_RECOVERY"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "STATE_DOCK_FOTA_UPDATE_SUCCESSFUL"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "STATE_DOCK_FOTA_UPDATE_SUCCESSFUL_RECOVERY"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "STATE_DOCK_FOTA_UPDATE_FAILED"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "STATE_DOCK_FOTA_UPDATE_FAILED_NETWORK"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private initialize()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DockManager initialize()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mVirtualMacAddress:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    iput v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DockManager;->mAdaptiveFastChargingSettingsEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaRecoveryMode:Z

    return-void
.end method

.method private isEthernetConfigured()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    const-string/jumbo v3, "eth0"

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isEthernetConfigured: configTarget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isEthernetConfigured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private registerObserver()V
    .locals 4

    new-instance v1, Lcom/android/server/desktopmode/DockManager$8;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DockManager$8;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_1

    :try_start_0
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerObserver"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error registering observer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setVirtualMacAddress()V
    .locals 6

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v3, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    const-string/jumbo v4, "eth0"

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    const-string/jumbo v4, "wlan0"

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVirtualMacAddress Target original=eth0 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Source original="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "wlan0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/desktopmode/DockManager;->convertVirtualMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mVirtualMacAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mVirtualMacAddress:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mVirtualMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    const-string/jumbo v4, "eth0"

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    const-string/jumbo v4, "eth0"

    invoke-interface {v3, v4, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    const-string/jumbo v4, "eth0"

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    const-string/jumbo v4, "eth0"

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    :cond_1
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVirtualMacAddress Target virtual="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setVirtualMacAddress mNMService is null"

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterObserver()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    if-eqz v1, :cond_1

    :try_start_0
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterObserver"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error unregistering observer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDockLibStatus()V
    .locals 9

    const/16 v8, 0x2716

    const/16 v7, 0x2714

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDockLibStatus(), isDesktopDockConnected="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v0

    const/16 v4, 0x2711

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", isDexPadConnected="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v0

    if-eq v0, v7, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v0

    if-ne v0, v8, :cond_4

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", mDockState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v3}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", mPrevDockState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mPrevDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v3}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", mDockFastChargingState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", mDockChargerPower="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", mDockChargerSupport="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", mDockFotaState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v0

    const/16 v2, 0x2711

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    if-nez v0, :cond_2

    const v0, 0xa020

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DockManager;->createDockControlLib(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v0

    if-eq v0, v7, :cond_6

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v0

    if-ne v0, v8, :cond_d

    :cond_6
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v0

    if-ne v0, v7, :cond_a

    const v0, 0xa029

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DockManager;->createDockControlLib(I)V

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DockManager;->updateAdaptiveFastChargingSettingsEnabled()V

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DockManager;->requestConnectedPowerChargerInfoUpdate()V

    :cond_7
    :goto_3
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_DOCK_FOTA:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v0

    if-ne v0, v8, :cond_8

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaRecoveryMode:Z

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDockFotaRecoveryMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaRecoveryMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mFotaManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaRecoveryMode:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_b

    :cond_9
    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->createDockFotaLib()V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DockManager;->isDockFotaUpdateInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->destroyDockControlLib()V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mFotaManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaRecoveryMode:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingUsing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_c
    invoke-virtual {p0, v6, v5}, Lcom/android/server/desktopmode/DockManager;->updateDockFotaState(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->destroyDockFotaLib()V

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v0

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mPrevDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_e

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->initialize()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->destroyDockControlLib()V

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v0

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mPrevDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v0

    if-eq v0, v7, :cond_f

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mPrevDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v0

    if-ne v0, v8, :cond_2

    :cond_f
    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->initialize()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->destroyDockControlLib()V

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_DOCK_FOTA:Z

    if-eqz v0, :cond_11

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DockManager;->isDockFotaUpdateSuccessful()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Dock is undocked : caused by fota update successful"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "fotasuccess"

    invoke-virtual {p0, v6, v0}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    :goto_4
    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->destroyDockFotaLib()V

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v0, "undocked"

    invoke-virtual {p0, v6, v0}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    invoke-virtual {p0, v6, v5}, Lcom/android/server/desktopmode/DockManager;->updateDockFotaState(ILjava/lang/String;)V

    goto :goto_4

    :cond_11
    const-string/jumbo v0, "undocked"

    invoke-virtual {p0, v6, v0}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    goto/16 :goto_2
.end method

.method private updateDockVersionToSettings(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/sys/class/dp_sec/dex_ver"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/sys/class/sec/ccic/acc_device_version"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockVersion:Ljava/lang/String;

    :goto_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDockVersionToSettings(), mDockVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "dock_version"

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string/jumbo v1, "mDockVersion"

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mDockVersionExtra"

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mVirtualMacAddress"

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mVirtualMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mDockChargerPower"

    iget v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mDockChargerSupport"

    iget v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mAdaptiveFastChargingSettingsEnabled"

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DockManager;->mAdaptiveFastChargingSettingsEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mDockFastChargingState"

    iget v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingState:I

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->dockFastChargingStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mDockFastChargingStateReason"

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingStateReason:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mDockFotaRecoveryMode"

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaRecoveryMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mDockFotaState"

    iget v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaState:I

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->dockFotaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string/jumbo v1, "mLastDockVersion"

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockVersion:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->-get0(Lcom/android/server/desktopmode/DockManager$DockMsgState;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string/jumbo v1, "mLastDockControlLibMsgState"

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    invoke-virtual {v2, v0}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockFotaLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->-get0(Lcom/android/server/desktopmode/DockManager$DockMsgState;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string/jumbo v1, "mLastDockFotaLibMsgState"

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockFotaLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    invoke-virtual {v2, v0}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method getDockChargerPower()I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    return v0
.end method

.method getUseDexMacAddress()Z
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    const-string/jumbo v0, "content://com.sec.knox.provider/DexPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isVirtualMacAddressEnforced"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string/jumbo v0, "isVirtualMacAddressEnforced"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUseDexMacAddress useDexMacAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v8

    :catch_0
    move-exception v6

    :try_start_1
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method isDockFastChargingAvailable()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDockFastChargingEnabling()Z
    .locals 2

    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDockFastChargingUsing()Z
    .locals 2

    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDockFotaRecoveryMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaRecoveryMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDockFotaUpdateInProgress()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDockFotaUpdateNotAvailable()Z
    .locals 2

    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDockFotaUpdateSuccessful()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaState:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaState:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method requestCheckFotaUpdateAvailable()V
    .locals 3

    const/16 v2, 0x12e

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method requestConnectedPowerChargerInfoUpdate()V
    .locals 3

    const/16 v2, 0xca

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method requestVirtualMacAddress(Z)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->isEthernetConfigured()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->setVirtualMacAddress()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->registerObserver()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->unregisterObserver()V

    goto :goto_0
.end method

.method setFastChargingEnable(Z)V
    .locals 4

    const/16 v3, 0xcb

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method startFotaUpdate()V
    .locals 3

    const/16 v2, 0x12f

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method updateAdaptiveFastChargingSettingsEnabled()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "adaptive_fast_charging"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DockManager;->mAdaptiveFastChargingSettingsEnabled:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method updateDockFastChargingState(ILjava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDockFastChargingState() new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/desktopmode/DockManager;->dockFastChargingStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", prev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingState:I

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->dockFastChargingStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingStateReason:Ljava/lang/String;

    :cond_1
    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingState:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingState:I

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->updateDockFastChargingState(I)V

    :cond_2
    return-void
.end method

.method updateDockFotaState(ILjava/lang/String;)V
    .locals 4

    const/16 v3, 0x15

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDockFotaState() new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", prev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaState:I

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3

    if-eq p1, v3, :cond_3

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/SettingsHelper;->setDockFotaSettings(I)V

    iput p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaState:I

    :cond_2
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/desktopmode/SettingsHelper;->setDockFotaDisplaySettings(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFotaRecoveryMode:Z

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/SettingsHelper;->setDockFotaDisplaySettings(Ljava/lang/String;)V

    goto :goto_1
.end method
