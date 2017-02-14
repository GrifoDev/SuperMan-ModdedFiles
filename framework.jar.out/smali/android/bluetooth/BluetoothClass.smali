.class public final Landroid/bluetooth/BluetoothClass;
.super Ljava/lang/Object;
.source "BluetoothClass.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothClass$1;,
        Landroid/bluetooth/BluetoothClass$Device;,
        Landroid/bluetooth/BluetoothClass$Service;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x1000000

.field public static final PROFILE_A2DP:I = 0x1

.field public static final PROFILE_A2DP_SINK:I = 0x6

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_HID:I = 0x3

.field public static final PROFILE_NAP:I = 0x5

.field public static final PROFILE_OPP:I = 0x2

.field public static final PROFILE_PANU:I = 0x4

.field public static final SEM_PROFILE_A2DP:I = 0x1

.field public static final SEM_PROFILE_HEADSET:I = 0x0

.field public static final SEM_PROFILE_HID:I = 0x3


# instance fields
.field private final mClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public doesClassMatch(I)Z
    .locals 4

    const/high16 v3, 0x40000

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    return v1

    :sswitch_0
    return v0

    :cond_1
    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    const/high16 v2, 0x80000

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    return v1

    :sswitch_1
    return v0

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_2

    return v1

    :sswitch_2
    return v0

    :cond_5
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    const/high16 v2, 0x100000

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_3

    return v1

    :sswitch_3
    return v0

    :cond_7
    const/4 v2, 0x3

    if-ne p1, v2, :cond_9

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    and-int/lit16 v2, v2, 0x500

    const/16 v3, 0x500

    if-ne v2, v3, :cond_8

    :goto_0
    return v0

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    const/4 v2, 0x4

    if-eq p1, v2, :cond_a

    const/4 v2, 0x5

    if-ne p1, v2, :cond_d

    :cond_a
    const/high16 v2, 0x20000

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    and-int/lit16 v2, v2, 0x300

    const/16 v3, 0x300

    if-ne v2, v3, :cond_c

    :goto_1
    return v0

    :cond_c
    move v0, v1

    goto :goto_1

    :cond_d
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x414 -> :sswitch_0
        0x418 -> :sswitch_0
        0x420 -> :sswitch_0
        0x428 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x424 -> :sswitch_1
        0x428 -> :sswitch_1
        0x42c -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x404 -> :sswitch_2
        0x408 -> :sswitch_2
        0x420 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x100 -> :sswitch_3
        0x104 -> :sswitch_3
        0x108 -> :sswitch_3
        0x10c -> :sswitch_3
        0x110 -> :sswitch_3
        0x114 -> :sswitch_3
        0x118 -> :sswitch_3
        0x200 -> :sswitch_3
        0x204 -> :sswitch_3
        0x208 -> :sswitch_3
        0x20c -> :sswitch_3
        0x210 -> :sswitch_3
        0x214 -> :sswitch_3
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/bluetooth/BluetoothClass;

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    check-cast p1, Landroid/bluetooth/BluetoothClass;

    iget v2, p1, Landroid/bluetooth/BluetoothClass;->mClass:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public getDeviceClass()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1ffc

    return v0
.end method

.method public getMajorDeviceClass()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public hasService(I)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    const v2, 0xffe000

    and-int/2addr v1, v2

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public semDoesClassMatch(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    return v0
.end method

.method public semGetPeripheralMinorClass()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x5c0

    return v0
.end method

.method public semGetPeripheralMinorSubClass()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x53c

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
