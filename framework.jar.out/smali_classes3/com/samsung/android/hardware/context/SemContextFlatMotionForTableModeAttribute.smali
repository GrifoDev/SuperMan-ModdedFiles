.class public Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextFlatMotionForTableModeAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextFlatMotionForTableModeAttribute"


# instance fields
.field private mDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;->mDuration:I

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;->setAttribute()V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;->mDuration:I

    .line 84
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;->mDuration:I

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;->setAttribute()V

    .line 83
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 55
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;->mDuration:I

    .line 67
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "duration"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 104
    const/16 v1, 0x24

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 101
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;->mDuration:I

    if-gez v0, :cond_0

    .line 95
    const-string/jumbo v0, "SemContextFlatMotionForTableModeAttribute"

    const-string/jumbo v1, "The duration is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v2

    .line 98
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
