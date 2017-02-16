.class public Landroid/spay/PaymentTZServiceConfig$TAConfig;
.super Ljava/lang/Object;
.source "PaymentTZServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/spay/PaymentTZServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TAConfig"
.end annotation


# instance fields
.field public maxRecvRespSize:I

.field public maxSendCmdSize:I

.field public processName:Ljava/lang/String;

.field public rootName:Ljava/lang/String;

.field public taTechnology:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "sendsize"    # I
    .param p2, "recvsize"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    .line 29
    invoke-static {}, Landroid/spay/PaymentTZServiceConfig;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "unknown"

    :goto_0
    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    .line 30
    invoke-static {}, Landroid/spay/PaymentTZServiceConfig;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "unknown"

    :goto_1
    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    .line 31
    iput p1, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    .line 32
    iput p2, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    .line 27
    return-void

    .line 29
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 30
    :cond_1
    const-string/jumbo v0, "ffffffff000000000000000000000000"

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "_taTechnology"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "process"    # Ljava/lang/String;
    .param p4, "sendsize"    # I
    .param p5, "recvsize"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    .line 38
    iput p4, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    .line 39
    iput p5, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    .line 34
    return-void
.end method
