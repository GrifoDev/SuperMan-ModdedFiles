.class public interface abstract Landroid/bluetooth/BluetoothProfile;
.super Ljava/lang/Object;
.source "BluetoothProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothProfile$ServiceListener;
    }
.end annotation


# static fields
.field public static final A2DP:I = 0x2

.field public static final A2DP_SINK:I = 0xb

.field public static final AVRCP_CONTROLLER:I = 0xc

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.PREVIOUS_STATE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.STATE"

.field public static final GATT:I = 0x7

.field public static final GATT_SERVER:I = 0x8

.field public static final HEADSET:I = 0x1

.field public static final HEADSET_CLIENT:I = 0x10

.field public static final HEALTH:I = 0x3

.field public static final HID_DEVICE:I = 0x16

.field public static final INPUT_DEVICE:I = 0x4

.field public static final INPUT_HOST:I = 0x13

.field public static final MAP:I = 0x9

.field public static final MAP_CLIENT:I = 0x12

.field public static final MAX_PROFILE_ID:I = 0x13

.field public static final PAN:I = 0x5

.field public static final PBAP:I = 0x6

.field public static final PBAP_CLIENT:I = 0x11

.field public static final PRIORITY_AUTO_CONNECT:I = 0x3e8

.field public static final PRIORITY_OFF:I = 0x0

.field public static final PRIORITY_ON:I = 0x64

.field public static final PRIORITY_UNDEFINED:I = -0x1

.field public static final SAP:I = 0xa

.field public static final SEM_PRIORITY_ON:I = 0x64

.field public static final SPP:I = 0xc8

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTED_WITHOUT_BECOMING_NOISY:I = 0x4

.field public static final STATE_DISCONNECTING:I = 0x3


# virtual methods
.method public abstract getConnectedDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method
