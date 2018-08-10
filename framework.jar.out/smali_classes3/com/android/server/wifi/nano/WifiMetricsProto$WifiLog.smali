.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;,
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    }
.end annotation


# static fields
.field public static final FAILURE_WIFI_DISABLED:I = 0x4

.field public static final SCAN_FAILURE_INTERRUPTED:I = 0x2

.field public static final SCAN_FAILURE_INVALID_CONFIGURATION:I = 0x3

.field public static final SCAN_SUCCESS:I = 0x1

.field public static final SCAN_UNKNOWN:I = 0x0

.field public static final WIFI_ASSOCIATED:I = 0x3

.field public static final WIFI_DISABLED:I = 0x1

.field public static final WIFI_DISCONNECTED:I = 0x2

.field public static final WIFI_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;


# instance fields
.field public alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

.field public backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

.field public backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

.field public isLocationEnabled:Z

.field public isScanningAlwaysEnabled:Z

.field public numBackgroundScans:I

.field public numConnectivityWatchdogBackgroundBad:I

.field public numConnectivityWatchdogBackgroundGood:I

.field public numConnectivityWatchdogPnoBad:I

.field public numConnectivityWatchdogPnoGood:I

.field public numEmptyScanResults:I

.field public numEnterpriseNetworkScanResults:I

.field public numEnterpriseNetworks:I

.field public numHalCrashes:I

.field public numHiddenNetworkScanResults:I

.field public numHiddenNetworks:I

.field public numHotspot2R1NetworkScanResults:I

.field public numHotspot2R2NetworkScanResults:I

.field public numLastResortWatchdogAvailableNetworksTotal:I

.field public numLastResortWatchdogBadAssociationNetworksTotal:I

.field public numLastResortWatchdogBadAuthenticationNetworksTotal:I

.field public numLastResortWatchdogBadDhcpNetworksTotal:I

.field public numLastResortWatchdogBadOtherNetworksTotal:I

.field public numLastResortWatchdogSuccesses:I

.field public numLastResortWatchdogTriggers:I

.field public numLastResortWatchdogTriggersWithBadAssociation:I

.field public numLastResortWatchdogTriggersWithBadAuthentication:I

.field public numLastResortWatchdogTriggersWithBadDhcp:I

.field public numLastResortWatchdogTriggersWithBadOther:I

.field public numNetworksAddedByApps:I

.field public numNetworksAddedByUser:I

.field public numNonEmptyScanResults:I

.field public numOneshotScans:I

.field public numOpenNetworkScanResults:I

.field public numOpenNetworks:I

.field public numPasspointNetworks:I

.field public numPersonalNetworkScanResults:I

.field public numPersonalNetworks:I

.field public numSavedNetworks:I

.field public numScans:I

.field public numTotalScanResults:I

.field public numWifiOnFailureDueToHal:I

.field public numWifiOnFailureDueToWificond:I

.field public numWifiToggledViaAirplane:I

.field public numWifiToggledViaSettings:I

.field public numWificondCrashes:I

.field public recordDurationSec:I

.field public rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

.field public rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

.field public scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

.field public softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

.field public staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

.field public wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

.field public wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    sput-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 13

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v10

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v11, v11

    if-lez v11, :cond_1

    const/4 v9, 0x0

    :goto_0
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v11, v11

    if-ge v9, v11, :cond_1

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    aget-object v1, v11, v9

    if-eqz v1, :cond_0

    const/4 v11, 0x1

    invoke-static {v11, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v11

    add-int/2addr v10, v11

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    if-eqz v11, :cond_2

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    const/4 v12, 0x2

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_2
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    if-eqz v11, :cond_3

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    const/4 v12, 0x3

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_3
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    if-eqz v11, :cond_4

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    const/4 v12, 0x4

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_4
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    if-eqz v11, :cond_5

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    const/4 v12, 0x5

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_5
    iget-boolean v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    if-eqz v11, :cond_6

    iget-boolean v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    const/4 v12, 0x6

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v11

    add-int/2addr v10, v11

    :cond_6
    iget-boolean v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    if-eqz v11, :cond_7

    iget-boolean v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    const/4 v12, 0x7

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v11

    add-int/2addr v10, v11

    :cond_7
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    if-eqz v11, :cond_8

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    const/16 v12, 0x8

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_8
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    if-eqz v11, :cond_9

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    const/16 v12, 0x9

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_9
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    if-eqz v11, :cond_a

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    const/16 v12, 0xa

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_a
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    if-eqz v11, :cond_b

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    const/16 v12, 0xb

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_b
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    if-eqz v11, :cond_c

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    const/16 v12, 0xc

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_c
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    if-eqz v11, :cond_d

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    const/16 v12, 0xd

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_d
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    if-eqz v11, :cond_e

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    const/16 v12, 0xe

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_e
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    if-eqz v11, :cond_f

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    const/16 v12, 0xf

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_f
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v11, v11

    if-lez v11, :cond_11

    const/4 v9, 0x0

    :goto_1
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v11, v11

    if-ge v9, v11, :cond_11

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v6, v11, v9

    if-eqz v6, :cond_10

    const/16 v11, 0x10

    invoke-static {v11, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v11

    add-int/2addr v10, v11

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_11
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v11, :cond_13

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v11, v11

    if-lez v11, :cond_13

    const/4 v9, 0x0

    :goto_2
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v11, v11

    if-ge v9, v11, :cond_13

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v7, v11, v9

    if-eqz v7, :cond_12

    const/16 v11, 0x11

    invoke-static {v11, v7}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v11

    add-int/2addr v10, v11

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_13
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v11, v11

    if-lez v11, :cond_15

    const/4 v9, 0x0

    :goto_3
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v11, v11

    if-ge v9, v11, :cond_15

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v6, v11, v9

    if-eqz v6, :cond_14

    const/16 v11, 0x12

    invoke-static {v11, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v11

    add-int/2addr v10, v11

    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_15
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v11, :cond_17

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v11, v11

    if-lez v11, :cond_17

    const/4 v9, 0x0

    :goto_4
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v11, v11

    if-ge v9, v11, :cond_17

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v7, v11, v9

    if-eqz v7, :cond_16

    const/16 v11, 0x13

    invoke-static {v11, v7}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v11

    add-int/2addr v10, v11

    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_17
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    if-eqz v11, :cond_18

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    const/16 v12, 0x14

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_18
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    if-eqz v11, :cond_19

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    const/16 v12, 0x15

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_19
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    if-eqz v11, :cond_1a

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    const/16 v12, 0x16

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_1a
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    if-eqz v11, :cond_1b

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    const/16 v12, 0x17

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_1b
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    if-eqz v11, :cond_1c

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    const/16 v12, 0x18

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_1c
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    if-eqz v11, :cond_1d

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    const/16 v12, 0x19

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_1d
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    if-eqz v11, :cond_1e

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    const/16 v12, 0x1a

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_1e
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    if-eqz v11, :cond_1f

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    const/16 v12, 0x1b

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_1f
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    if-eqz v11, :cond_20

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    const/16 v12, 0x1c

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_20
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    if-eqz v11, :cond_21

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    const/16 v12, 0x1d

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_21
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    if-eqz v11, :cond_22

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    const/16 v12, 0x1e

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_22
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    if-eqz v11, :cond_23

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    const/16 v12, 0x1f

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_23
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    if-eqz v11, :cond_24

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    const/16 v12, 0x20

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_24
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    if-eqz v11, :cond_25

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    const/16 v12, 0x21

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_25
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    if-eqz v11, :cond_26

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    const/16 v12, 0x22

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_26
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v11, :cond_28

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v11, v11

    if-lez v11, :cond_28

    const/4 v9, 0x0

    :goto_5
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v11, v11

    if-ge v9, v11, :cond_28

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v2, v11, v9

    if-eqz v2, :cond_27

    const/16 v11, 0x23

    invoke-static {v11, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v11

    add-int/2addr v10, v11

    :cond_27
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_28
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    if-eqz v11, :cond_29

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    const/16 v12, 0x24

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_29
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    if-eqz v11, :cond_2a

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    const/16 v12, 0x25

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_2a
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    if-eqz v11, :cond_2b

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    const/16 v12, 0x26

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_2b
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    if-eqz v11, :cond_2c

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    const/16 v12, 0x27

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_2c
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    if-eqz v11, :cond_2d

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    const/16 v12, 0x28

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_2d
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    if-eqz v11, :cond_2e

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    const/16 v12, 0x29

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_2e
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    if-eqz v11, :cond_2f

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    const/16 v12, 0x2a

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_2f
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    if-eqz v11, :cond_30

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    const/16 v12, 0x2b

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_30
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    if-eqz v11, :cond_31

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    const/16 v12, 0x2c

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_31
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    if-eqz v11, :cond_32

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    const/16 v12, 0x2d

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_32
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    if-eqz v11, :cond_33

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    const/16 v12, 0x2e

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_33
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-eqz v11, :cond_35

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v11, v11

    if-lez v11, :cond_35

    const/4 v9, 0x0

    :goto_6
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v11, v11

    if-ge v9, v11, :cond_35

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    aget-object v0, v11, v9

    if-eqz v0, :cond_34

    const/16 v11, 0x2f

    invoke-static {v11, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v11

    add-int/2addr v10, v11

    :cond_34
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_35
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-eqz v11, :cond_37

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v11, v11

    if-lez v11, :cond_37

    const/4 v9, 0x0

    :goto_7
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v11, v11

    if-ge v9, v11, :cond_37

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    aget-object v8, v11, v9

    if-eqz v8, :cond_36

    const/16 v11, 0x30

    invoke-static {v11, v8}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v11

    add-int/2addr v10, v11

    :cond_36
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_37
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-eqz v11, :cond_39

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v11, v11

    if-lez v11, :cond_39

    const/4 v9, 0x0

    :goto_8
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v11, v11

    if-ge v9, v11, :cond_39

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    aget-object v3, v11, v9

    if-eqz v3, :cond_38

    const/16 v11, 0x31

    invoke-static {v11, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v11

    add-int/2addr v10, v11

    :cond_38
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_39
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-eqz v11, :cond_3b

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v11, v11

    if-lez v11, :cond_3b

    const/4 v9, 0x0

    :goto_9
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v11, v11

    if-ge v9, v11, :cond_3b

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    aget-object v4, v11, v9

    if-eqz v4, :cond_3a

    const/16 v11, 0x32

    invoke-static {v11, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v11

    add-int/2addr v10, v11

    :cond_3a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_3b
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v11, :cond_3d

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v11, v11

    if-lez v11, :cond_3d

    const/4 v9, 0x0

    :goto_a
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v11, v11

    if-ge v9, v11, :cond_3d

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v2, v11, v9

    if-eqz v2, :cond_3c

    const/16 v11, 0x33

    invoke-static {v11, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v11

    add-int/2addr v10, v11

    :cond_3c
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_3d
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-eqz v11, :cond_3f

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v11, v11

    if-lez v11, :cond_3f

    const/4 v9, 0x0

    :goto_b
    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v11, v11

    if-ge v9, v11, :cond_3f

    iget-object v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    aget-object v5, v11, v9

    if-eqz v5, :cond_3e

    const/16 v11, 0x34

    invoke-static {v11, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v11

    add-int/2addr v10, v11

    :cond_3e
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_3f
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    if-eqz v11, :cond_40

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    const/16 v12, 0x35

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_40
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    if-eqz v11, :cond_41

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    const/16 v12, 0x36

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_41
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    if-eqz v11, :cond_42

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    const/16 v12, 0x37

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_42
    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    if-eqz v11, :cond_43

    iget v11, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    const/16 v12, 0x38

    invoke-static {v12, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_43
    return v10
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v13, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    invoke-static {p1, v11}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v12

    if-nez v12, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v12, 0xa

    invoke-static {p1, v12}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-nez v12, :cond_2

    const/4 v1, 0x0

    :goto_1
    add-int v12, v1, v0

    new-array v3, v12, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-eqz v1, :cond_1

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-static {v12, v13, v3, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v12, v3

    add-int/lit8 v12, v12, -0x1

    if-ge v1, v12, :cond_3

    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v12, v3, v1

    aget-object v12, v3, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v1, v12

    goto :goto_1

    :cond_3
    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v12, v3, v1

    aget-object v12, v3, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    goto/16 :goto_0

    :sswitch_10
    const/16 v12, 0x82

    invoke-static {p1, v12}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-nez v12, :cond_5

    const/4 v1, 0x0

    :goto_3
    add-int v12, v1, v0

    new-array v8, v12, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v1, :cond_4

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {v12, v13, v8, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v12, v8

    add-int/lit8 v12, v12, -0x1

    if-ge v1, v12, :cond_6

    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v12, v8, v1

    aget-object v12, v8, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v1, v12

    goto :goto_3

    :cond_6
    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v12, v8, v1

    aget-object v12, v8, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v8, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    goto/16 :goto_0

    :sswitch_11
    const/16 v12, 0x8a

    invoke-static {p1, v12}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-nez v12, :cond_8

    const/4 v1, 0x0

    :goto_5
    add-int v12, v1, v0

    new-array v9, v12, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v1, :cond_7

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-static {v12, v13, v9, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v12, v9

    add-int/lit8 v12, v12, -0x1

    if-ge v1, v12, :cond_9

    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v12, v9, v1

    aget-object v12, v9, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v1, v12

    goto :goto_5

    :cond_9
    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v12, v9, v1

    aget-object v12, v9, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v9, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    goto/16 :goto_0

    :sswitch_12
    const/16 v12, 0x92

    invoke-static {p1, v12}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-nez v12, :cond_b

    const/4 v1, 0x0

    :goto_7
    add-int v12, v1, v0

    new-array v8, v12, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v1, :cond_a

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {v12, v13, v8, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    array-length v12, v8

    add-int/lit8 v12, v12, -0x1

    if-ge v1, v12, :cond_c

    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v12, v8, v1

    aget-object v12, v8, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v1, v12

    goto :goto_7

    :cond_c
    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v12, v8, v1

    aget-object v12, v8, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v8, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    goto/16 :goto_0

    :sswitch_13
    const/16 v12, 0x9a

    invoke-static {p1, v12}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-nez v12, :cond_e

    const/4 v1, 0x0

    :goto_9
    add-int v12, v1, v0

    new-array v9, v12, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v1, :cond_d

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-static {v12, v13, v9, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_a
    array-length v12, v9

    add-int/lit8 v12, v12, -0x1

    if-ge v1, v12, :cond_f

    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v12, v9, v1

    aget-object v12, v9, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_e
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v1, v12

    goto :goto_9

    :cond_f
    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v12, v9, v1

    aget-object v12, v9, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v9, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    goto/16 :goto_0

    :sswitch_1f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    goto/16 :goto_0

    :sswitch_20
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    goto/16 :goto_0

    :sswitch_21
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    goto/16 :goto_0

    :sswitch_22
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    goto/16 :goto_0

    :sswitch_23
    const/16 v12, 0x11a

    invoke-static {p1, v12}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-nez v12, :cond_11

    const/4 v1, 0x0

    :goto_b
    add-int v12, v1, v0

    new-array v4, v12, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v1, :cond_10

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-static {v12, v13, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_c
    array-length v12, v4

    add-int/lit8 v12, v12, -0x1

    if-ge v1, v12, :cond_12

    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v12, v4, v1

    aget-object v12, v4, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_11
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v1, v12

    goto :goto_b

    :cond_12
    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v12, v4, v1

    aget-object v12, v4, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    goto/16 :goto_0

    :sswitch_24
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    goto/16 :goto_0

    :sswitch_25
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    goto/16 :goto_0

    :sswitch_26
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    goto/16 :goto_0

    :sswitch_27
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    goto/16 :goto_0

    :sswitch_28
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    goto/16 :goto_0

    :sswitch_29
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    goto/16 :goto_0

    :sswitch_2a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    goto/16 :goto_0

    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    goto/16 :goto_0

    :sswitch_2c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    goto/16 :goto_0

    :sswitch_2d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    goto/16 :goto_0

    :sswitch_2e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    goto/16 :goto_0

    :sswitch_2f
    const/16 v12, 0x17a

    invoke-static {p1, v12}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-nez v12, :cond_14

    const/4 v1, 0x0

    :goto_d
    add-int v12, v1, v0

    new-array v2, v12, [Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-eqz v1, :cond_13

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-static {v12, v13, v2, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    :goto_e
    array-length v12, v2

    add-int/lit8 v12, v12, -0x1

    if-ge v1, v12, :cond_15

    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v12, v2, v1

    aget-object v12, v2, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_14
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v1, v12

    goto :goto_d

    :cond_15
    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v12, v2, v1

    aget-object v12, v2, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    goto/16 :goto_0

    :sswitch_30
    const/16 v12, 0x182

    invoke-static {p1, v12}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-nez v12, :cond_17

    const/4 v1, 0x0

    :goto_f
    add-int v12, v1, v0

    new-array v10, v12, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-eqz v1, :cond_16

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-static {v12, v13, v10, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    :goto_10
    array-length v12, v10

    add-int/lit8 v12, v12, -0x1

    if-ge v1, v12, :cond_18

    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v12, v10, v1

    aget-object v12, v10, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_17
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v1, v12

    goto :goto_f

    :cond_18
    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v12, v10, v1

    aget-object v12, v10, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    goto/16 :goto_0

    :sswitch_31
    const/16 v12, 0x18a

    invoke-static {p1, v12}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-nez v12, :cond_1a

    const/4 v1, 0x0

    :goto_11
    add-int v12, v1, v0

    new-array v5, v12, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-eqz v1, :cond_19

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-static {v12, v13, v5, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    :goto_12
    array-length v12, v5

    add-int/lit8 v12, v12, -0x1

    if-ge v1, v12, :cond_1b

    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    aput-object v12, v5, v1

    aget-object v12, v5, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1a
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v1, v12

    goto :goto_11

    :cond_1b
    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    aput-object v12, v5, v1

    aget-object v12, v5, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    goto/16 :goto_0

    :sswitch_32
    const/16 v12, 0x192

    invoke-static {p1, v12}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-nez v12, :cond_1d

    const/4 v1, 0x0

    :goto_13
    add-int v12, v1, v0

    new-array v6, v12, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-eqz v1, :cond_1c

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-static {v12, v13, v6, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1c
    :goto_14
    array-length v12, v6

    add-int/lit8 v12, v12, -0x1

    if-ge v1, v12, :cond_1e

    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    aput-object v12, v6, v1

    aget-object v12, v6, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1d
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v1, v12

    goto :goto_13

    :cond_1e
    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    aput-object v12, v6, v1

    aget-object v12, v6, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v6, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    goto/16 :goto_0

    :sswitch_33
    const/16 v12, 0x19a

    invoke-static {p1, v12}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-nez v12, :cond_20

    const/4 v1, 0x0

    :goto_15
    add-int v12, v1, v0

    new-array v4, v12, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v1, :cond_1f

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-static {v12, v13, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    :goto_16
    array-length v12, v4

    add-int/lit8 v12, v12, -0x1

    if-ge v1, v12, :cond_21

    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v12, v4, v1

    aget-object v12, v4, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_20
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v1, v12

    goto :goto_15

    :cond_21
    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v12, v4, v1

    aget-object v12, v4, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    goto/16 :goto_0

    :sswitch_34
    const/16 v12, 0x1a2

    invoke-static {p1, v12}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-nez v12, :cond_23

    const/4 v1, 0x0

    :goto_17
    add-int v12, v1, v0

    new-array v7, v12, [Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-eqz v1, :cond_22

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-static {v12, v13, v7, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_22
    :goto_18
    array-length v12, v7

    add-int/lit8 v12, v12, -0x1

    if-ge v1, v12, :cond_24

    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    aput-object v12, v7, v1

    aget-object v12, v7, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_23
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v1, v12

    goto :goto_17

    :cond_24
    new-instance v12, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v12}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    aput-object v12, v7, v1

    aget-object v12, v7, v1

    invoke-virtual {p1, v12}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v7, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    goto/16 :goto_0

    :sswitch_35
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    goto/16 :goto_0

    :sswitch_36
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    goto/16 :goto_0

    :sswitch_37
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    goto/16 :goto_0

    :sswitch_38
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v12

    iput v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xb0 -> :sswitch_16
        0xb8 -> :sswitch_17
        0xc0 -> :sswitch_18
        0xc8 -> :sswitch_19
        0xd0 -> :sswitch_1a
        0xd8 -> :sswitch_1b
        0xe0 -> :sswitch_1c
        0xe8 -> :sswitch_1d
        0xf0 -> :sswitch_1e
        0xf8 -> :sswitch_1f
        0x100 -> :sswitch_20
        0x108 -> :sswitch_21
        0x110 -> :sswitch_22
        0x11a -> :sswitch_23
        0x120 -> :sswitch_24
        0x128 -> :sswitch_25
        0x130 -> :sswitch_26
        0x138 -> :sswitch_27
        0x140 -> :sswitch_28
        0x148 -> :sswitch_29
        0x150 -> :sswitch_2a
        0x158 -> :sswitch_2b
        0x160 -> :sswitch_2c
        0x168 -> :sswitch_2d
        0x170 -> :sswitch_2e
        0x17a -> :sswitch_2f
        0x182 -> :sswitch_30
        0x18a -> :sswitch_31
        0x192 -> :sswitch_32
        0x19a -> :sswitch_33
        0x1a2 -> :sswitch_34
        0x1a8 -> :sswitch_35
        0x1b0 -> :sswitch_36
        0x1b8 -> :sswitch_37
        0x1c0 -> :sswitch_38
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v10, v10

    if-lez v10, :cond_1

    const/4 v9, 0x0

    :goto_0
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v10, v10

    if-ge v9, v10, :cond_1

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    aget-object v1, v10, v9

    if-eqz v1, :cond_0

    const/4 v10, 0x1

    invoke-virtual {p1, v10, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    if-eqz v10, :cond_2

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    const/4 v11, 0x2

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    const/4 v11, 0x3

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    if-eqz v10, :cond_4

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    const/4 v11, 0x4

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    const/4 v11, 0x5

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget-boolean v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    const/4 v11, 0x6

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_6
    iget-boolean v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    if-eqz v10, :cond_7

    iget-boolean v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    const/4 v11, 0x7

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_7
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    if-eqz v10, :cond_8

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    const/16 v11, 0x8

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    if-eqz v10, :cond_9

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    const/16 v11, 0x9

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    if-eqz v10, :cond_a

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    const/16 v11, 0xa

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    if-eqz v10, :cond_b

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    const/16 v11, 0xb

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    if-eqz v10, :cond_c

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    const/16 v11, 0xc

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_c
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    if-eqz v10, :cond_d

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    const/16 v11, 0xd

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_d
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    if-eqz v10, :cond_e

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    const/16 v11, 0xe

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_e
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    if-eqz v10, :cond_f

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    const/16 v11, 0xf

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_f
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v10, v10

    if-lez v10, :cond_11

    const/4 v9, 0x0

    :goto_1
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v10, v10

    if-ge v9, v10, :cond_11

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v6, v10, v9

    if-eqz v6, :cond_10

    const/16 v10, 0x10

    invoke-virtual {p1, v10, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_11
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v10, v10

    if-lez v10, :cond_13

    const/4 v9, 0x0

    :goto_2
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v10, v10

    if-ge v9, v10, :cond_13

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v7, v10, v9

    if-eqz v7, :cond_12

    const/16 v10, 0x11

    invoke-virtual {p1, v10, v7}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_13
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v10, v10

    if-lez v10, :cond_15

    const/4 v9, 0x0

    :goto_3
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v10, v10

    if-ge v9, v10, :cond_15

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v6, v10, v9

    if-eqz v6, :cond_14

    const/16 v10, 0x12

    invoke-virtual {p1, v10, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_15
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v10, :cond_17

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v10, v10

    if-lez v10, :cond_17

    const/4 v9, 0x0

    :goto_4
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v10, v10

    if-ge v9, v10, :cond_17

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v7, v10, v9

    if-eqz v7, :cond_16

    const/16 v10, 0x13

    invoke-virtual {p1, v10, v7}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_17
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    if-eqz v10, :cond_18

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    const/16 v11, 0x14

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_18
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    if-eqz v10, :cond_19

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    const/16 v11, 0x15

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_19
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    if-eqz v10, :cond_1a

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    const/16 v11, 0x16

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1a
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    if-eqz v10, :cond_1b

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    const/16 v11, 0x17

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1b
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    if-eqz v10, :cond_1c

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    const/16 v11, 0x18

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1c
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    if-eqz v10, :cond_1d

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    const/16 v11, 0x19

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1d
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    if-eqz v10, :cond_1e

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    const/16 v11, 0x1a

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1e
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    if-eqz v10, :cond_1f

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    const/16 v11, 0x1b

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1f
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    if-eqz v10, :cond_20

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    const/16 v11, 0x1c

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_20
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    if-eqz v10, :cond_21

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    const/16 v11, 0x1d

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_21
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    if-eqz v10, :cond_22

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    const/16 v11, 0x1e

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_22
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    if-eqz v10, :cond_23

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    const/16 v11, 0x1f

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_23
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    if-eqz v10, :cond_24

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    const/16 v11, 0x20

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_24
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    if-eqz v10, :cond_25

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    const/16 v11, 0x21

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_25
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    if-eqz v10, :cond_26

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    const/16 v11, 0x22

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_26
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v10, :cond_28

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v10, v10

    if-lez v10, :cond_28

    const/4 v9, 0x0

    :goto_5
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v10, v10

    if-ge v9, v10, :cond_28

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v2, v10, v9

    if-eqz v2, :cond_27

    const/16 v10, 0x23

    invoke-virtual {p1, v10, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_27
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_28
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    if-eqz v10, :cond_29

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    const/16 v11, 0x24

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_29
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    if-eqz v10, :cond_2a

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    const/16 v11, 0x25

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2a
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    if-eqz v10, :cond_2b

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    const/16 v11, 0x26

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2b
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    if-eqz v10, :cond_2c

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    const/16 v11, 0x27

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2c
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    if-eqz v10, :cond_2d

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    const/16 v11, 0x28

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2d
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    if-eqz v10, :cond_2e

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    const/16 v11, 0x29

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2e
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    if-eqz v10, :cond_2f

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    const/16 v11, 0x2a

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2f
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    if-eqz v10, :cond_30

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    const/16 v11, 0x2b

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_30
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    if-eqz v10, :cond_31

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    const/16 v11, 0x2c

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_31
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    if-eqz v10, :cond_32

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    const/16 v11, 0x2d

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_32
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    if-eqz v10, :cond_33

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    const/16 v11, 0x2e

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_33
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-eqz v10, :cond_35

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v10, v10

    if-lez v10, :cond_35

    const/4 v9, 0x0

    :goto_6
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v10, v10

    if-ge v9, v10, :cond_35

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    aget-object v0, v10, v9

    if-eqz v0, :cond_34

    const/16 v10, 0x2f

    invoke-virtual {p1, v10, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_34
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_35
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-eqz v10, :cond_37

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v10, v10

    if-lez v10, :cond_37

    const/4 v9, 0x0

    :goto_7
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v10, v10

    if-ge v9, v10, :cond_37

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    aget-object v8, v10, v9

    if-eqz v8, :cond_36

    const/16 v10, 0x30

    invoke-virtual {p1, v10, v8}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_36
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_37
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-eqz v10, :cond_39

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v10, v10

    if-lez v10, :cond_39

    const/4 v9, 0x0

    :goto_8
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v10, v10

    if-ge v9, v10, :cond_39

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    aget-object v3, v10, v9

    if-eqz v3, :cond_38

    const/16 v10, 0x31

    invoke-virtual {p1, v10, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_38
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_39
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-eqz v10, :cond_3b

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v10, v10

    if-lez v10, :cond_3b

    const/4 v9, 0x0

    :goto_9
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v10, v10

    if-ge v9, v10, :cond_3b

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    aget-object v4, v10, v9

    if-eqz v4, :cond_3a

    const/16 v10, 0x32

    invoke-virtual {p1, v10, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_3b
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v10, :cond_3d

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v10, v10

    if-lez v10, :cond_3d

    const/4 v9, 0x0

    :goto_a
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v10, v10

    if-ge v9, v10, :cond_3d

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v2, v10, v9

    if-eqz v2, :cond_3c

    const/16 v10, 0x33

    invoke-virtual {p1, v10, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3c
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_3d
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-eqz v10, :cond_3f

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v10, v10

    if-lez v10, :cond_3f

    const/4 v9, 0x0

    :goto_b
    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v10, v10

    if-ge v9, v10, :cond_3f

    iget-object v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    aget-object v5, v10, v9

    if-eqz v5, :cond_3e

    const/16 v10, 0x34

    invoke-virtual {p1, v10, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3e
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_3f
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    if-eqz v10, :cond_40

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    const/16 v11, 0x35

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_40
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    if-eqz v10, :cond_41

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    const/16 v11, 0x36

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_41
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    if-eqz v10, :cond_42

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    const/16 v11, 0x37

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_42
    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    if-eqz v10, :cond_43

    iget v10, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    const/16 v11, 0x38

    invoke-virtual {p1, v11, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_43
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
