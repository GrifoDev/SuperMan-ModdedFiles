.class public Lcom/samsung/android/knox/util/SemCertByte;
.super Ljava/lang/Object;
.source "SemCertByte.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/util/SemCertByte$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/knox/util/SemCertByte;",
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

    .prologue
    .line 82
    new-instance v0, Lcom/samsung/android/knox/util/SemCertByte$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/util/SemCertByte$1;-><init>()V

    .line 81
    sput-object v0, Lcom/samsung/android/knox/util/SemCertByte;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certsize:I

    .line 52
    iget v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certBytes:[B

    .line 54
    iget-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caSize:I

    .line 56
    iget v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caCertBytes:[B

    .line 58
    iget-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caCertBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 73
    iget v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certsize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 75
    iget v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caCertBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 71
    return-void
.end method
