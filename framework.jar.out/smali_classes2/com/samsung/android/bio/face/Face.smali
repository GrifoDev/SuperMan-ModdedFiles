.class public final Lcom/samsung/android/bio/face/Face;
.super Ljava/lang/Object;
.source "Face.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/Face$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/bio/face/Face;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceId:J

.field private mFaceId:I

.field private mGroupId:I

.field private mName:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/bio/face/Face$1;

    invoke-direct {v0}, Lcom/samsung/android/bio/face/Face$1;-><init>()V

    sput-object v0, Lcom/samsung/android/bio/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/bio/face/Face;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/bio/face/Face;->mGroupId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/bio/face/Face;->mFaceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/bio/face/Face;->mDeviceId:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/bio/face/Face;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/Face;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/face/Face;->mName:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/samsung/android/bio/face/Face;->mGroupId:I

    iput p3, p0, Lcom/samsung/android/bio/face/Face;->mFaceId:I

    iput-wide p4, p0, Lcom/samsung/android/bio/face/Face;->mDeviceId:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/bio/face/Face;->mDeviceId:J

    return-wide v0
.end method

.method public getFaceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/bio/face/Face;->mFaceId:I

    return v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/bio/face/Face;->mGroupId:I

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/Face;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/face/Face;->mName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/bio/face/Face;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/bio/face/Face;->mFaceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/bio/face/Face;->mDeviceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
