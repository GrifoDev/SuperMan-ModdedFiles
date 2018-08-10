.class Landroid/telecom/ConnectionService$2$2;
.super Landroid/telecom/Logging/Runnable;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/ConnectionService$2;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/ConnectionService$2$2;->this$1:Landroid/telecom/ConnectionService$2;

    iput-object p4, p0, Landroid/telecom/ConnectionService$2$2;->val$id:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Landroid/telecom/Logging/Runnable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public loggedRun()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/ConnectionService$2$2;->this$1:Landroid/telecom/ConnectionService$2;

    iget-object v0, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, p0, Landroid/telecom/ConnectionService$2$2;->val$id:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->-wrap13(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    return-void
.end method
