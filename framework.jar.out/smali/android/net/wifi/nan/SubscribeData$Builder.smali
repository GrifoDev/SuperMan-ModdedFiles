.class public final Landroid/net/wifi/nan/SubscribeData$Builder;
.super Ljava/lang/Object;
.source "SubscribeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/SubscribeData;
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

    iput-object v0, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceSpecificInfo:[B

    new-array v0, v1, [B

    iput-object v0, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mTxFilter:[B

    new-array v0, v1, [B

    iput-object v0, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mRxFilter:[B

    return-void
.end method


# virtual methods
.method public build()Landroid/net/wifi/nan/SubscribeData;
    .locals 9

    new-instance v0, Landroid/net/wifi/nan/SubscribeData;

    iget-object v1, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceSpecificInfo:[B

    iget v3, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceSpecificInfoLength:I

    iget-object v4, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mTxFilter:[B

    iget v5, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mTxFilterLength:I

    iget-object v6, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mRxFilter:[B

    iget v7, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mRxFilterLength:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/nan/SubscribeData;-><init>(Ljava/lang/String;[BI[BI[BILandroid/net/wifi/nan/SubscribeData;)V

    return-object v0
.end method

.method public setRxFilter([BI)Landroid/net/wifi/nan/SubscribeData$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mRxFilter:[B

    iput p2, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mRxFilterLength:I

    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)Landroid/net/wifi/nan/SubscribeData$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceName:Ljava/lang/String;

    return-object p0
.end method

.method public setServiceSpecificInfo(Ljava/lang/String;)Landroid/net/wifi/nan/SubscribeData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceSpecificInfoLength:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceSpecificInfo:[B

    return-object p0
.end method

.method public setServiceSpecificInfo([BI)Landroid/net/wifi/nan/SubscribeData$Builder;
    .locals 0

    iput p2, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceSpecificInfoLength:I

    iput-object p1, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceSpecificInfo:[B

    return-object p0
.end method

.method public setTxFilter([BI)Landroid/net/wifi/nan/SubscribeData$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mTxFilter:[B

    iput p2, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mTxFilterLength:I

    return-object p0
.end method
