.class public final Landroid/bluetooth/BluetoothCodecStatus;
.super Ljava/lang/Object;
.source "BluetoothCodecStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothCodecStatus$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothCodecStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_CODEC_STATUS:Ljava/lang/String; = "android.bluetooth.codec.extra.CODEC_STATUS"


# instance fields
.field private final mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

.field private final mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

.field private final mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BluetoothCodecStatus$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothCodecStatus$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothCodecStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    iput-object p2, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    iput-object p3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    return-void
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

    instance-of v2, p1, Landroid/bluetooth/BluetoothCodecStatus;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothCodecStatus;

    iget-object v2, v0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    iget-object v2, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    return-object v0
.end method

.method public getCodecsLocalCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    return-object v0
.end method

.method public getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mCodecConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mCodecsLocalCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mCodecsSelectableCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
