.class public Lcom/samsung/android/knox/keystore/TUIProperty;
.super Ljava/lang/Object;
.source "TUIProperty.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/keystore/TUIProperty$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/knox/keystore/TUIProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public loginExpirationPeriod:I

.field public loginRetry:I

.field public pin:[B

.field public secretImage:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/keystore/TUIProperty$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/TUIProperty$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/TUIProperty;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/keystore/TUIProperty;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/keystore/TUIProperty;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/TUIProperty;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
