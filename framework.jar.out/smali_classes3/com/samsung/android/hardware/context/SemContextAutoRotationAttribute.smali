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

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    return-void
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "device_type"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x6

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "SemContextAutoRotationAttribute"

    const-string/jumbo v1, "The device type is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
