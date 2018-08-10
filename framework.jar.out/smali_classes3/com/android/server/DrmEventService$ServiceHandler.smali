.class final Lcom/android/server/DrmEventService$ServiceHandler;
.super Landroid/os/Handler;
.source "DrmEventService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DrmEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DrmEventService;


# direct methods
.method public constructor <init>(Lcom/android/server/DrmEventService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DrmEventService$ServiceHandler;->this$0:Lcom/android/server/DrmEventService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    sget-boolean v1, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DrmEventService"

    const-string/jumbo v2, "DrmEventService : handleMessage msg received"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "DrmEventService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "action event :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const-string/jumbo v1, "START_RESOURCE_HELPER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/DrmEventService$ServiceHandler;->this$0:Lcom/android/server/DrmEventService;

    iget-object v1, v1, Lcom/android/server/DrmEventService;->rchelp:Lcom/android/server/DrmMediaResourceHelper;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/DrmEventService$ServiceHandler;->this$0:Lcom/android/server/DrmEventService;

    new-instance v2, Lcom/android/server/DrmMediaResourceHelper;

    invoke-direct {v2}, Lcom/android/server/DrmMediaResourceHelper;-><init>()V

    iput-object v2, v1, Lcom/android/server/DrmEventService;->rchelp:Lcom/android/server/DrmMediaResourceHelper;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v1, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "DrmEventService"

    const-string/jumbo v2, "Intent Action is Null :"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
