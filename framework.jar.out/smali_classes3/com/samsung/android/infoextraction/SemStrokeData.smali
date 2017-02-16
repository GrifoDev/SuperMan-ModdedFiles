.class public Lcom/samsung/android/infoextraction/SemStrokeData;
.super Ljava/lang/Object;
.source "SemStrokeData.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private mStroke:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    sget-object v1, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 77
    return-void
.end method

.method public setPoints([Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "points"    # [Landroid/graphics/PointF;

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 45
    .local v0, "p":Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "p":Landroid/graphics/PointF;
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 72
    return-void
.end method
