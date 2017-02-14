.class public final Landroid/net/wifi/nan/PublishData$Builder;
.super Ljava/lang/Object;
.source "PublishData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/PublishData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mRxFilter:[B

.field private mRxFilterLength:I

.field private mServiceName:Ljava/lang/String;

.field private mServiceSpecificInfo:[B

.field private mServiceSpecificInfoLength:I

.field private mTxFilter:[B

.field private mTxFilterLength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceSpecificInfo:[B

    new-array v0, v1, [B

    iput-object v0, p0, Landroid/net/wifi/nan/PublishData$Builder;->mTxFilter:[B

    new-array v0, v1, [B

    iput-object v0, p0, Landroid/net/wifi/nan/PublishData$Builder;->mRxFilter:[B

    return-void
.end method


# virtual methods
.method public build()Landroid/net/wifi/nan/PublishData;
    .locals 9

    new-instance v0, Landroid/net/wifi/nan/PublishData;

    iget-object v1, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceSpecificInfo:[B

    iget v3, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceSpecificInfoLength:I

    iget-object v4, p0, Landroid/net/wifi/nan/PublishData$Builder;->mTxFilter:[B

    iget v5, p0, Landroid/net/wifi/nan/PublishData$Builder;->mTxFilterLength:I

    iget-object v6, p0, Landroid/net/wifi/nan/PublishData$Builder;->mRxFilter:[B

    iget v7, p0, Landroid/net/wifi/nan/PublishData$Builder;->mRxFilterLength:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/nan/PublishData;-><init>(Ljava/lang/String;[BI[BI[BILandroid/net/wifi/nan/PublishData;)V

    return-object v0
.end method

.method public setRxFilter([BI)Landroid/net/wifi/nan/PublishData$Builder;
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-matching combination of rxFilter and rxFilterLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/net/wifi/nan/PublishData$Builder;->mRxFilter:[B

    iput p2, p0, Landroid/net/wifi/nan/PublishData$Builder;->mRxFilterLength:I

    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)Landroid/net/wifi/nan/PublishData$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceName:Ljava/lang/String;

    return-object p0
.end method

.method public setServiceSpecificInfo(Ljava/lang/String;)Landroid/net/wifi/nan/PublishData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceSpecificInfoLength:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceSpecificInfo:[B

    return-object p0
.end method

.method public setServiceSpecificInfo([BI)Landroid/net/wifi/nan/PublishData$Builder;
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-matching combination of serviceSpecificInfo and serviceSpecificInfoLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p2, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceSpecificInfoLength:I

    iput-object p1, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceSpecificInfo:[B

    return-object p0
.end method

.method public setTxFilter([BI)Landroid/net/wifi/nan/PublishData$Builder;
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-matching combination of txFilter and txFilterLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/net/wifi/nan/PublishData$Builder;->mTxFilter:[B

    iput p2, p0, Landroid/net/wifi/nan/PublishData$Builder;->mTxFilterLength:I

    return-object p0
.end method
