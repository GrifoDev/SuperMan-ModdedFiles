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

.field private mMatchMode:I

.field private mNumOfMatchesPerFilter:I

.field private mReportDelayMillis:J

.field private mScanFilterRssiValue:I

.field private mScanMode:I

.field private mScanResultType:I

.field private mTrackableScanFilterRssiValue:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, -0x80

    const/4 v2, 0x0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    .line 315
    iput v4, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    .line 316
    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    .line 317
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    .line 318
    iput v4, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    .line 319
    const/4 v0, 0x3

    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    .line 320
    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanInterval:I

    .line 321
    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanWindow:I

    .line 322
    iput v3, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanFilterRssiValue:I

    .line 323
    iput v3, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mTrackableScanFilterRssiValue:I

    .line 313
    return-void
.end method

.method private isValidCallbackType(I)Z
    .locals 2
    .param p1, "callbackType"    # I

    .prologue
    const/4 v0, 0x1

    .line 357
    if-eq p1, v0, :cond_0

    .line 358
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 360
    :cond_0
    return v0

    .line 359
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 362
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
    .locals 13

    .prologue
    .line 481
    new-instance v0, Landroid/bluetooth/le/ScanSettings;

    iget v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    iget v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    iget v3, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    .line 482
    iget-wide v4, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    iget v6, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    iget v7, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    iget v8, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanInterval:I

    iget v9, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanWindow:I

    iget v10, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanFilterRssiValue:I

    iget v11, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mTrackableScanFilterRssiValue:I

    .line 481
    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/bluetooth/le/ScanSettings;-><init>(IIIJIIIIIILandroid/bluetooth/le/ScanSettings;)V

    return-object v0
.end method

.method public semSetCustomScanParams(II)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "scanInterval"    # I
    .param p2, "scanWindow"    # I

    .prologue
    const/16 v1, 0x4000

    const/4 v0, 0x4

    .line 441
    if-lt p1, v0, :cond_0

    if-le p1, v1, :cond_1

    .line 443
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parameter is out of range of spec, scanInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 444
    const-string/jumbo v2, ", scanWindow: "

    .line 443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_1
    if-lt p2, v0, :cond_0

    if-gt p2, v1, :cond_0

    if-lt p1, p2, :cond_0

    .line 445
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanInterval:I

    .line 446
    iput p2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanWindow:I

    .line 447
    return-object p0
.end method

.method public semSetScanFilterRssiThreshold(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "rssi"    # I

    .prologue
    .line 457
    const/16 v0, -0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    .line 458
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

    .line 459
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanFilterRssiValue:I

    .line 460
    return-object p0
.end method

.method public semSetTrackableScanFilterRssiThreshold(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "trackableRssi"    # I

    .prologue
    .line 471
    const/16 v0, -0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    .line 472
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

    .line 473
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mTrackableScanFilterRssiValue:I

    .line 474
    return-object p0
.end method

.method public setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "callbackType"    # I

    .prologue
    .line 348
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->isValidCallbackType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
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

    .line 351
    :cond_0
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    .line 352
    return-object p0
.end method

.method public setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "matchMode"    # I

    .prologue
    const/16 v1, 0x65

    .line 428
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 429
    if-le p1, v1, :cond_1

    if-eq p1, v1, :cond_1

    .line 430
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

    .line 432
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    .line 433
    return-object p0
.end method

.method public setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "numOfMatches"    # I

    .prologue
    .line 411
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 412
    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 413
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

    .line 415
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    .line 416
    return-object p0
.end method

.method public setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "reportDelayMillis"    # J

    .prologue
    .line 394
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "reportDelay must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    iput-wide p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    .line 398
    return-object p0
.end method

.method public setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "scanMode"    # I

    .prologue
    .line 333
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    .line 334
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

    .line 336
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    .line 337
    return-object p0
.end method

.method public setScanResultType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "scanResultType"    # I

    .prologue
    .line 376
    if-ltz p1, :cond_0

    .line 377
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 378
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid scanResultType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    .line 382
    return-object p0
.end method
