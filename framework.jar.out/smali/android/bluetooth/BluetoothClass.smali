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

    .prologue
    .line 88
    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    .line 87
    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "classInt"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public doesClassMatch(I)Z
    .locals 4
    .param p1, "profile"    # I

    .prologue
    const/high16 v3, 0x40000

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 428
    if-ne p1, v0, :cond_1

    .line 429
    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    return v0

    .line 435
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 442
    return v1

    .line 440
    :sswitch_0
    return v0

    .line 444
    :cond_1
    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    .line 445
    const/high16 v2, 0x80000

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 446
    return v0

    .line 451
    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 457
    return v1

    .line 455
    :sswitch_1
    return v0

    .line 459
    :cond_3
    if-nez p1, :cond_5

    .line 462
    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 463
    return v0

    .line 466
    :cond_4
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_2

    .line 472
    return v1

    .line 470
    :sswitch_2
    return v0

    .line 474
    :cond_5
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    .line 475
    const/high16 v2, 0x100000

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 476
    return v0

    .line 479
    :cond_6
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_3

    .line 495
    return v1

    .line 493
    :sswitch_3
    return v0

    .line 497
    :cond_7
    const/4 v2, 0x3

    if-ne p1, v2, :cond_9

    .line 498
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

    .line 499
    :cond_9
    const/4 v2, 0x4

    if-eq p1, v2, :cond_a

    const/4 v2, 0x5

    if-ne p1, v2, :cond_d

    .line 501
    :cond_a
    const/high16 v2, 0x20000

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 502
    return v0

    .line 504
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

    .line 506
    :cond_d
    return v1

    .line 435
    nop

    :sswitch_data_0
    .sparse-switch
        0x414 -> :sswitch_0
        0x418 -> :sswitch_0
        0x420 -> :sswitch_0
        0x428 -> :sswitch_0
    .end sparse-switch

    .line 451
    :sswitch_data_1
    .sparse-switch
        0x424 -> :sswitch_1
        0x428 -> :sswitch_1
        0x42c -> :sswitch_1
    .end sparse-switch

    .line 466
    :sswitch_data_2
    .sparse-switch
        0x404 -> :sswitch_2
        0x408 -> :sswitch_2
        0x420 -> :sswitch_2
    .end sparse-switch

    .line 479
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
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 67
    instance-of v1, p1, Landroid/bluetooth/BluetoothClass;

    if-eqz v1, :cond_1

    .line 68
    iget v1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    check-cast p1, Landroid/bluetooth/BluetoothClass;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Landroid/bluetooth/BluetoothClass;->mClass:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 70
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public getDeviceClass()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1ffc

    return v0
.end method

.method public getMajorDeviceClass()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public hasService(I)Z
    .locals 3
    .param p1, "service"    # I

    .prologue
    const/4 v0, 0x0

    .line 130
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

    .prologue
    .line 75
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public semDoesClassMatch(I)Z
    .locals 1
    .param p1, "profile"    # I

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    return v0
.end method

.method public semGetPeripheralMinorClass()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x5c0

    return v0
.end method

.method public semGetPeripheralMinorSubClass()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x53c

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return-void
.end method
