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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    invoke-static {}, Landroid/spay/PaymentTZServiceConfig;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "unknown"

    :goto_0
    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    invoke-static {}, Landroid/spay/PaymentTZServiceConfig;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "unknown"

    :goto_1
    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    iput p1, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    iput p2, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    return-void

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "ffffffff000000000000000000000000"

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    iput-object p2, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    iput-object p3, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    iput p4, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    iput p5, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    return-void
.end method
