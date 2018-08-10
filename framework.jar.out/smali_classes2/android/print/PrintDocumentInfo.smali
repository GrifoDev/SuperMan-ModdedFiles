.class public final Landroid/print/PrintDocumentInfo;
.super Ljava/lang/Object;
.source "PrintDocumentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintDocumentInfo$1;,
        Landroid/print/PrintDocumentInfo$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_DOCUMENT:I = 0x0

.field public static final CONTENT_TYPE_PHOTO:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrintDocumentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAGE_COUNT_UNKNOWN:I = -0x1


# instance fields
.field private mContentType:I

.field private mDataSize:J

.field private mName:Ljava/lang/String;

.field private mPageCount:I


# direct methods
.method static synthetic -get0(Landroid/print/PrintDocumentInfo;)I
    .locals 1

    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    return v0
.end method

.method static synthetic -set0(Landroid/print/PrintDocumentInfo;I)I
    .locals 0

    iput p1, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    return p1
.end method

.method static synthetic -set1(Landroid/print/PrintDocumentInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Landroid/print/PrintDocumentInfo;I)I
    .locals 0

    iput p1, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/print/PrintDocumentInfo$1;

    invoke-direct {v0}, Landroid/print/PrintDocumentInfo$1;-><init>()V

    sput-object v0, Landroid/print/PrintDocumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    if-lez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrintDocumentInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/print/PrintDocumentInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    iget v0, p1, Landroid/print/PrintDocumentInfo;->mPageCount:I

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    iget v0, p1, Landroid/print/PrintDocumentInfo;->mContentType:I

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    iget-wide v0, p1, Landroid/print/PrintDocumentInfo;->mDataSize:J

    iput-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo;)V
    .locals 0

    invoke-direct {p0}, Landroid/print/PrintDocumentInfo;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/print/PrintDocumentInfo;)V

    return-void
.end method

.method private contentTypeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "CONTENT_TYPE_UNKNOWN"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "CONTENT_TYPE_DOCUMENT"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "CONTENT_TYPE_PHOTO"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    if-nez p1, :cond_1

    return v6

    :cond_1
    invoke-virtual {p0}, Landroid/print/PrintDocumentInfo;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v6

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/print/PrintDocumentInfo;

    iget-object v1, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    iget-object v2, v0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    return v6

    :cond_3
    iget v1, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    iget v2, v0, Landroid/print/PrintDocumentInfo;->mContentType:I

    if-eq v1, v2, :cond_4

    return v6

    :cond_4
    iget v1, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    iget v2, v0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    if-eq v1, v2, :cond_5

    return v6

    :cond_5
    iget-wide v2, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    iget-wide v4, v0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    return v6

    :cond_6
    return v7
.end method

.method public getContentType()I
    .locals 1

    iget v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    return v0
.end method

.method public getDataSize()J
    .locals 2

    iget-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    long-to-int v3, v4

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v3, v4

    add-int v1, v2, v3

    return v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDataSize(J)V
    .locals 1

    iput-wide p1, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PrintDocumentInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", pageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    invoke-direct {p0, v2}, Landroid/print/PrintDocumentInfo;->contentTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
