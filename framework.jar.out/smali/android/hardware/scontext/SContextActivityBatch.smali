.class public Landroid/hardware/scontext/SContextActivityBatch;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextActivityBatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextActivityBatch$1;
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
            "Landroid/hardware/scontext/SContextActivityBatch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/scontext/SContextActivityBatch$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityBatch$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextActivityBatch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mMode:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextActivityBatch;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mMode:I

    return-void
.end method


# virtual methods
.method public getAccuracy()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Accuracy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mMode:I

    return v0
.end method

.method public getMostActivity()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "MostActivity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStatus()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "ActivityType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()[J
    .locals 8

    const/4 v3, 0x0

    iget v4, p0, Landroid/hardware/scontext/SContextActivityBatch;->mMode:I

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string/jumbo v5, "Count"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string/jumbo v5, "Duration"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    new-array v3, v2, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    if-nez v1, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string/jumbo v5, "TimeStamp"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v3, v4

    add-int/lit8 v6, v1, -0x1

    aget-wide v6, v0, v6

    add-long/2addr v4, v6

    aput-wide v4, v3, v1

    goto :goto_1

    :cond_1
    iget v4, p0, Landroid/hardware/scontext/SContextActivityBatch;->mMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string/jumbo v5, "TimeStampArray"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    :cond_2
    return-object v3
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 2

    iput-object p1, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mMode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
