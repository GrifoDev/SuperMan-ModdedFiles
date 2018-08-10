.class Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest$CPULegacySchedulerReleaser;
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
    name = "CPULegacySchedulerReleaser"
.end annotation


# instance fields
.field stop:Z

.field final synthetic this$1:Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;)V
    .locals 0

    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest$CPULegacySchedulerReleaser;->this$1:Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest$CPULegacySchedulerReleaser;->stop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest$CPULegacySchedulerReleaser;->this$1:Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->cancelFrequencyRequest()V

    :cond_0
    return-void
.end method
