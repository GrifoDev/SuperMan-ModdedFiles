.class public Lcom/samsung/android/dapmanager/BufferData;
.super Ljava/lang/Object;
.source "BufferData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/dapmanager/BufferData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/dapmanager/BufferData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field certificate:[B

.field certificateLen:I

.field retval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/dapmanager/BufferData$1;

    invoke-direct {v0}, Lcom/samsung/android/dapmanager/BufferData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/dapmanager/BufferData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/dapmanager/BufferData;->certificateLen:I

    iget v0, p0, Lcom/samsung/android/dapmanager/BufferData;->certificateLen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/dapmanager/BufferData;->certificate:[B

    iget-object v0, p0, Lcom/samsung/android/dapmanager/BufferData;->certificate:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/dapmanager/BufferData;->retval:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/dapmanager/BufferData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/dapmanager/BufferData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCertificate()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/dapmanager/BufferData;->certificate:[B

    return-object v0
.end method

.method public getCertificateLen()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/dapmanager/BufferData;->certificateLen:I

    return v0
.end method

.method public getRetVal()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/dapmanager/BufferData;->retval:I

    return v0
.end method

.method setBuf([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/dapmanager/BufferData;->certificate:[B

    return-void
.end method

.method setBufLen(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/dapmanager/BufferData;->certificateLen:I

    return-void
.end method

.method setRetVal(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/dapmanager/BufferData;->retval:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/dapmanager/BufferData;->certificateLen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/dapmanager/BufferData;->certificate:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Lcom/samsung/android/dapmanager/BufferData;->retval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
