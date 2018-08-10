.class public final Landroid/bluetooth/BluetoothUuid;
.super Ljava/lang/Object;
.source "BluetoothUuid.java"


# static fields
.field public static final AdvAudioDist:Landroid/os/ParcelUuid;

.field public static final AudioSink:Landroid/os/ParcelUuid;

.field public static final AudioSource:Landroid/os/ParcelUuid;

.field public static final AvrcpController:Landroid/os/ParcelUuid;

.field public static final AvrcpTarget:Landroid/os/ParcelUuid;

.field public static final BASE_UUID:Landroid/os/ParcelUuid;

.field public static final BIP:Landroid/os/ParcelUuid;

.field public static final BNEP:Landroid/os/ParcelUuid;

.field public static final BasicPrinting:Landroid/os/ParcelUuid;

.field public static final CTP:Landroid/os/ParcelUuid;

.field public static final DUN:Landroid/os/ParcelUuid;

.field public static final FAX:Landroid/os/ParcelUuid;

.field public static final FileTransfer:Landroid/os/ParcelUuid;

.field public static final GN:Landroid/os/ParcelUuid;

.field public static final GenericAudio:Landroid/os/ParcelUuid;

.field public static final HSP:Landroid/os/ParcelUuid;

.field public static final HSP_AG:Landroid/os/ParcelUuid;

.field public static final Handsfree:Landroid/os/ParcelUuid;

.field public static final Handsfree_AG:Landroid/os/ParcelUuid;

.field public static final Hid:Landroid/os/ParcelUuid;

.field public static final Hogp:Landroid/os/ParcelUuid;

.field public static final ICP:Landroid/os/ParcelUuid;

.field public static final IRMC_SYNC_CMD:Landroid/os/ParcelUuid;

.field public static final LAP:Landroid/os/ParcelUuid;

.field public static final MAP:Landroid/os/ParcelUuid;

.field public static final MAS:Landroid/os/ParcelUuid;

.field public static final MNS:Landroid/os/ParcelUuid;

.field public static final NAP:Landroid/os/ParcelUuid;

.field public static final ObexObjectPush:Landroid/os/ParcelUuid;

.field public static final PANU:Landroid/os/ParcelUuid;

.field public static final PBAP_PCE:Landroid/os/ParcelUuid;

.field public static final PBAP_PSE:Landroid/os/ParcelUuid;

.field public static final PhoneBookAccess:Landroid/os/ParcelUuid;

.field public static final RESERVED_UUIDS:[Landroid/os/ParcelUuid;

.field public static final SAP:Landroid/os/ParcelUuid;

.field public static final SYNC_:Landroid/os/ParcelUuid;

.field public static final SerialPort:Landroid/os/ParcelUuid;

.field public static final UUID_BYTES_128_BIT:I = 0x10

.field public static final UUID_BYTES_16_BIT:I = 0x2

.field public static final UUID_BYTES_32_BIT:I = 0x4

.field public static final VIDEO_DIST:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "0000110B-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "0000110A-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "0000110D-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001108-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001112-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "0000111E-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "0000111F-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "0000110E-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "0000110C-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001105-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001124-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001812-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001115-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001116-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "0000000f-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "0000112e-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PCE:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "0000112f-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001134-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001133-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001132-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "0000112D-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001106-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->FileTransfer:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001130-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->PhoneBookAccess:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001122-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->BasicPrinting:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001101-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->SerialPort:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001103-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->DUN:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001203-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->GenericAudio:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001117-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->GN:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001104-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->SYNC_:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001109-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->CTP:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001110-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->ICP:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001111-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->FAX:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001102-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->LAP:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "0000111A-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->BIP:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001305-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->VIDEO_DIST:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001107-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->IRMC_SYNC_CMD:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00000000-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    const/16 v0, 0x14

    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->FileTransfer:Landroid/os/ParcelUuid;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PhoneBookAccess:Landroid/os/ParcelUuid;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->BasicPrinting:Landroid/os/ParcelUuid;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->SerialPort:Landroid/os/ParcelUuid;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->DUN:Landroid/os/ParcelUuid;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->RESERVED_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v2

    :cond_0
    if-nez p0, :cond_2

    array-length v4, p1

    if-nez v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    return v2

    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    array-length v5, p1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v0, p1, v4

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    return v3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return v2
.end method

.method public static containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v2

    :cond_0
    if-nez p0, :cond_2

    array-length v4, p1

    if-nez v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    if-nez p1, :cond_4

    array-length v4, p0

    if-nez v4, :cond_3

    :goto_1
    return v2

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    array-length v5, p1

    move v4, v3

    :goto_2
    if-ge v4, v5, :cond_6

    aget-object v0, p1, v4

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    return v2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    return v3
.end method

.method public static getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I
    .locals 8

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    const-wide v6, 0xffff00000000L

    and-long/2addr v4, v6

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    long-to-int v1, v2

    return v1
.end method

.method public static is16BitUuid(Landroid/os/ParcelUuid;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const-wide v4, -0xffff00000001L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1000

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static is32BitUuid(Landroid/os/ParcelUuid;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1000

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isAdvAudioDist(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAudioSink(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAudioSource(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAvrcpController(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAvrcpTarget(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBnep(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDun(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->DUN:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFtp(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->FileTransfer:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHandsfree(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHeadset(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInputDevice(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMap(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMas(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMns(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNap(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOpp(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPanu(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPbap(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PhoneBookAccess:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSap(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSerialPort(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->SerialPort:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    return v5

    :cond_1
    if-nez p0, :cond_2

    return v2

    :cond_2
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v0, p0, v1

    invoke-virtual {v0, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public static parseUuidFrom([B)Landroid/os/ParcelUuid;
    .locals 13

    const/16 v12, 0x10

    const/4 v9, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    if-nez p0, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "uuidBytes cannot be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    array-length v1, p0

    if-eq v1, v11, :cond_1

    const/4 v8, 0x4

    if-eq v1, v8, :cond_1

    if-eq v1, v12, :cond_1

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uuidBytes length invalid - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    if-ne v1, v12, :cond_2

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    new-instance v8, Landroid/os/ParcelUuid;

    new-instance v9, Ljava/util/UUID;

    invoke-direct {v9, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v8, v9}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v8

    :cond_2
    if-ne v1, v11, :cond_3

    aget-byte v8, p0, v10

    and-int/lit16 v8, v8, 0xff

    int-to-long v6, v8

    aget-byte v8, p0, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    int-to-long v8, v8

    add-long/2addr v6, v8

    :goto_0
    sget-object v8, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    const/16 v10, 0x20

    shl-long v10, v6, v10

    add-long v4, v8, v10

    sget-object v8, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    new-instance v8, Landroid/os/ParcelUuid;

    new-instance v9, Ljava/util/UUID;

    invoke-direct {v9, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v8, v9}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v8

    :cond_3
    aget-byte v8, p0, v10

    and-int/lit16 v8, v8, 0xff

    int-to-long v6, v8

    aget-byte v8, p0, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    int-to-long v8, v8

    add-long/2addr v6, v8

    aget-byte v8, p0, v11

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    add-long/2addr v6, v8

    const/4 v8, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_0
.end method

.method public static uuidToBytes(Landroid/os/ParcelUuid;)[B
    .locals 12

    const v11, 0xff00

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "uuid cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-array v1, v10, [B

    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v6

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v9

    and-int v7, v6, v11

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v8

    return-object v1

    :cond_1
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x4

    new-array v1, v7, [B

    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v6

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v9

    and-int v7, v6, v11

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v8

    const/high16 v7, 0xff0000

    and-int/2addr v7, v6

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v1, v10

    const/high16 v7, -0x1000000

    and-int/2addr v7, v6

    shr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    const/4 v8, 0x3

    aput-byte v7, v1, v8

    return-object v1

    :cond_2
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    const/16 v7, 0x10

    new-array v1, v7, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v7, 0x8

    invoke-virtual {v0, v7, v4, v5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v9, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-object v1
.end method
