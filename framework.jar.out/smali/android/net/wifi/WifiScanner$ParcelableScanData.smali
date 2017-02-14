.class public Landroid/net/wifi/WifiScanner$ParcelableScanData;
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
    name = "ParcelableScanData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ParcelableScanData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$ParcelableScanData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mResults:[Landroid/net/wifi/WifiScanner$ScanData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/WifiScanner$ParcelableScanData$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ParcelableScanData$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->mResults:[Landroid/net/wifi/WifiScanner$ScanData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getResults()[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->mResults:[Landroid/net/wifi/WifiScanner$ScanData;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->mResults:[Landroid/net/wifi/WifiScanner$ScanData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->mResults:[Landroid/net/wifi/WifiScanner$ScanData;

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->mResults:[Landroid/net/wifi/WifiScanner$ScanData;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->mResults:[Landroid/net/wifi/WifiScanner$ScanData;

    aget-object v1, v2, v0

    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/WifiScanner$ScanData;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    return-void
.end method
