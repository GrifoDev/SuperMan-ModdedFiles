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

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    return-void
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "duration"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x21

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    if-gez v0, :cond_0

    const-string/jumbo v0, "SemContextStepLevelMonitorAttribute"

    const-string/jumbo v1, "The duration is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
