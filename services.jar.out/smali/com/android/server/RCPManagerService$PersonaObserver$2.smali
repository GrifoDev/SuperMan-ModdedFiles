.class Lcom/android/server/RCPManagerService$PersonaObserver$2;
.super Ljava/lang/Object;
.source "RCPManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/RCPManagerService$PersonaObserver;->onStateChange(Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/RCPManagerService$PersonaObserver;


# direct methods
.method constructor <init>(Lcom/android/server/RCPManagerService$PersonaObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/RCPManagerService$PersonaObserver$2;->this$1:Lcom/android/server/RCPManagerService$PersonaObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/RCPManagerService$PersonaObserver$2;->this$1:Lcom/android/server/RCPManagerService$PersonaObserver;

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PersonaObserver;->this$0:Lcom/android/server/RCPManagerService;

    iget-object v1, p0, Lcom/android/server/RCPManagerService$PersonaObserver$2;->this$1:Lcom/android/server/RCPManagerService$PersonaObserver;

    invoke-static {v1}, Lcom/android/server/RCPManagerService$PersonaObserver;->-get0(Lcom/android/server/RCPManagerService$PersonaObserver;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/RCPManagerService;->-wrap11(Lcom/android/server/RCPManagerService;I)V

    return-void
.end method
