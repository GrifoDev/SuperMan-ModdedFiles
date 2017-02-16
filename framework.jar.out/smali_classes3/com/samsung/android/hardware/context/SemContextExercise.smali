.class public Lcom/samsung/android/hardware/context/SemContextExercise;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextExercise.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextExercise$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextExercise;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_TYPE_BAROMETER:I = 0x2

.field public static final DATA_TYPE_GPS:I = 0x1

.field public static final DATA_TYPE_PEDOMETER:I = 0x3

.field public static final MODE_LOCATION:I = 0x0

.field public static final MODE_STATUS:I = 0x1

.field public static final STATUS_AVAILABLE_SIGNAL_GOOD:I = 0x2

.field public static final STATUS_AVAILABLE_SIGNAL_STRONG:I = 0x3

.field public static final STATUS_AVAILABLE_SIGNAL_WEAK:I = 0x1

.field public static final STATUS_STOP:I = -0x1

.field public static final STATUS_UNAVAILABLE:I


# instance fields
.field private mContext:Landroid/os/Bundle;

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextExercise$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextExercise$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextExercise;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 107
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    .line 187
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 196
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextExercise;->readFromParcel(Landroid/os/Parcel;)V

    .line 195
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 392
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    .line 391
    return-void
.end method


# virtual methods
.method public getAltitude()[F
    .locals 3

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "res":[F
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "AltitudeArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    .line 272
    .end local v0    # "res":[F
    :cond_0
    return-object v0
.end method

.method public getLatitude()[D
    .locals 3

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "res":[D
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "LatitudeArray"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 246
    .end local v0    # "res":[D
    :cond_0
    return-object v0
.end method

.method public getLoggingSize()I
    .locals 3

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "res":I
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "DataCount"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 220
    :cond_0
    return v0
.end method

.method public getLongitude()[D
    .locals 3

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "res":[D
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "LongitudeArray"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 259
    .end local v0    # "res":[D
    :cond_0
    return-object v0
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPedoDistance()[D
    .locals 3

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "res":[D
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "PedoDistanceDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 311
    .end local v0    # "res":[D
    :cond_0
    return-object v0
.end method

.method public getPedoSpeed()[D
    .locals 3

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "res":[D
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "PedoSpeedArray"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 324
    .end local v0    # "res":[D
    :cond_0
    return-object v0
.end method

.method public getPressure()[F
    .locals 3

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "res":[F
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "PressureArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    .line 285
    .end local v0    # "res":[F
    :cond_0
    return-object v0
.end method

.method public getSpeed()[F
    .locals 3

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "res":[F
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "SpeedArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    .line 298
    .end local v0    # "res":[F
    :cond_0
    return-object v0
.end method

.method public getStatus()I
    .locals 3

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "res":I
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 353
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "GpsStatus"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 355
    :cond_0
    return v0
.end method

.method public getStepCount()[J
    .locals 3

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "res":[J
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "StepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 337
    .end local v0    # "res":[J
    :cond_0
    return-object v0
.end method

.method public getTimeStamp()[J
    .locals 3

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "res":[J
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "TimeStampArray"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 233
    .end local v0    # "res":[J
    :cond_0
    return-object v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    .line 367
    const-string/jumbo v0, "Mode"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    .line 365
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 382
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    return-void
.end method
