.class public Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextAutoRotationAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextAutoRotationAttribute"


# instance fields
.field private mDeviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->setAttribute()V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "deviceType"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    .line 84
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->setAttribute()V

    .line 83
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    .line 65
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "device_type"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const/4 v1, 0x6

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 103
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    if-eqz v0, :cond_0

    .line 95
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 96
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 97
    const-string/jumbo v0, "SemContextAutoRotationAttribute"

    const-string/jumbo v1, "The device type is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v2

    .line 100
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
