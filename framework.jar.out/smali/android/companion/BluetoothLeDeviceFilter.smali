.class public final Landroid/companion/BluetoothLeDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothLeDeviceFilter.java"

# interfaces
.implements Landroid/companion/DeviceFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/BluetoothLeDeviceFilter$1;,
        Landroid/companion/BluetoothLeDeviceFilter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/companion/DeviceFilter",
        "<",
        "Landroid/bluetooth/le/ScanResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/companion/BluetoothLeDeviceFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "BluetoothLeDeviceFilter"

.field private static final RENAME_PREFIX_LENGTH_LIMIT:I = 0xa


# instance fields
.field private final mNamePattern:Ljava/util/regex/Pattern;

.field private final mRawDataFilter:[B

.field private final mRawDataFilterMask:[B

.field private final mRenameBytesFrom:I

.field private final mRenameBytesLength:I

.field private final mRenameBytesReverseOrder:Z

.field private final mRenameNameFrom:I

.field private final mRenameNameLength:I

.field private final mRenamePrefix:Ljava/lang/String;

.field private final mRenameSuffix:Ljava/lang/String;

.field private final mScanFilter:Landroid/bluetooth/le/ScanFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/BluetoothLeDeviceFilter$1;

    invoke-direct {v0}, Landroid/companion/BluetoothLeDeviceFilter$1;-><init>()V

    sput-object v0, Landroid/companion/BluetoothLeDeviceFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/regex/Pattern;Landroid/bluetooth/le/ScanFilter;[B[BLjava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    sget-object v0, Landroid/bluetooth/le/ScanFilter;->EMPTY:Landroid/bluetooth/le/ScanFilter;

    invoke-static {p2, v0}, Lcom/android/internal/util/ObjectUtils;->firstNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanFilter;

    iput-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    iput-object p3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    iput-object p4, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    iput-object p5, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    iput-object p6, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    iput p7, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    iput p8, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    iput p9, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    iput p10, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    iput-boolean p11, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/regex/Pattern;Landroid/bluetooth/le/ScanFilter;[B[BLjava/lang/String;Ljava/lang/String;IIIIZLandroid/companion/BluetoothLeDeviceFilter;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Landroid/companion/BluetoothLeDeviceFilter;-><init>(Ljava/util/regex/Pattern;Landroid/bluetooth/le/ScanFilter;[B[BLjava/lang/String;Ljava/lang/String;IIIIZ)V

    return-void
.end method

.method public static getRenamePrefixLengthLimit()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method private matches(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter;->getScanFilter()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/companion/BluetoothDeviceFilterUtils;->matches(Landroid/bluetooth/le/ScanFilter;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter;->getNamePattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesName(Ljava/util/regex/Pattern;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/companion/BluetoothLeDeviceFilter;

    iget v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    iget v3, v0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    iget v3, v0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    iget v3, v0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    iget v3, v0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    iget-boolean v3, v0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    iget-object v3, v0, Landroid/companion/BluetoothLeDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    iget-object v3, v0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    iget-object v3, v0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    iget-object v3, v0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    iget-object v3, v0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    iget-object v2, v0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public getDeviceDisplayName(Landroid/bluetooth/le/ScanResult;)Ljava/lang/String;
    .locals 11

    iget v7, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    if-gez v7, :cond_0

    iget v7, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    if-gez v7, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-static {v7}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    if-ltz v7, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    iget v5, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    iget v7, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    iget v8, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    add-int/2addr v7, v8

    add-int/lit8 v1, v7, -0x1

    iget-boolean v7, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    if-eqz v7, :cond_1

    move v3, v1

    :goto_0
    iget-boolean v7, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    if-eqz v7, :cond_2

    const/4 v6, -0x1

    :goto_1
    move v2, v3

    :goto_2
    if-gt v5, v2, :cond_4

    if-gt v2, v1, :cond_4

    aget-byte v7, v0, v2

    const/4 v8, 0x1

    invoke-static {v7, v8}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v6

    goto :goto_2

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-static {v7}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    iget v9, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    iget v10, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    add-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v7, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public bridge synthetic getDeviceDisplayName(Landroid/os/Parcelable;)Ljava/lang/String;
    .locals 1

    check-cast p1, Landroid/bluetooth/le/ScanResult;

    invoke-virtual {p0, p1}, Landroid/companion/BluetoothLeDeviceFilter;->getDeviceDisplayName(Landroid/bluetooth/le/ScanResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediumType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getNamePattern()Ljava/util/regex/Pattern;
    .locals 1

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public getRawDataFilter()[B
    .locals 1

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    return-object v0
.end method

.method public getRawDataFilterMask()[B
    .locals 1

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    return-object v0
.end method

.method public getRenameBytesFrom()I
    .locals 1

    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    return v0
.end method

.method public getRenameBytesLength()I
    .locals 1

    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    return v0
.end method

.method public getRenamePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRenameSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getScanFilter()Landroid/bluetooth/le/ScanFilter;
    .locals 1

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRenameBytesReverseOrder()Z
    .locals 1

    iget-boolean v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    return v0
.end method

.method public matches(Landroid/bluetooth/le/ScanResult;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/companion/BluetoothLeDeviceFilter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/BitUtils;->maskedEquals([B[B[B)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic matches(Landroid/os/Parcelable;)Z
    .locals 1

    check-cast p1, Landroid/bluetooth/le/ScanResult;

    invoke-virtual {p0, p1}, Landroid/companion/BluetoothLeDeviceFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BluetoothLEDeviceFilter{mNamePattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mScanFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRawDataFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRawDataFilterMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRenamePrefix=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRenameSuffix=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRenameBytesFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRenameBytesLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRenameNameFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRenameNameLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRenameBytesReverseOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter;->getNamePattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/BluetoothDeviceFilterUtils;->patternToString(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
