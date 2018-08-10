.class public final Landroid/bluetooth/le/ScanSettings;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ScanSettings$1;,
        Landroid/bluetooth/le/ScanSettings$Builder;
    }
.end annotation


# static fields
.field public static final CALLBACK_TYPE_ALL_MATCHES:I = 0x1

.field public static final CALLBACK_TYPE_FIRST_MATCH:I = 0x2

.field public static final CALLBACK_TYPE_MATCH_LOST:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/le/ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_MODE_AGGRESSIVE:I = 0x1

.field public static final MATCH_MODE_STICKY:I = 0x2

.field public static final MATCH_NUM_FEW_ADVERTISEMENT:I = 0x2

.field public static final MATCH_NUM_MAX_ADVERTISEMENT:I = 0x3

.field public static final MATCH_NUM_ONE_ADVERTISEMENT:I = 0x1

.field public static final PHY_LE_ALL_SUPPORTED:I = 0xff

.field private static final RSSI_MAX:I = 0x14

.field private static final RSSI_MIN:I = -0x80

.field private static final SCAN_INTERVAL_MAX:I = 0x9f560a

.field private static final SCAN_INTERVAL_MIN:I = 0x3

.field public static final SCAN_MODE_BALANCED:I = 0x1

.field public static final SCAN_MODE_LOW_LATENCY:I = 0x2

.field public static final SCAN_MODE_LOW_POWER:I = 0x0

.field public static final SCAN_MODE_OPPORTUNISTIC:I = -0x1

.field public static final SCAN_RESULT_TYPE_ABBREVIATED:I = 0x1

.field public static final SCAN_RESULT_TYPE_FULL:I = 0x0

.field private static final SCAN_WINDOW_MAX:I = 0x9ff6

.field private static final SCAN_WINDOW_MIN:I = 0x3

.field public static final SEM_MATCH_MODE_CUSTOM:I = 0x65

.field public static final SEM_SCAN_MODE_CUSTOM:I = 0x64


# instance fields
.field private mCallbackType:I

.field private mCustomScanInterval:I

.field private mCustomScanWindow:I

.field private mLegacy:Z

.field private mMatchMode:I

.field private mNumOfMatchesPerFilter:I

.field private mPhy:I

.field private mReportDelayMillis:J

.field private mScanFilterRssiValue:I

.field private mScanMode:I

.field private mScanResultType:I

.field private mTrackableScanFilterRssiValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/le/ScanSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIIJIIIIIIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    iput p2, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    iput p3, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    iput-wide p4, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    iput p7, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    iput p6, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    iput p8, p0, Landroid/bluetooth/le/ScanSettings;->mCustomScanInterval:I

    iput p9, p0, Landroid/bluetooth/le/ScanSettings;->mCustomScanWindow:I

    iput p10, p0, Landroid/bluetooth/le/ScanSettings;->mScanFilterRssiValue:I

    iput p11, p0, Landroid/bluetooth/le/ScanSettings;->mTrackableScanFilterRssiValue:I

    iput-boolean p12, p0, Landroid/bluetooth/le/ScanSettings;->mLegacy:Z

    iput p13, p0, Landroid/bluetooth/le/ScanSettings;->mPhy:I

    return-void
.end method

.method synthetic constructor <init>(IIIJIIIIIIZILandroid/bluetooth/le/ScanSettings;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Landroid/bluetooth/le/ScanSettings;-><init>(IIIJIIIIIIZI)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/le/ScanSettings;->mCustomScanInterval:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/le/ScanSettings;->mCustomScanWindow:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/le/ScanSettings;->mScanFilterRssiValue:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/le/ScanSettings;->mTrackableScanFilterRssiValue:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/bluetooth/le/ScanSettings;->mLegacy:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mPhy:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/ScanSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallbackType()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    return v0
.end method

.method public getCustomScanInterval()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mCustomScanInterval:I

    return v0
.end method

.method public getCustomScanWindow()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mCustomScanWindow:I

    return v0
.end method

.method public getLegacy()Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/le/ScanSettings;->mLegacy:Z

    return v0
.end method

.method public getMatchMode()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    return v0
.end method

.method public getNumOfMatches()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    return v0
.end method

.method public getPhy()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mPhy:I

    return v0
.end method

.method public getReportDelayMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    return-wide v0
.end method

.method public getScanFilterRssiValue()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanFilterRssiValue:I

    return v0
.end method

.method public getScanMode()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    return v0
.end method

.method public getScanResultType()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    return v0
.end method

.method public getTrackableScanFilterRssiValue()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mTrackableScanFilterRssiValue:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mCustomScanInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mCustomScanWindow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanFilterRssiValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mTrackableScanFilterRssiValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/bluetooth/le/ScanSettings;->mLegacy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
