.class Lcom/android/server/audio/AudioService$SecGlobalVariable$1;
.super Landroid/app/IProcessObserver$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService$SecGlobalVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/audio/AudioService$SecGlobalVariable;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService$SecGlobalVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable$1;->this$1:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 4

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable$1;->this$1:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-static {v0, p2}, Lcom/android/server/audio/AudioService$SecGlobalVariable;->-set35(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mForegroundUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable$1;->this$1:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/AudioService$SecGlobalVariable;->-get44(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable$1;->this$1:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    iget-object v2, v2, Lcom/android/server/audio/AudioService$SecGlobalVariable;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable$1;->this$1:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-static {v3}, Lcom/android/server/audio/AudioService$SecGlobalVariable;->-get44(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0

    return-void
.end method
