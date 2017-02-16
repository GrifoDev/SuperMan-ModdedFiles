.class public Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextActivityLocationLogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;",
            ">;"
        }
    .end annotation
.end field

.field public static final LPP_RESOLUTION_HIGH:I = 0x2

.field public static final LPP_RESOLUTION_LOW:I = 0x0

.field public static final LPP_RESOLUTION_MID:I = 0x1

.field public static final TYPE_MOVING:I = 0x2

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_STAYING:I = 0x1

.field public static final TYPE_TRAJECTORY:I = 0x3


# instance fields
.field private mContext:Landroid/os/Bundle;

.field private mInfo:Landroid/os/Bundle;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 137
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    .line 208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    .line 206
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 215
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->readFromParcel(Landroid/os/Parcel;)V

    .line 214
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    .line 383
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    .line 381
    return-void
.end method


# virtual methods
.method public getAltitude()[D
    .locals 3

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "altitude":[D
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 312
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "StayingAreaAltitude"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 316
    .end local v0    # "altitude":[D
    :cond_0
    :goto_0
    return-object v0

    .line 313
    .restart local v0    # "altitude":[D
    :cond_1
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 314
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "TrajectoryAltitude"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .local v0, "altitude":[D
    goto :goto_0
.end method

.method public getLatitude()[D
    .locals 3

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "latitude":[D
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 282
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "StayingAreaLatitude"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 286
    .end local v0    # "latitude":[D
    :cond_0
    :goto_0
    return-object v0

    .line 283
    .restart local v0    # "latitude":[D
    :cond_1
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 284
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "TrajectoryLatitude"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .local v0, "latitude":[D
    goto :goto_0
.end method

.method public getLoggingSize()I
    .locals 3

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "size":I
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 238
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "StayingAreaCount"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 240
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "MovingCount"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 241
    :cond_2
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 242
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "TrajectoryCount"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLongitude()[D
    .locals 3

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "longitude":[D
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 297
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "StayingAreaLongitude"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 301
    .end local v0    # "longitude":[D
    :cond_0
    :goto_0
    return-object v0

    .line 298
    .restart local v0    # "longitude":[D
    :cond_1
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 299
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "TrajectoryLongitude"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .local v0, "longitude":[D
    goto :goto_0
.end method

.method public getStayingAreaRadius()[I
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v1, "StayingAreaRadius"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStayingAreaStatus()[I
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v1, "StayingAreaStatus"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStayingTimeDuration()[I
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v1, "StayingAreaTimeDuration"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()[J
    .locals 8

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, "timestamp":[J
    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 255
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "StayingAreaTimeStamp"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 271
    .end local v2    # "timestamp":[J
    :cond_0
    :goto_0
    return-object v2

    .line 256
    .restart local v2    # "timestamp":[J
    :cond_1
    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 257
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "MovingTimeDuration"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 258
    .local v0, "duration":[I
    if-eqz v0, :cond_0

    .line 259
    array-length v3, v0

    new-array v2, v3, [J

    .line 260
    .local v2, "timestamp":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 261
    if-nez v1, :cond_2

    .line 262
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "MovingTimeStamp"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 260
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 264
    :cond_2
    add-int/lit8 v3, v1, -0x1

    aget-wide v4, v2, v3

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    aput-wide v4, v2, v1

    goto :goto_2

    .line 268
    .end local v0    # "duration":[I
    .end local v1    # "i":I
    .local v2, "timestamp":[J
    :cond_3
    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 269
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "TrajectoryTimeStamp"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .local v2, "timestamp":[J
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    .line 355
    const-string/jumbo v0, "LoggingBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    .line 356
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "LoggingType"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    .line 353
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 370
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 371
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    return-void
.end method
