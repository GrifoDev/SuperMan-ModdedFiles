.class public final Landroid/bluetooth/SemBluetoothUuid;
.super Ljava/lang/Object;
.source "SemBluetoothUuid.java"


# static fields
.field public static final ADVANCED_AUDIO_DISTRIBUTION:Landroid/os/ParcelUuid;

.field public static final AUDIO_SINK:Landroid/os/ParcelUuid;

.field public static final AUDIO_SOURCE:Landroid/os/ParcelUuid;

.field public static final HANDSFREE:Landroid/os/ParcelUuid;

.field public static final HID:Landroid/os/ParcelUuid;

.field public static final HOGP:Landroid/os/ParcelUuid;

.field public static final HSP:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    sput-object v0, Landroid/bluetooth/SemBluetoothUuid;->HID:Landroid/os/ParcelUuid;

    .line 36
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    sput-object v0, Landroid/bluetooth/SemBluetoothUuid;->HANDSFREE:Landroid/os/ParcelUuid;

    .line 40
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    sput-object v0, Landroid/bluetooth/SemBluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    .line 45
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    sput-object v0, Landroid/bluetooth/SemBluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    .line 49
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    sput-object v0, Landroid/bluetooth/SemBluetoothUuid;->AUDIO_SINK:Landroid/os/ParcelUuid;

    .line 53
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    sput-object v0, Landroid/bluetooth/SemBluetoothUuid;->AUDIO_SOURCE:Landroid/os/ParcelUuid;

    .line 57
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    sput-object v0, Landroid/bluetooth/SemBluetoothUuid;->ADVANCED_AUDIO_DISTRIBUTION:Landroid/os/ParcelUuid;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuidA"    # [Landroid/os/ParcelUuid;
    .param p1, "uuidB"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 76
    invoke-static {p0, p1}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    return v0
.end method

.method public static isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuidArray"    # [Landroid/os/ParcelUuid;
    .param p1, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 66
    invoke-static {p0, p1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    return v0
.end method
