.class public Landroid/net/wifi/WifiScanner;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ActionListener;,
        Landroid/net/wifi/WifiScanner$BssidInfo;,
        Landroid/net/wifi/WifiScanner$BssidListener;,
        Landroid/net/wifi/WifiScanner$ChannelSpec;,
        Landroid/net/wifi/WifiScanner$HotlistSettings;,
        Landroid/net/wifi/WifiScanner$OperationResult;,
        Landroid/net/wifi/WifiScanner$ParcelableScanData;,
        Landroid/net/wifi/WifiScanner$ParcelableScanResults;,
        Landroid/net/wifi/WifiScanner$PnoScanListener;,
        Landroid/net/wifi/WifiScanner$PnoSettings;,
        Landroid/net/wifi/WifiScanner$ScanData;,
        Landroid/net/wifi/WifiScanner$ScanListener;,
        Landroid/net/wifi/WifiScanner$ScanSettings;,
        Landroid/net/wifi/WifiScanner$ServiceHandler;,
        Landroid/net/wifi/WifiScanner$WifiChangeListener;,
        Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27000

.field public static final CMD_AP_FOUND:I = 0x27009

.field public static final CMD_AP_LOST:I = 0x2700a

.field public static final CMD_CONFIGURE_WIFI_CHANGE:I = 0x2700d

.field public static final CMD_FULL_SCAN_RESULT:I = 0x27014

.field public static final CMD_GET_SCAN_COUNTER:I = 0x27064

.field public static final CMD_GET_SCAN_RESULTS:I = 0x27004

.field public static final CMD_OP_FAILED:I = 0x27012

.field public static final CMD_OP_SUCCEEDED:I = 0x27011

.field public static final CMD_PERIOD_CHANGED:I = 0x27013

.field public static final CMD_PNO_NETWORK_FOUND:I = 0x2701a

.field public static final CMD_RESET_HOTLIST:I = 0x27007

.field public static final CMD_SCAN:I = 0x27000

.field public static final CMD_SCAN_RESULT:I = 0x27005

.field public static final CMD_SET_HOTLIST:I = 0x27006

.field public static final CMD_SINGLE_SCAN_COMPLETED:I = 0x27017

.field public static final CMD_START_BACKGROUND_SCAN:I = 0x27002

.field public static final CMD_START_PNO_SCAN:I = 0x27018

.field public static final CMD_START_SINGLE_SCAN:I = 0x27015

.field public static final CMD_START_TRACKING_CHANGE:I = 0x2700b

.field public static final CMD_STOP_BACKGROUND_SCAN:I = 0x27003

.field public static final CMD_STOP_PNO_SCAN:I = 0x27019

.field public static final CMD_STOP_SINGLE_SCAN:I = 0x27016

.field public static final CMD_STOP_TRACKING_CHANGE:I = 0x2700c

.field public static final CMD_WIFI_CHANGES_STABILIZED:I = 0x27010

.field public static final CMD_WIFI_CHANGE_DETECTED:I = 0x2700f

.field private static final DBG:Z = false

.field public static final GET_AVAILABLE_CHANNELS_EXTRA:Ljava/lang/String; = "Channels"

.field private static final INVALID_KEY:I = 0x0

.field public static final MAX_SCAN_PERIOD_MS:I = 0xfa000

.field public static final MIN_SCAN_PERIOD_MS:I = 0x3e8

.field public static final PNO_PARAMS_PNO_SETTINGS_KEY:Ljava/lang/String; = "PnoSettings"

.field public static final PNO_PARAMS_SCAN_SETTINGS_KEY:Ljava/lang/String; = "ScanSettings"

.field public static final REASON_DUPLICATE_REQEUST:I = -0x5

.field public static final REASON_INVALID_LISTENER:I = -0x2

.field public static final REASON_INVALID_REQUEST:I = -0x3

.field public static final REASON_NOT_AUTHORIZED:I = -0x4

.field public static final REASON_SUCCEEDED:I = 0x0

.field public static final REASON_UNSPECIFIED:I = -0x1

.field public static final REPORT_EVENT_AFTER_BUFFER_FULL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPORT_EVENT_AFTER_EACH_SCAN:I = 0x1

.field public static final REPORT_EVENT_FULL_SCAN_RESULT:I = 0x2

.field public static final REPORT_EVENT_NO_BATCH:I = 0x4

.field public static final SCAN_PARAMS_SCAN_SETTINGS_KEY:Ljava/lang/String; = "ScanSettings"

.field public static final SCAN_PARAMS_WORK_SOURCE_KEY:Ljava/lang/String; = "WorkSource"

.field private static final TAG:Ljava/lang/String; = "WifiScanner"

.field public static final WIFI_BAND_24_GHZ:I = 0x1

.field public static final WIFI_BAND_5_GHZ:I = 0x2

.field public static final WIFI_BAND_5_GHZ_DFS_ONLY:I = 0x4

.field public static final WIFI_BAND_5_GHZ_WITH_DFS:I = 0x6

.field public static final WIFI_BAND_BOTH:I = 0x3

.field public static final WIFI_BAND_BOTH_WITH_DFS:I = 0x7

.field public static final WIFI_BAND_UNSPECIFIED:I


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mContext:Landroid/content/Context;

.field private final mInternalHandler:Landroid/os/Handler;

.field private mListenerKey:I

.field private final mListenerMap:Landroid/util/SparseArray;

.field private final mListenerMapLock:Ljava/lang/Object;

.field private mService:Landroid/net/wifi/IWifiScanner;


# direct methods
.method static synthetic -set0(Landroid/net/wifi/WifiScanner;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiScanner;Landroid/os/Looper;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput v2, p0, Landroid/net/wifi/WifiScanner;->mListenerKey:I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    invoke-interface {v2}, Landroid/net/wifi/IWifiScanner;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "getMessenger() returned null!  This is invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v2, Landroid/net/wifi/WifiScanner$ServiceHandler;

    invoke-direct {v2, p0, p3}, Landroid/net/wifi/WifiScanner$ServiceHandler;-><init>(Landroid/net/wifi/WifiScanner;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/net/wifi/WifiScanner;->mInternalHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/wifi/WifiScanner;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x11001

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    return-void
.end method

.method private addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getListenerKey(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    move-result v0

    if-eqz v1, :cond_1

    new-instance v3, Landroid/net/wifi/WifiScanner$OperationResult;

    const-string/jumbo v4, "Outstanding request with same key not stopped yet"

    const/4 v6, -0x5

    invoke-direct {v3, v6, v4}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    iget-object v4, p0, Landroid/net/wifi/WifiScanner;->mInternalHandler:Landroid/os/Handler;

    const v6, 0x27012

    const/4 v7, 0x0

    invoke-static {v4, v6, v7, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return v8

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    monitor-exit v5

    return v0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private getListener(I)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getListenerKey(Ljava/lang/Object;)I
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    monitor-exit v2

    return v3

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private putListener(Ljava/lang/Object;)I
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :cond_1
    :try_start_0
    iget v0, p0, Landroid/net/wifi/WifiScanner;->mListenerKey:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiScanner;->mListenerKey:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private removeListener(Ljava/lang/Object;)I
    .locals 3

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "WifiScanner"

    const-string/jumbo v2, "listener cannot be found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private removeListener(I)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private startPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    const-string/jumbo v1, "ScanSettings"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "PnoSettings"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27018

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private validateChannel()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No permission to access and change wifi or a bad initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public configureWifiChange(IIIII[Landroid/net/wifi/WifiScanner$BssidInfo;)V
    .locals 1

    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    new-instance v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$WifiChangeSettings;-><init>()V

    iput p1, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->rssiSampleSize:I

    iput p2, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->lostApSampleSize:I

    iput p3, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    iput p4, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->minApsBreachingThreshold:I

    iput p5, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    iput-object p6, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiScanner;->configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    return-void
.end method

.method public configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2700d

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public getAvailableChannels(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    invoke-interface {v2, p1}, Landroid/net/wifi/IWifiScanner;->getAvailableChannels(I)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "Channels"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return-object v2
.end method

.method public getScanResults()Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x27004

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x27011

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public semGetScanCounterForBigData(Z)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const v3, 0x27064

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    return-void
.end method

.method public startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "listener cannot be null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "ScanSettings"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "WorkSource"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x27002

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public startConnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$PnoScanListener;)V
    .locals 2

    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "pnoSettings cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    invoke-direct {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;I)V

    return-void
.end method

.method public startDisconnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$PnoScanListener;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "pnoSettings cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    iput-boolean v2, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    invoke-direct {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;I)V

    return-void
.end method

.method public startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    return-void
.end method

.method public startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "listener cannot be null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "ScanSettings"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "WorkSource"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x27015

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public startTrackingBssids([Landroid/net/wifi/WifiScanner$BssidInfo;ILandroid/net/wifi/WifiScanner$BssidListener;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "listener cannot be null"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    new-instance v1, Landroid/net/wifi/WifiScanner$HotlistSettings;

    invoke-direct {v1}, Landroid/net/wifi/WifiScanner$HotlistSettings;-><init>()V

    iput-object p1, v1, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    iput p2, v1, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x27006

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public startTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x2700b

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public stopBackgroundScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27003

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public stopPnoScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27019

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public stopScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27016

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public stopTrackingBssids(Landroid/net/wifi/WifiScanner$BssidListener;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27007

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public stopTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x2700c

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method
