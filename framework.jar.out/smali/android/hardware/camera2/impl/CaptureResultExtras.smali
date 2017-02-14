.class public Landroid/hardware/camera2/impl/CaptureResultExtras;
.super Ljava/lang/Object;
.source "CaptureResultExtras.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CaptureResultExtras$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/impl/CaptureResultExtras;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private afTriggerId:I

.field private errorStreamId:I

.field private frameNumber:J

.field private partialResultCount:I

.field private precaptureTriggerId:I

.field private requestId:I

.field private subsequenceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/camera2/impl/CaptureResultExtras$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CaptureResultExtras$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIJII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    iput p2, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    iput p3, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    iput p4, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    iput-wide p5, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    iput p7, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    iput p8, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAfTriggerId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    return v0
.end method

.method public getErrorStreamId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    return v0
.end method

.method public getFrameNumber()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    return-wide v0
.end method

.method public getPartialResultCount()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    return v0
.end method

.method public getPrecaptureTriggerId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    return v0
.end method

.method public getRequestId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    return v0
.end method

.method public getSubsequenceId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
