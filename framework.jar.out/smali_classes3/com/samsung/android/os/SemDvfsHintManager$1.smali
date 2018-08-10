.class Lcom/samsung/android/os/SemDvfsHintManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemDvfsHintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/os/SemDvfsHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/os/SemDvfsHintManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/os/SemDvfsHintManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsHintManager$1;->this$0:Lcom/samsung/android/os/SemDvfsHintManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager$1;->this$0:Lcom/samsung/android/os/SemDvfsHintManager;

    iget-boolean v0, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager$1;->this$0:Lcom/samsung/android/os/SemDvfsHintManager;

    iget-object v0, v0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ResolutionChangeReceive hint Name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager$1;->this$0:Lcom/samsung/android/os/SemDvfsHintManager;

    iget-object v2, v2, Lcom/samsung/android/os/SemDvfsHintManager;->mHint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager$1;->this$0:Lcom/samsung/android/os/SemDvfsHintManager;

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager$1;->this$0:Lcom/samsung/android/os/SemDvfsHintManager;

    iget-object v1, v1, Lcom/samsung/android/os/SemDvfsHintManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager$1;->this$0:Lcom/samsung/android/os/SemDvfsHintManager;

    iget-object v2, v2, Lcom/samsung/android/os/SemDvfsHintManager;->mHint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->update(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
