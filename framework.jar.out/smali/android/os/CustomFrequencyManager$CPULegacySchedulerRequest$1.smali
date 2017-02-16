.class Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest$1;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;)V
    .locals 0
    .param p1, "this$1"    # Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;

    .prologue
    .line 678
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest$1;->this$1:Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest$1;->this$1:Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 679
    return-void
.end method
