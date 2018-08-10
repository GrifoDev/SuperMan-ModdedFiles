.class Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CpuDvfsReleaser"
.end annotation


# instance fields
.field stop:Z

.field final synthetic this$1:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;)V
    .locals 0

    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;->this$1:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "CustomFrequencyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CpuDvfsReleaser STOP before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;->stop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pkgName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;->this$1:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;

    iget-object v2, v2, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->-wrap1(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;->stop:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "CustomFrequencyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CpuDvfsReleaser STOP after : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;->stop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pkgName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;->this$1:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;

    iget-object v2, v2, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->-wrap1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$CpuDvfsReleaser;->this$1:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->cancelFrequencyRequest()V

    :cond_0
    return-void
.end method
