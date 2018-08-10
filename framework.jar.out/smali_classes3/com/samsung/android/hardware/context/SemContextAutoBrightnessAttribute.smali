.class public Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextAutoBrightnessAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODE_CONFIGURATION:I = 0x1

.field private static final MODE_DEVICE_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemContextAutoBrightnessAttribute"


# instance fields
.field private mDeviceMode:I

.field private mLuminanceTable:[B

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->setAttribute()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SemContextAutoBrightnessAttribute"

    const-string/jumbo v1, "The luminanceTable is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "luminance_config_data"

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    :goto_0
    const/16 v1, 0x27

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "device_mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    :cond_0
    const-string/jumbo v0, "SemContextAutoBrightnessAttribute"

    const-string/jumbo v1, "The device mode is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    if-nez v0, :cond_2

    const-string/jumbo v0, "SemContextAutoBrightnessAttribute"

    const-string/jumbo v1, "The luminance configuration data is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    return v3
.end method
