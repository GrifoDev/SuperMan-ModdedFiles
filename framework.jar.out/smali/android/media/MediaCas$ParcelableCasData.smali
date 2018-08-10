.class Landroid/media/MediaCas$ParcelableCasData;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParcelableCasData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCas$ParcelableCasData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/MediaCas$ParcelableCasData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:[B

.field private mLength:I

.field private mOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/MediaCas$ParcelableCasData$1;

    invoke-direct {v0}, Landroid/media/MediaCas$ParcelableCasData$1;-><init>()V

    sput-object v0, Landroid/media/MediaCas$ParcelableCasData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas$ParcelableCasData;->mData:[B

    iput v1, p0, Landroid/media/MediaCas$ParcelableCasData;->mLength:I

    iput v1, p0, Landroid/media/MediaCas$ParcelableCasData;->mOffset:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "b/73085795"

    aput-object v2, v1, v0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x534e4554

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCas$ParcelableCasData;->mData:[B

    iput v0, p0, Landroid/media/MediaCas$ParcelableCasData;->mOffset:I

    iget-object v1, p0, Landroid/media/MediaCas$ParcelableCasData;->mData:[B

    if-nez v1, :cond_0

    :goto_0
    iput v0, p0, Landroid/media/MediaCas$ParcelableCasData;->mLength:I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCas$ParcelableCasData;->mData:[B

    array-length v0, v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/MediaCas$ParcelableCasData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaCas$ParcelableCasData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method set([BII)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaCas$ParcelableCasData;->mData:[B

    iput p2, p0, Landroid/media/MediaCas$ParcelableCasData;->mOffset:I

    iput p3, p0, Landroid/media/MediaCas$ParcelableCasData;->mLength:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/media/MediaCas$ParcelableCasData;->mData:[B

    iget v1, p0, Landroid/media/MediaCas$ParcelableCasData;->mOffset:I

    iget v2, p0, Landroid/media/MediaCas$ParcelableCasData;->mLength:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->writeByteArray([BII)V

    return-void
.end method
