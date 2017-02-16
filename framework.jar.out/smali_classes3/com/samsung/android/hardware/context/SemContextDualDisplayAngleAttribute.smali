.class public Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextDualDisplayAngleAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextDualDisplayAngleAttribute"


# instance fields
.field private mOffAngle:I

.field private mOnAngle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/16 v0, 0xd2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->mOnAngle:I

    .line 55
    const/16 v0, 0xf0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->mOffAngle:I

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->setAttribute()V

    .line 60
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "onAngle"    # I
    .param p2, "offAngle"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/16 v0, 0xd2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->mOnAngle:I

    .line 55
    const/16 v0, 0xf0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->mOffAngle:I

    .line 84
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->mOnAngle:I

    .line 85
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->mOffAngle:I

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->setAttribute()V

    .line 83
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 54
    const/16 v0, 0xd2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->mOnAngle:I

    .line 55
    const/16 v0, 0xf0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->mOffAngle:I

    .line 67
    return-void
.end method

.method private setAttribute()V
    .locals 4

    .prologue
    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "onAngle"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->mOnAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const-string/jumbo v1, "offAngle"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->mOffAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string/jumbo v1, "SemContextDualDisplayAngleAttribute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAngle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "onAngle"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string/jumbo v1, "SemContextDualDisplayAngleAttribute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "offAngle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "offAngle"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/16 v1, 0x2d

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 110
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    .prologue
    const/16 v1, 0x168

    const/4 v2, 0x0

    .line 95
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->mOnAngle:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->mOnAngle:I

    if-le v0, v1, :cond_1

    .line 96
    :cond_0
    const-string/jumbo v0, "SemContextDualDisplayAngleAttribute"

    const-string/jumbo v1, "Value of onAngle is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v2

    .line 99
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->mOffAngle:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->mOffAngle:I

    if-le v0, v1, :cond_3

    .line 100
    :cond_2
    const-string/jumbo v0, "SemContextDualDisplayAngleAttribute"

    const-string/jumbo v1, "Value of offAngle is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v2

    .line 103
    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->mOnAngle:I

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngleAttribute;->mOffAngle:I

    if-le v0, v1, :cond_4

    .line 104
    const-string/jumbo v0, "SemContextDualDisplayAngleAttribute"

    const-string/jumbo v1, "onAngle is above offAngle!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v2

    .line 107
    :cond_4
    const/4 v0, 0x1

    return v0
.end method
