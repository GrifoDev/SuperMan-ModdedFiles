.class public Lcom/android/ims/internal/uce/common/UceLong;
.super Ljava/lang/Object;
.source "UceLong.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/common/UceLong$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/common/UceLong;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClientId:I

.field private mUceLong:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/internal/uce/common/UceLong$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/UceLong$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/common/UceLong;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/common/UceLong;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/common/UceLong;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getUceLongInstance()Lcom/android/ims/internal/uce/common/UceLong;
    .locals 1

    new-instance v0, Lcom/android/ims/internal/uce/common/UceLong;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/UceLong;-><init>()V

    return-object v0
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mUceLong:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClientId()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    return v0
.end method

.method public getUceLong()J
    .locals 2

    iget-wide v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mUceLong:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mUceLong:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    return-void
.end method

.method public setClientId(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    return-void
.end method

.method public setUceLong(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/ims/internal/uce/common/UceLong;->mUceLong:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method
