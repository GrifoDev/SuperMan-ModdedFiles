.class public Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextHallSensorAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextHallSensorAttribute"


# instance fields
.field private mDisplayStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->mDisplayStatus:I

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->setAttribute()V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "displayStatus"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->mDisplayStatus:I

    .line 84
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->mDisplayStatus:I

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->setAttribute()V

    .line 86
    const-string/jumbo v0, "SemContextHallSensorAttribute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "constructor + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->mDisplayStatus:I

    .line 67
    return-void
.end method

.method private setAttribute()V
    .locals 4

    .prologue
    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "display_status"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->mDisplayStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string/jumbo v1, "SemContextHallSensorAttribute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hall sensor status   + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "display_status"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/16 v1, 0x2b

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 103
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->mDisplayStatus:I

    if-ltz v0, :cond_0

    .line 96
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->mDisplayStatus:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 97
    :cond_0
    const-string/jumbo v0, "SemContextHallSensorAttribute"

    const-string/jumbo v1, "The display status is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v2

    .line 100
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
