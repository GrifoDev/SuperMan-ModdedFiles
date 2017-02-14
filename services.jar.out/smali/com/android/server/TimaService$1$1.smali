.class Lcom/android/server/TimaService$1$1;
.super Ljava/lang/Thread;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TimaService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/TimaService$1;


# direct methods
.method constructor <init>(Lcom/android/server/TimaService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/TimaService$1$1;->this$1:Lcom/android/server/TimaService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/TimaService$1$1;->this$1:Lcom/android/server/TimaService$1;

    iget-object v0, v0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    invoke-static {v0}, Lcom/android/server/TimaService;->-wrap4(Lcom/android/server/TimaService;)V

    iget-object v0, p0, Lcom/android/server/TimaService$1$1;->this$1:Lcom/android/server/TimaService$1;

    iget-object v0, v0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    invoke-static {v0}, Lcom/android/server/TimaService;->-wrap2(Lcom/android/server/TimaService;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/TimaService$1$1;->this$1:Lcom/android/server/TimaService$1;

    iget-object v0, v0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    invoke-static {v0}, Lcom/android/server/TimaService;->-wrap5(Lcom/android/server/TimaService;)V

    return-void
.end method
