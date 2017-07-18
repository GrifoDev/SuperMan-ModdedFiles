.class public Lcom/gsma/services/rcs/sharing/video/VideoCodec;
.super Ljava/lang/Object;
.source "VideoCodec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/video/VideoCodec$Encoding;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/sharing/video/VideoCodec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitRate:I

.field private clockRate:I

.field private encoding:Ljava/lang/String;

.field private frameRate:I

.field private height:I

.field private parameters:Ljava/lang/String;

.field private payload:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoCodec$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/video/VideoCodec$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->encoding:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->payload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->clockRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->frameRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->bitRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->parameters:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->encoding:Ljava/lang/String;

    iput p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->payload:I

    iput p3, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->clockRate:I

    iput p4, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->frameRate:I

    iput p5, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->bitRate:I

    iput-object p8, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->parameters:Ljava/lang/String;

    iput p6, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->width:I

    iput p7, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->height:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBitRate()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->bitRate:I

    return v0
.end method

.method public getClockRate()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->clockRate:I

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameRate()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->frameRate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->height:I

    return v0
.end method

.method public getParameters()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->parameters:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadType()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->payload:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->width:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->payload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->clockRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->frameRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->bitRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->parameters:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
