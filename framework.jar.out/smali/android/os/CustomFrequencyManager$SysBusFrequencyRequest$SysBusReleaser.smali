.class Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest$SysBusReleaser;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SysBusReleaser"
.end annotation


# instance fields
.field stop:Z

.field final synthetic this$1:Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;)V
    .locals 0

    iput-object p1, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest$SysBusReleaser;->this$1:Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest$SysBusReleaser;->stop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest$SysBusReleaser;->this$1:Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->cancelFrequencyRequest()V

    :cond_0
    return-void
.end method
