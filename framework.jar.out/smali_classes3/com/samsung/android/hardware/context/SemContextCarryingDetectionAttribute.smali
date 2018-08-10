.class public Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextCarryingDetectionAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA:I = 0x1

.field private static final MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemContextCarryingDetection"


# instance fields
.field private mData:I

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    return-void
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "dpcm_mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "dpcm_data"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x33

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    if-lt v0, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "SemContextCarryingDetection"

    const-string/jumbo v1, "Mode value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    const/16 v1, 0x7f

    if-le v0, v1, :cond_3

    :cond_2
    const-string/jumbo v0, "SemContextCarryingDetection"

    const-string/jumbo v1, "Data value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    return v3
.end method
