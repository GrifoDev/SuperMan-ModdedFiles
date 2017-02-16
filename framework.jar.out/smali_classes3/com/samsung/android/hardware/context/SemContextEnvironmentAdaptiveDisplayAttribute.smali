.class public Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextEnvironmentAdaptiveDisplayAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextEnvironmentAdaptiveDisplayAttribute"


# instance fields
.field private mColorThreshold:F

.field private mDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    .line 55
    const/16 v0, 0x23

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->setAttribute()V

    .line 60
    return-void
.end method

.method public constructor <init>(FI)V
    .locals 1
    .param p1, "colorThreshold"    # F
    .param p2, "duration"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    .line 55
    const/16 v0, 0x23

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    .line 84
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    .line 85
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->setAttribute()V

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
    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    .line 55
    const/16 v0, 0x23

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    .line 67
    return-void
.end method

.method private setAttribute()V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "color_threshold"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 109
    const-string/jumbo v1, "duration"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string/jumbo v1, "SemContextEnvironmentAdaptiveDisplayAttribute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAttribute() mColorThreshold : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "color_threshold"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string/jumbo v1, "SemContextEnvironmentAdaptiveDisplayAttribute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAttribute() mDuration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "duration"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/16 v1, 0x2c

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 106
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 96
    const-string/jumbo v0, "SemContextEnvironmentAdaptiveDisplayAttribute"

    const-string/jumbo v1, "The color threshold value is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v2

    .line 99
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    const/16 v1, 0xff

    if-le v0, v1, :cond_2

    .line 100
    :cond_1
    const-string/jumbo v0, "SemContextEnvironmentAdaptiveDisplayAttribute"

    const-string/jumbo v1, "The duration value is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v2

    .line 103
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
