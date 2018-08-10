.class public final Landroid/companion/WifiDeviceFilter;
.super Ljava/lang/Object;
.source "WifiDeviceFilter.java"

# interfaces
.implements Landroid/companion/DeviceFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/WifiDeviceFilter$1;,
        Landroid/companion/WifiDeviceFilter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/companion/DeviceFilter",
        "<",
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/companion/WifiDeviceFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mNamePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/WifiDeviceFilter$1;

    invoke-direct {v0}, Landroid/companion/WifiDeviceFilter$1;-><init>()V

    sput-object v0, Landroid/companion/WifiDeviceFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ParcelClassLoader"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/BluetoothDeviceFilterUtils;->patternFromString(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/companion/WifiDeviceFilter;-><init>(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/companion/WifiDeviceFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/WifiDeviceFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/WifiDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/regex/Pattern;Landroid/companion/WifiDeviceFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/WifiDeviceFilter;-><init>(Ljava/util/regex/Pattern;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/companion/WifiDeviceFilter;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/companion/WifiDeviceFilter;

    iget-object v1, p0, Landroid/companion/WifiDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    iget-object v2, v0, Landroid/companion/WifiDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDeviceDisplayName(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceDisplayName(Landroid/os/Parcelable;)Ljava/lang/String;
    .locals 1

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-virtual {p0, p1}, Landroid/companion/WifiDeviceFilter;->getDeviceDisplayName(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediumType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getNamePattern()Ljava/util/regex/Pattern;
    .locals 1

    iget-object v0, p0, Landroid/companion/WifiDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/companion/WifiDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Landroid/net/wifi/ScanResult;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/companion/WifiDeviceFilter;->getNamePattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesName(Ljava/util/regex/Pattern;Landroid/net/wifi/ScanResult;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic matches(Landroid/os/Parcelable;)Z
    .locals 1

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-virtual {p0, p1}, Landroid/companion/WifiDeviceFilter;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/companion/WifiDeviceFilter;->getNamePattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/BluetoothDeviceFilterUtils;->patternToString(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
