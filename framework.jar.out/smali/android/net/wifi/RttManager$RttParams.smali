.class public Landroid/net/wifi/RttManager$RttParams;
.super Ljava/lang/Object;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RttParams"
.end annotation


# instance fields
.field public LCIRequest:Z

.field public LCRRequest:Z

.field public bandwidth:I

.field public bssid:Ljava/lang/String;

.field public burstTimeout:I

.field public centerFreq0:I

.field public centerFreq1:I

.field public channelWidth:I

.field public deviceType:I

.field public frequency:I

.field public interval:I

.field public numRetriesPerFTMR:I

.field public numRetriesPerMeasurementFrame:I

.field public numSamplesPerBurst:I

.field public num_retries:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public num_samples:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public numberBurst:I

.field public preamble:I

.field public requestType:I

.field public secure:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    .line 466
    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    .line 467
    iput v1, p0, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    .line 468
    const/16 v0, 0x8

    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    .line 469
    iput v1, p0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    .line 470
    iput v1, p0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    .line 471
    const/16 v0, 0xf

    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    .line 472
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    .line 473
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    .line 463
    return-void
.end method
