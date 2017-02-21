.class public Landroid/hardware/camera2/utils/SubmitInfo;
.super Ljava/lang/Object;
.source "SubmitInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/SubmitInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/utils/SubmitInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLastFrameNumber:J

.field private mRequestId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/camera2/utils/SubmitInfo$1;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/SubmitInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/utils/SubmitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mRequestId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mLastFrameNumber:J

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mRequestId:I

    iput-wide p2, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mLastFrameNumber:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/utils/SubmitInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/utils/SubmitInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/SubmitInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLastFrameNumber()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mLastFrameNumber:J

    return-wide v0
.end method

.method public getRequestId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mRequestId:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mRequestId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mLastFrameNumber:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/camera2/utils/SubmitInfo;->mLastFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
