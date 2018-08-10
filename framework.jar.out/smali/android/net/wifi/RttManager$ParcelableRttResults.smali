.class public Landroid/net/wifi/RttManager$ParcelableRttResults;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableRttResults"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/RttManager$ParcelableRttResults$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/RttManager$ParcelableRttResults;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mResults:[Landroid/net/wifi/RttManager$RttResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttResults$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager$ParcelableRttResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/RttManager$RttResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", burstNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", measurementFrameNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", successMeasurementFrameNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", frameNumberPerBurstPeer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", requestType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->requestType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", measurementType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", retryAfterDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", ts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->ts:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", rssi_spread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->rssi_spread:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", rssiSpread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", tx_rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->tx_rate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", txRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", rxRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->rxRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", rtt_ns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->rtt_ns:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", rtt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", rtt_sd_ns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->rtt_sd_ns:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", rttStandardDeviation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", rtt_spread_ns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->rtt_spread_ns:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", rttSpread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", distance_cm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distance_cm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", distance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", distance_sd_cm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distance_sd_cm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", distanceStandardDeviation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", distance_spread_cm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distance_spread_cm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", distanceSpread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", burstDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", negotiatedBurstNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", LCI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", LCR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", secure="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroid/net/wifi/RttManager$RttResult;->secure:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9

    const/4 v8, -0x1

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->status:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v6, v0, Landroid/net/wifi/RttManager$RttResult;->ts:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v6, v0, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v6, v0, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v6, v0, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->distance:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v1, v1, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v1, v1, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    if-eq v1, v8, :cond_0

    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v1, v1, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v1, v1, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v1, v1, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v1, v1, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    if-eq v1, v8, :cond_1

    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v1, v1, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v1, v1, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_1
    iget-boolean v1, v0, Landroid/net/wifi/RttManager$RttResult;->secure:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_4
    return-void
.end method
