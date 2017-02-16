.class public Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextStepLevelMonitorAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextStepLevelMonitorAttribute"


# instance fields
.field private mDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->setAttribute()V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    .line 83
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->setAttribute()V

    .line 82
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 54
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    .line 66
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "duration"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const/16 v1, 0x21

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 100
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    if-gez v0, :cond_0

    .line 94
    const-string/jumbo v0, "SemContextStepLevelMonitorAttribute"

    const-string/jumbo v1, "The duration is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return v2

    .line 97
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
