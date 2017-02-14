.class Lcom/android/server/SdpLogService$SdpLogThread;
.super Ljava/lang/Thread;
.source "SdpLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpLogThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpLogService;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpLogService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SdpLogService$SdpLogThread;->this$0:Lcom/android/server/SdpLogService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/android/server/SdpLogService$SdpLogThread;->this$0:Lcom/android/server/SdpLogService;

    new-instance v1, Lcom/android/server/SdpLogService$SdpLogHandler;

    iget-object v2, p0, Lcom/android/server/SdpLogService$SdpLogThread;->this$0:Lcom/android/server/SdpLogService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/SdpLogService$SdpLogHandler;-><init>(Lcom/android/server/SdpLogService;Lcom/android/server/SdpLogService$SdpLogHandler;)V

    invoke-static {v0, v1}, Lcom/android/server/SdpLogService;->-set0(Lcom/android/server/SdpLogService;Lcom/android/server/SdpLogService$SdpLogHandler;)Lcom/android/server/SdpLogService$SdpLogHandler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
