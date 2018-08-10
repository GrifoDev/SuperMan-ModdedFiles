.class public Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextInterruptedGyroAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERRUPTED_GYRO_DISABLE_SYSFS_NODE:I = 0x0

.field public static final INTERRUPTED_GYRO_ENABLE_SYSFS_NODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemContextInterruptedGyroAttribute"


# instance fields
.field private mEnabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    return-void
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "interrupt_gyro"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x30

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    if-le v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "SemContextInterruptedGyroAttribute"

    const-string/jumbo v1, "The interrupt gyro value is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v1
.end method
