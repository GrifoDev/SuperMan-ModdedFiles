.class public final Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "SystemMessageProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/messages/nano/SystemMessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemMessage"
.end annotation


# static fields
.field public static final NOTE_ACCOUNT_CREDENTIAL_PERMISSION:I = 0x26

.field public static final NOTE_ACCOUNT_REQUIRE_SIGNIN:I = 0x25

.field public static final NOTE_ADB_ACTIVE:I = 0x1a

.field public static final NOTE_BAD_CHARGER:I = 0x2

.field public static final NOTE_CAR_MODE_DISABLE:I = 0xa

.field public static final NOTE_DUMP_HEAP_NOTIFICATION:I = 0xc

.field public static final NOTE_FBE_ENCRYPTED_NOTIFICATION:I = 0x9

.field public static final NOTE_FOREGROUND_SERVICES:I = 0x28

.field public static final NOTE_GLOBAL_SCREENSHOT:I = 0x1

.field public static final NOTE_HEAVY_WEIGHT_NOTIFICATION:I = 0xb

.field public static final NOTE_HIDDEN_NOTIFICATIONS:I = 0x5

.field public static final NOTE_HIGH_TEMP:I = 0x4

.field public static final NOTE_INSTANT_APPS:I = 0x7

.field public static final NOTE_LOGOUT_USER:I = 0x3f3

.field public static final NOTE_LOW_FILENODE:I = 0x2d

.field public static final NOTE_LOW_STORAGE:I = 0x17

.field public static final NOTE_NETWORK_LOGGING:I = 0x3ea

.field public static final NOTE_NETWORK_LOST_INTERNET:I = 0x2e6

.field public static final NOTE_NETWORK_NO_INTERNET:I = 0x2e5

.field public static final NOTE_NETWORK_SIGN_IN:I = 0x2e4

.field public static final NOTE_NETWORK_SWITCH:I = 0x2e7

.field public static final NOTE_NET_LIMIT:I = 0x23

.field public static final NOTE_NET_LIMIT_SNOOZED:I = 0x24

.field public static final NOTE_NET_WARNING:I = 0x22

.field public static final NOTE_PACKAGE_STATE:I = 0x15

.field public static final NOTE_PLUGIN:I = 0x6

.field public static final NOTE_POWER_LOW:I = 0x3

.field public static final NOTE_PROFILE_WIPED:I = 0x3e9

.field public static final NOTE_REMOTE_BUGREPORT:I = 0x28700e57

.field public static final NOTE_REMOVE_GUEST:I = 0x3f2

.field public static final NOTE_RETAIL_RESET:I = 0x18

.field public static final NOTE_SDCARD_ERROR_DETECT:I = 0x2c

.field public static final NOTE_SELECT_INPUT_METHOD:I = 0x8

.field public static final NOTE_SELECT_KEYBOARD_LAYOUT:I = 0x13

.field public static final NOTE_SSL_CERT_INFO:I = 0x21

.field public static final NOTE_STORAGE_DISK:I = 0x5344534b

.field public static final NOTE_STORAGE_MOVE:I = 0x534d4f56

.field public static final NOTE_STORAGE_PRIVATE:I = 0x53505256

.field public static final NOTE_STORAGE_PUBLIC:I = 0x53505542

.field public static final NOTE_SYNC_ERROR:I = 0x12

.field public static final NOTE_SYSTEM_UPGRADING:I = 0xd

.field public static final NOTE_TETHER_BLUETOOTH:I = 0x10

.field public static final NOTE_TETHER_GENERAL:I = 0xe

.field public static final NOTE_TETHER_USB:I = 0xf

.field public static final NOTE_THERMAL_SHUTDOWN:I = 0x27

.field public static final NOTE_TV_PIP:I = 0x44c

.field public static final NOTE_UNKNOWN:I = 0x0

.field public static final NOTE_USB_ACCESSORY:I = 0x1e

.field public static final NOTE_USB_CHARGING:I = 0x20

.field public static final NOTE_USB_CHARGING_ONLY:I = 0x2a

.field public static final NOTE_USB_MASS:I = 0x29

.field public static final NOTE_USB_MIDI:I = 0x1d

.field public static final NOTE_USB_MTP:I = 0x1b

.field public static final NOTE_USB_MTP_TAP:I = 0x19

.field public static final NOTE_USB_PTP:I = 0x1c

.field public static final NOTE_USB_SUPPLYING:I = 0x1f

.field public static final NOTE_USB_WATER_DETECT:I = 0x2b

.field public static final NOTE_VPN_DISCONNECTED:I = 0x11

.field public static final NOTE_VPN_STATUS:I = 0x14

.field private static volatile _emptyArray:[Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;->clear()Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;
    .locals 2

    sget-object v0, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;->_emptyArray:[Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;->_emptyArray:[Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    sput-object v0, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;->_emptyArray:[Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;->_emptyArray:[Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    invoke-direct {v0}, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    invoke-direct {v0}, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;->cachedSize:I

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :pswitch_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
