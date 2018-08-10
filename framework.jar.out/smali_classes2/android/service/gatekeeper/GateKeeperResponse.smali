.class public final Landroid/service/gatekeeper/GateKeeperResponse;
.super Ljava/lang/Object;
.source "GateKeeperResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gatekeeper/GateKeeperResponse$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/gatekeeper/GateKeeperResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_ERROR:I = -0x1

.field public static final RESPONSE_OK:I = 0x0

.field public static final RESPONSE_RETRY:I = 0x1


# instance fields
.field private mPayload:[B

.field private final mResponseCode:I

.field private mShouldReEnroll:Z

.field private mTimeout:I


# direct methods
.method static synthetic -wrap0(I)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 1

    invoke-static {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->createRetryResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse$1;

    invoke-direct {v0}, Landroid/service/gatekeeper/GateKeeperResponse$1;-><init>()V

    sput-object v0, Landroid/service/gatekeeper/GateKeeperResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    return-void
.end method

.method public static createGenericResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 1

    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse;

    invoke-direct {v0, p0}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(I)V

    return-object v0
.end method

.method public static createOkResponse([BZ)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 2

    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(I)V

    iput-object p0, v0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    iput-boolean p1, v0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    return-object v0
.end method

.method private static createRetryResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 2

    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(I)V

    iput p0, v0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPayload()[B
    .locals 1

    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    return v0
.end method

.method public getShouldReEnroll()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    return v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
