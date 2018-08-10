.class Lcom/samsung/android/rlc/util/RLCUtil$1;
.super Ljava/lang/Object;
.source "RLCUtil.java"

# interfaces
.implements Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/rlc/util/RLCUtil;


# direct methods
.method constructor <init>(Lcom/samsung/android/rlc/util/RLCUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rlc/util/RLCUtil$1;->this$0:Lcom/samsung/android/rlc/util/RLCUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnlockedByPasscode()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil$1;->this$0:Lcom/samsung/android/rlc/util/RLCUtil;

    invoke-static {v1}, Lcom/samsung/android/rlc/util/RLCUtil;->-get0(Lcom/samsung/android/rlc/util/RLCUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->makeUnlockReportBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil$1;->this$0:Lcom/samsung/android/rlc/util/RLCUtil;

    invoke-static {v1}, Lcom/samsung/android/rlc/util/RLCUtil;->-get0(Lcom/samsung/android/rlc/util/RLCUtil;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    return-void
.end method
