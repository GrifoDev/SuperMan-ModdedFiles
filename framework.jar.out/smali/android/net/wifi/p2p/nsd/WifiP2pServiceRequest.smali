.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
.super Ljava/lang/Object;
.source "WifiP2pServiceRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLength:I

.field private mProtocolType:I

.field private mQuery:Ljava/lang/String;

.field private mTransId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    iput p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    iput p3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    iput-object p4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IIILjava/lang/String;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->validateQuery(Ljava/lang/String;)V

    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    iput-object p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    goto :goto_0
.end method

.method public static newInstance(I)Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .locals 2

    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static newInstance(ILjava/lang/String;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .locals 1

    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private validateQuery(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0xffff

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "query size is invalid. query="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const v4, 0xffff

    if-le v3, v4, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "query size is too large. len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_6

    aget-char v1, v2, v3

    const/16 v5, 0x30

    if-lt v1, v5, :cond_3

    const/16 v5, 0x39

    if-le v1, v5, :cond_5

    :cond_3
    const/16 v5, 0x61

    if-lt v1, v5, :cond_4

    const/16 v5, 0x66

    if-le v1, v5, :cond_5

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "query should be hex string. query="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
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

    if-ne p1, p0, :cond_0

    return v4

    :cond_0
    instance-of v1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    if-nez v1, :cond_1

    return v3

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    iget v1, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    if-ne v1, v2, :cond_2

    iget v1, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    if-eq v1, v2, :cond_3

    :cond_2
    return v3

    :cond_3
    iget-object v1, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    if-nez v1, :cond_4

    return v4

    :cond_4
    iget-object v1, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_5
    return v3
.end method

.method public getSupplicantQuery()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%02x"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%02x"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%02x"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%02x"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTransactionId()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    add-int v0, v1, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    return v0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public setTransactionId(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
