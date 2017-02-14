.class public Landroid/hardware/location/ContextHubMessage;
.super Ljava/lang/Object;
.source "ContextHubMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubMessage$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/ContextHubMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ContextHubMessage"


# instance fields
.field private mData:[B

.field private mType:I

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/location/ContextHubMessage$1;

    invoke-direct {v0}, Landroid/hardware/location/ContextHubMessage$1;-><init>()V

    sput-object v0, Landroid/hardware/location/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    iput p2, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    iget-object v1, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/ContextHubMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/location/ContextHubMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    iget-object v1, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    return v0
.end method

.method public setMsgData([B)V
    .locals 1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
