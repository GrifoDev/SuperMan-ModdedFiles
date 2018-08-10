.class public final Landroid/bluetooth/le/ScanSettings$Builder;
.super Ljava/lang/Object;
.source "ScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


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
.method public constructor <init>()V
    .locals 5

    const/16 v4, -0x80

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    iput v3, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    iput v3, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanInterval:I

    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanWindow:I

    iput v4, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanFilterRssiValue:I

    iput v4, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mTrackableScanFilterRssiValue:I

    iput-boolean v3, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mLegacy:Z

    const/16 v0, 0xff

    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mPhy:I

    return-void
.end method

.method private isValidCallbackType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/ScanSettings;
    .locals 15

    new-instance v0, Landroid/bluetooth/le/ScanSettings;

    iget v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    iget v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    iget v3, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    iget-wide v4, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    iget v6, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    iget v7, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    iget v8, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanInterval:I

    iget v9, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanWindow:I

    iget v10, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanFilterRssiValue:I

    iget v11, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mTrackableScanFilterRssiValue:I

    iget-boolean v12, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mLegacy:Z

    iget v13, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mPhy:I

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Landroid/bluetooth/le/ScanSettings;-><init>(IIIJIIIIIIZILandroid/bluetooth/le/ScanSettings;)V

    return-object v0
.end method

.method public semSetCustomScanParams(II)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3

    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    const v0, 0x9f560a

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parameter is out of range of spec, scanInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", scanWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-lt p2, v1, :cond_0

    const v0, 0x9ff6

    if-gt p2, v0, :cond_0

    if-lt p1, p2, :cond_0

    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanInterval:I

    iput p2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanWindow:I

    return-object p0
.end method

.method public semSetScanFilterRssiThreshold(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3

    const/16 v0, -0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parameter is out of range of spec, rssi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanFilterRssiValue:I

    return-object p0
.end method

.method public semSetTrackableScanFilterRssiThreshold(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3

    const/16 v0, -0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parameter is out of range of spec, trackableRssi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mTrackableScanFilterRssiValue:I

    return-object p0
.end method

.method public setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3

    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->isValidCallbackType(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid callback type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    return-object p0
.end method

.method public setLegacy(Z)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mLegacy:Z

    return-object p0
.end method

.method public setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3

    const/16 v1, 0x65

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-le p1, v1, :cond_1

    if-eq p1, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid matchMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    return-object p0
.end method

.method public setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid numOfMatches "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    return-object p0
.end method

.method public setPhy(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mPhy:I

    return-object p0
.end method

.method public setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "reportDelay must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    return-object p0
.end method

.method public setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid scan mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    return-object p0
.end method

.method public setScanResultType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid scanResultType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    return-object p0
.end method
