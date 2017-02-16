.class public Landroid/hardware/scontext/SContextSLocationCore;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextSLocationCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextSLocationCore$1;
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
            "Landroid/hardware/scontext/SContextSLocationCore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 379
    new-instance v0, Landroid/hardware/scontext/SContextSLocationCore$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSLocationCore$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextSLocationCore;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 140
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    .line 148
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 156
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextSLocationCore;->readFromParcel(Landroid/os/Parcel;)V

    .line 155
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    .line 370
    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Accuracy"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAction()I
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDataArray()[I
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "DataArray"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getDataSize()I
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "DataCount"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDistance()F
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Distance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getErrorCode()I
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "ErrorCode"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFenceID()I
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "GeoFenceId"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFuncType()I
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "FunctionType"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Latitude"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Longitude"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "GeoFenceStatus"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStatusArray()[I
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "EventStatusArray"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getSuccessGpsCount()I
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "SuccessGpsCount"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Timestamp"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeStampArray()[J
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "TimeStampArray"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public getTotalGpsCount()I
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "TotalGpsCount"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTypeArray()[I
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "EventTypeArray"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 347
    iput-object p1, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    .line 346
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 361
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 360
    return-void
.end method
