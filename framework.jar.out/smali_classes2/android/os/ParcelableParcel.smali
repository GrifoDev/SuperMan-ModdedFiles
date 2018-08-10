.class public Landroid/os/ParcelableParcel;
.super Ljava/lang/Object;
.source "ParcelableParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ParcelableParcel$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Landroid/os/ParcelableParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mClassLoader:Ljava/lang/ClassLoader;

.field final mParcel:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/ParcelableParcel$1;

    invoke-direct {v0}, Landroid/os/ParcelableParcel$1;-><init>()V

    sput-object v0, Landroid/os/ParcelableParcel;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iput-object v2, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    iput-object p2, p0, Landroid/os/ParcelableParcel;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Negative size read from parcel"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-static {v0, v1}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v2, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    iput-object p1, p0, Landroid/os/ParcelableParcel;->mClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Landroid/os/ParcelableParcel;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getParcel()Landroid/os/Parcel;
    .locals 2

    iget-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    iget-object v1, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    return-void
.end method
