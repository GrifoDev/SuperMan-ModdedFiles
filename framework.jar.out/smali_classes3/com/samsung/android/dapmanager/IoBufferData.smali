.class public Lcom/samsung/android/dapmanager/IoBufferData;
.super Ljava/lang/Object;
.source "IoBufferData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/dapmanager/IoBufferData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/dapmanager/IoBufferData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field clientCertificate:[B

.field clientCertificateLen:I

.field retval:I

.field rootCertificate:[B

.field rootCertificateLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/dapmanager/IoBufferData$1;

    invoke-direct {v0}, Lcom/samsung/android/dapmanager/IoBufferData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/dapmanager/IoBufferData;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->rootCertificateLen:I

    iget v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->rootCertificateLen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->rootCertificate:[B

    iget-object v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->rootCertificate:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->clientCertificateLen:I

    iget v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->clientCertificateLen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->clientCertificate:[B

    iget-object v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->clientCertificate:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->retval:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/dapmanager/IoBufferData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/dapmanager/IoBufferData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClientCertificate()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->clientCertificate:[B

    return-object v0
.end method

.method public getClientCertificateLen()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->clientCertificateLen:I

    return v0
.end method

.method public getRetVal()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->retval:I

    return v0
.end method

.method public getRootCertificate()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->rootCertificate:[B

    return-object v0
.end method

.method public getRootCertificateLen()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->rootCertificateLen:I

    return v0
.end method

.method setClientCertificate([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/dapmanager/IoBufferData;->clientCertificate:[B

    return-void
.end method

.method setClientCertificateLen(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/dapmanager/IoBufferData;->clientCertificateLen:I

    return-void
.end method

.method setRetVal(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/dapmanager/IoBufferData;->retval:I

    return-void
.end method

.method setRootCertificate([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/dapmanager/IoBufferData;->rootCertificate:[B

    return-void
.end method

.method setRootCertificateLen(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/dapmanager/IoBufferData;->rootCertificateLen:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->rootCertificateLen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->rootCertificate:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->clientCertificateLen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->clientCertificate:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Lcom/samsung/android/dapmanager/IoBufferData;->retval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
