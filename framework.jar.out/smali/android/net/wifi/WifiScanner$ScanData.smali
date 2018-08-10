.class public Landroid/net/wifi/WifiScanner$ScanData;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ScanData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllChannelsScanned:Z

.field private mBucketsScanned:I

.field private mFlags:I

.field private mId:I

.field private mResults:[Landroid/net/wifi/ScanResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanData$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$ScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIZ[Landroid/net/wifi/ScanResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    iput p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    iput p3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    iput-boolean p4, p0, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    iput-object p5, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    return-void
.end method

.method public constructor <init>(II[Landroid/net/wifi/ScanResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    iput p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    iput-object p3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    iput v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    iget v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    iput v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    iget v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    iput v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    iget-boolean v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    iput-boolean v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v3, v3

    new-array v3, v3, [Landroid/net/wifi/ScanResult;

    iput-object v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    aget-object v2, v3, v0

    new-instance v1, Landroid/net/wifi/ScanResult;

    invoke-direct {v1, v2}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBucketsScanned()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    return v0
.end method

.method public getResults()[Landroid/net/wifi/ScanResult;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public isAllChannelsScanned()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    aget-object v1, v2, v0

    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    return-void
.end method
