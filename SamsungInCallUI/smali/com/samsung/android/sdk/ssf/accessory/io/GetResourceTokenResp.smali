.class public Lcom/samsung/android/sdk/ssf/accessory/io/GetResourceTokenResp;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field protected expr_time:J

.field protected rsrc_tkn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/GetResourceTokenResp;->expr_time:J

    return-wide v0
.end method

.method public getResourceToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/GetResourceTokenResp;->rsrc_tkn:Ljava/lang/String;

    return-object v0
.end method
