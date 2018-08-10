.class public Landroid/telephony/PreciseDataConnectionState;
.super Ljava/lang/Object;
.source "PreciseDataConnectionState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PreciseDataConnectionState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/PreciseDataConnectionState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAPN:Ljava/lang/String;

.field private mAPNType:Ljava/lang/String;

.field private mFailCause:Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkType:I

.field private mReason:Ljava/lang/String;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/PreciseDataConnectionState$1;

    invoke-direct {v0}, Landroid/telephony/PreciseDataConnectionState$1;-><init>()V

    sput-object v0, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    iput p1, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    iput p2, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    iput-object p3, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    iput-object p5, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    iput-object p6, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    iput-object p7, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    iput-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/PreciseDataConnectionState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/PreciseDataConnectionState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    if-nez p1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/PreciseDataConnectionState;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/telephony/PreciseDataConnectionState;

    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v3

    :cond_3
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    iget-object v2, v0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, v0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    if-eqz v1, :cond_6

    return v3

    :cond_5
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    iget-object v2, v0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, v0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    if-eqz v1, :cond_8

    return v3

    :cond_7
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    iget-object v2, v0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v1, :cond_9

    iget-object v1, v0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_a

    return v3

    :cond_9
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v2, v0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    :cond_a
    iget v1, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    iget v2, v0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    if-eq v1, v2, :cond_b

    return v3

    :cond_b
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    if-nez v1, :cond_c

    iget-object v1, v0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    if-eqz v1, :cond_d

    return v3

    :cond_c
    iget-object v1, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    iget-object v2, v0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    :cond_d
    iget v1, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    iget v2, v0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    if-eq v1, v2, :cond_e

    return v3

    :cond_e
    return v4
.end method

.method public getDataConnectionAPN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    return-object v0
.end method

.method public getDataConnectionAPNType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataConnectionChangeReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getDataConnectionFailCause()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    return-object v0
.end method

.method public getDataConnectionLinkProperties()Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method public getDataConnectionNetworkType()I
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    return v0
.end method

.method public getDataConnectionState()I
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v3, 0x0

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    add-int v1, v2, v4

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    if-nez v4, :cond_4

    :goto_4
    add-int v1, v2, v3

    return v1

    :cond_0
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    iget-object v3, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Data Connection state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", Network type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", APN type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", APN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", Change reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", Link properties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", Fail cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPNType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mAPN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
