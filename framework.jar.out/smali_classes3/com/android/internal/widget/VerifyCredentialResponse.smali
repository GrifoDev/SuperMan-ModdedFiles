.class public final Lcom/android/internal/widget/VerifyCredentialResponse;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/VerifyCredentialResponse$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/widget/VerifyCredentialResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final OK:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final RESPONSE_ERROR:I = -0x1

.field public static final RESPONSE_OK:I = 0x0

.field public static final RESPONSE_RETRY:I = 0x1

.field public static final RESPONSE_SKIP:I = 0x1

.field public static final SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;


# instance fields
.field private mPayload:[B

.field private mResponseCode:I

.field private mSecret:[B

.field private mTimeout:I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/widget/VerifyCredentialResponse;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->setPayload([B)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->setTimeout(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>()V

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[B)V

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$1;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    iput-object v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    iput-object v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    iput-object v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    iput-object v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    return-void
.end method

.method private constructor <init>(II[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    iput p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    iput-object p3, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    return-void
.end method

.method synthetic constructor <init>(II[BLcom/android/internal/widget/VerifyCredentialResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    return-void
.end method

.method private setPayload([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    return-void
.end method

.method private setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    iget-object v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    array-length v1, v1

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_0
    return-void
.end method

.method public getPayload()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    return v0
.end method

.method public getSecret()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    return v0
.end method

.method public isOK()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setSecret([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "None"

    iget v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "Success"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "Failed"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "Throttled"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
