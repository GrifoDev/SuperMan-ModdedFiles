.class Lcom/android/server/am/MARsPolicyManager$7;
.super Ljava/lang/Thread;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsPolicyManager;->runMARsUpdatePackagesThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$7;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    :cond_0
    :goto_0
    const-wide/32 v2, 0xea60

    const-wide/32 v8, 0x2bf20

    const-wide/32 v6, 0x927c0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$7;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->-get6(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$7;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->-get4(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$7;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->-wrap5(Lcom/android/server/am/MARsPolicyManager;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$7;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->-get0(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$7;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->-get0(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$7;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->-get2(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$7;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->-get2(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$7;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->-get6(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    const-wide/32 v6, 0xea60

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$7;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->-wrap2(Lcom/android/server/am/MARsPolicyManager;)V

    const-wide/32 v10, 0xea60

    cmp-long v1, v6, v10

    if-nez v1, :cond_6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$7;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->-wrap4(Lcom/android/server/am/MARsPolicyManager;)V

    const-wide/32 v6, 0x927c0

    goto :goto_1

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_7
    const-wide/32 v10, 0x2bf20

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    cmp-long v1, v10, v6

    if-gtz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v10

    sub-long/2addr v10, v4

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-gez v1, :cond_7

    goto/16 :goto_0
.end method
