.class public Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextShakeMotionAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextShakeMotionAttribute"


# instance fields
.field private mDuration:I

.field private mStrength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    .line 56
    const/16 v0, 0x320

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->setAttribute()V

    .line 61
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "strength"    # I
    .param p2, "duration"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    .line 56
    const/16 v0, 0x320

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    .line 87
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    .line 88
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->setAttribute()V

    .line 86
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    .line 56
    const/16 v0, 0x320

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    .line 68
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "strength"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string/jumbo v1, "duration"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const/16 v1, 0xc

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 109
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    if-gez v0, :cond_0

    .line 99
    const-string/jumbo v0, "SemContextShakeMotionAttribute"

    const-string/jumbo v1, "The strength is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v2

    .line 102
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    if-gez v0, :cond_1

    .line 103
    const-string/jumbo v0, "SemContextShakeMotionAttribute"

    const-string/jumbo v1, "The duration is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v2

    .line 106
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
