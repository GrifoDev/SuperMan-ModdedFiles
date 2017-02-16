.class public final Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;
.super Ljava/lang/Object;
.source "SemBluetoothHidDeviceAppSdpSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final description:Ljava/lang/String;

.field public final descriptors:[B

.field public final name:Ljava/lang/String;

.field public final provider:Ljava/lang/String;

.field public final subclass:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings$1;-><init>()V

    .line 87
    sput-object v0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .param p4, "subclass"    # B
    .param p5, "descriptors"    # [B

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->name:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->description:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->provider:Ljava/lang/String;

    .line 60
    iput-byte p4, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->subclass:B

    .line 61
    invoke-virtual {p5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->descriptors:[B

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 67
    instance-of v2, p1, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 68
    nop

    nop

    .line 69
    .local v0, "sdp":Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->name:Ljava/lang/String;

    iget-object v3, v0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->name:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 70
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->description:Ljava/lang/String;

    iget-object v3, v0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->description:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 71
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->provider:Ljava/lang/String;

    iget-object v3, v0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->provider:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 72
    iget-byte v2, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->subclass:B

    iget-byte v3, v0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->subclass:B

    if-ne v2, v3, :cond_0

    .line 73
    iget-object v2, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->descriptors:[B

    iget-object v3, v0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->descriptors:[B

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 69
    :cond_0
    return v1

    .line 75
    .end local v0    # "sdp":Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;
    :cond_1
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 108
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-byte v0, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->subclass:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 112
    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;->descriptors:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 107
    return-void
.end method
