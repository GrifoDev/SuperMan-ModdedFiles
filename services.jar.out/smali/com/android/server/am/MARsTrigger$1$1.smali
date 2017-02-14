.class Lcom/android/server/am/MARsTrigger$1$1;
.super Ljava/lang/Object;
.source "MARsTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsTrigger$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/MARsTrigger$1;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$1$1;->this$1:Lcom/android/server/am/MARsTrigger$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1$1;->this$1:Lcom/android/server/am/MARsTrigger$1;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v2}, Lcom/android/server/am/MARsTrigger;->-get1(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$1$1;->this$1:Lcom/android/server/am/MARsTrigger$1;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v4, v4, Lcom/android/server/am/MARsTrigger;->mLCDOnTriggerTimeInterval:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1$1;->this$1:Lcom/android/server/am/MARsTrigger$1;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v2, v0, v1}, Lcom/android/server/am/MARsTrigger;->-set0(Lcom/android/server/am/MARsTrigger;J)J

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1$1;->this$1:Lcom/android/server/am/MARsTrigger$1;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$1$1;->this$1:Lcom/android/server/am/MARsTrigger$1;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v4, "com.android.server.am.ACTION_UI_SET_ARES"

    invoke-static {v3, v4}, Lcom/android/server/am/MARsTrigger;->-wrap2(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v2, v4, v3}, Lcom/android/server/am/MARsTrigger;->-wrap4(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$1$1;->this$1:Lcom/android/server/am/MARsTrigger$1;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/am/MARsTrigger;->-set3(Lcom/android/server/am/MARsTrigger;Z)Z

    return-void
.end method
