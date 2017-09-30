.class public Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
.super Ljava/lang/Object;


# instance fields
.field private backoffMult:F

.field private retries:I

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->timeout:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->retries:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->backoffMult:F

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->timeout:I

    iput p2, p0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->retries:I

    iput p3, p0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->backoffMult:F

    return-void
.end method


# virtual methods
.method public getBackoffMult()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->backoffMult:F

    return v0
.end method

.method public getRetris()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->retries:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->timeout:I

    return v0
.end method

.method public setTimeout(IIF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->timeout:I

    iput p2, p0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->retries:I

    iput p3, p0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->backoffMult:F

    return-void
.end method
