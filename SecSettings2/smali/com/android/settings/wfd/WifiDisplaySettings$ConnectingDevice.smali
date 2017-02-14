.class Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectingDevice"
.end annotation


# instance fields
.field public mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

.field public mPendingForDlnaSwitching:Z

.field public mPendingForPrevDisconnect:Z

.field private mRoute:Landroid/media/MediaRouter$RouteInfo;

.field public mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

.field public mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    return-void
.end method
