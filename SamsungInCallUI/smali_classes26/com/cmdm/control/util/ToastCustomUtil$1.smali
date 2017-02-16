.class Lcom/cmdm/control/util/ToastCustomUtil$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmdm/control/util/ToastCustomUtil;->showFor(Landroid/widget/Toast;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dg:J

.field private final synthetic dh:J

.field private final synthetic di:Landroid/widget/Toast;


# direct methods
.method constructor <init>(JLandroid/widget/Toast;)V
    .locals 3

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/cmdm/control/util/ToastCustomUtil$1;->dh:J

    iput-object p3, p0, Lcom/cmdm/control/util/ToastCustomUtil$1;->di:Landroid/widget/Toast;

    .line 72
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmdm/control/util/ToastCustomUtil$1;->dg:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 77
    :try_start_0
    const-string v2, "\u5f00\u59cb\u8ba1\u65f6"

    invoke-static {v2}, Lcom/cmdm/control/util/ToastCustomUtil;->aM(Ljava/lang/String;)V

    .line 78
    :goto_0
    iget-wide v2, p0, Lcom/cmdm/control/util/ToastCustomUtil$1;->dg:J

    iget-wide v4, p0, Lcom/cmdm/control/util/ToastCustomUtil$1;->dh:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 86
    :goto_1
    return-void

    .line 79
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 80
    .local v0, "start":J
    iget-object v2, p0, Lcom/cmdm/control/util/ToastCustomUtil$1;->di:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 81
    const-wide/16 v2, 0x6d6

    invoke-static {v2, v3}, Lcom/cmdm/control/util/ToastCustomUtil$1;->sleep(J)V

    .line 82
    iget-wide v2, p0, Lcom/cmdm/control/util/ToastCustomUtil$1;->dg:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/cmdm/control/util/ToastCustomUtil$1;->dg:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v0    # "start":J
    :catch_0
    move-exception v2

    goto :goto_1
.end method
