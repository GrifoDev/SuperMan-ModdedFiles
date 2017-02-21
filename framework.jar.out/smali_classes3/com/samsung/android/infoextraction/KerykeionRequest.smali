.class public Lcom/samsung/android/infoextraction/KerykeionRequest;
.super Ljava/lang/Object;
.source "KerykeionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/infoextraction/KerykeionRequest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/infoextraction/KerykeionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHermesObject:Lcom/samsung/android/infoextraction/HermesObject;

.field private mPrimitive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private nPatternType:I

.field private nType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/infoextraction/KerykeionRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/infoextraction/KerykeionRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/infoextraction/KerykeionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mPrimitive:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nPatternType:I

    iput-object v1, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mHermesObject:Lcom/samsung/android/infoextraction/HermesObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mPrimitive:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHermesObject()Lcom/samsung/android/infoextraction/HermesObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mHermesObject:Lcom/samsung/android/infoextraction/HermesObject;

    return-object v0
.end method

.method public getPatternType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nPatternType:I

    return v0
.end method

.method public getSourceData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mPrimitive:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nType:I

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mPrimitive:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nPatternType:I

    const-class v0, Lcom/samsung/android/infoextraction/HermesObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/infoextraction/HermesObject;

    iput-object v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mHermesObject:Lcom/samsung/android/infoextraction/HermesObject;

    return-void
.end method

.method public setRequestData(ILjava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nType:I

    iput p3, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nPatternType:I

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    instance-of v3, v0, Landroid/net/Uri;

    or-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mPrimitive:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setRequestData(ILjava/util/List;ILcom/samsung/android/infoextraction/HermesObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/samsung/android/infoextraction/HermesObject;",
            ")V"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nType:I

    iput p3, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nPatternType:I

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    instance-of v3, v0, Landroid/net/Uri;

    or-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mPrimitive:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    iput-object p4, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mHermesObject:Lcom/samsung/android/infoextraction/HermesObject;

    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mPrimitive:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nPatternType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mHermesObject:Lcom/samsung/android/infoextraction/HermesObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
