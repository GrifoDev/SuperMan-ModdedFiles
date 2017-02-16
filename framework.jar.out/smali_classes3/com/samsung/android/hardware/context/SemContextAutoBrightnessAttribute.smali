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

    .prologue
    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->setAttribute()V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "deviceMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 57
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    .line 88
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 89
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->setAttribute()V

    .line 87
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    .line 70
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "luminanceTable"    # [B

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    .line 105
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->setAttribute()V

    .line 104
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 134
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 135
    const-string/jumbo v1, "luminance_config_data"

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 139
    :cond_0
    :goto_0
    const/16 v1, 0x27

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 131
    return-void

    .line 136
    :cond_1
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    if-nez v1, :cond_0

    .line 137
    const-string/jumbo v1, "device_mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    if-nez v0, :cond_1

    .line 117
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    if-ltz v0, :cond_0

    .line 118
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 119
    :cond_0
    const-string/jumbo v0, "SemContextAutoBrightnessAttribute"

    const-string/jumbo v1, "The device mode is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v2

    .line 122
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    if-ne v0, v3, :cond_2

    .line 123
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    if-nez v0, :cond_2

    .line 124
    const-string/jumbo v0, "SemContextAutoBrightnessAttribute"

    const-string/jumbo v1, "The luminance configuration data is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return v2

    .line 128
    :cond_2
    return v3
.end method
