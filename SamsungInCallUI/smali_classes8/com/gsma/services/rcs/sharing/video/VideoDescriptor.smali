.class public Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;
.super Ljava/lang/Object;
.source "VideoDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mWidth:I

    iput p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mHeight:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mWidth:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
