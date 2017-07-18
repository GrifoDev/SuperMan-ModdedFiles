.class Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/orangelabs/rcs/api/connection/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RcsServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/orangelabs/rcs/api/connection/ConnectionManager;


# direct methods
.method private constructor <init>(Lcom/orangelabs/rcs/api/connection/ConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceReceiver;->this$0:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/orangelabs/rcs/api/connection/ConnectionManager;Lcom/orangelabs/rcs/api/connection/ConnectionManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceReceiver;-><init>(Lcom/orangelabs/rcs/api/connection/ConnectionManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.gsma.services.rcs.action.SERVICE_UP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RCS service is UP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->getInstance()Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    move-result-object v0

    invoke-static {v0}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->access$400(Lcom/orangelabs/rcs/api/connection/ConnectionManager;)V

    goto :goto_0
.end method
