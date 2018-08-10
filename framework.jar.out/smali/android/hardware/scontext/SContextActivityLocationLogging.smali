.class public Landroid/hardware/scontext/SContextActivityLocationLogging;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextActivityLocationLogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextActivityLocationLogging$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextActivityLocationLogging;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;

.field private mInfo:Landroid/os/Bundle;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLogging$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityLocationLogging$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextActivityLocationLogging;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextActivityLocationLogging;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    return-void
.end method


# virtual methods
.method public getAltitude()[D
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "StayingAreaAltitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "TrajectoryAltitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0
.end method

.method public getLatitude()[D
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "StayingAreaLatitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "TrajectoryLatitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0
.end method

.method public getLoggingSize()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "StayingAreaCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "MovingCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "TrajectoryCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLongitude()[D
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "StayingAreaLongitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "TrajectoryLongitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0
.end method

.method public getStayingAreaRadius()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v1, "StayingAreaRadius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStayingAreaStatus()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v1, "StayingAreaStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStayingTimeDuration()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v1, "StayingAreaTimeDuration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()[J
    .locals 8

    const/4 v2, 0x0

    iget v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "StayingAreaTimeStamp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "MovingTimeDuration"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    array-length v3, v0

    new-array v2, v3, [J

    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    if-nez v1, :cond_2

    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "MovingTimeStamp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v1, -0x1

    aget-wide v4, v2, v3

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    aput-wide v4, v2, v1

    goto :goto_2

    :cond_3
    iget v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "TrajectoryTimeStamp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 2

    iput-object p1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    const-string/jumbo v0, "LoggingBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "LoggingType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
