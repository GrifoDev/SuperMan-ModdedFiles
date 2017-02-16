.class Landroid/os/CustomFrequencyManager$MMCBurstControlRequest$1;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;)V
    .locals 0
    .param p1, "this$1"    # Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;

    .prologue
    .line 599
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest$1;->this$1:Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 601
    const-string/jumbo v0, "CustomFrequencyManager"

    .line 602
    const-string/jumbo v1, "MMCBurstControlRequest:: mMCBurstModeReleaser -> cancelFrequencyRequest."

    .line 601
    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->-wrap1(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest$1;->this$1:Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 600
    return-void
.end method
