.class public Lcom/samsung/android/cepproxyks/CertByte;
.super Ljava/lang/Object;
.source "CertByte.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cepproxyks/CertByte$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cepproxyks/CertByte;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public caCertBytes:[B

.field public caSize:I

.field public certBytes:[B

.field public certsize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/cepproxyks/CertByte$1;

    invoke-direct {v0}, Lcom/samsung/android/cepproxyks/CertByte$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cepproxyks/CertByte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cepproxyks/CertByte;->certsize:I

    iget v0, p0, Lcom/samsung/android/cepproxyks/CertByte;->certsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/cepproxyks/CertByte;->certBytes:[B

    iget-object v0, p0, Lcom/samsung/android/cepproxyks/CertByte;->certBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    iget v0, p0, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    iget-object v0, p0, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/cepproxyks/CertByte;->certsize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cepproxyks/CertByte;->certBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
