.class Lcom/att/iqi/IQIServiceBroker$1;
.super Landroid/content/BroadcastReceiver;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBroker;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$1;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "com.att.iqi.extra.IQI_STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$1;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->-get2(Lcom/att/iqi/IQIServiceBroker;)Lcom/att/iqi/IQIServiceBroker$ServiceState;

    move-result-object v1

    sget-object v2, Lcom/att/iqi/IQIServiceBroker$ServiceState;->OFF:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$1;->this$0:Lcom/att/iqi/IQIServiceBroker;

    sget-object v2, Lcom/att/iqi/IQIServiceBroker$ServiceState;->ON:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    invoke-static {v1, v2}, Lcom/att/iqi/IQIServiceBroker;->-set2(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IQIServiceBroker$ServiceState;)Lcom/att/iqi/IQIServiceBroker$ServiceState;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$1;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$1;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1, v3}, Lcom/att/iqi/IQIServiceBroker;->-wrap5(Lcom/att/iqi/IQIServiceBroker;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$1;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->-get2(Lcom/att/iqi/IQIServiceBroker;)Lcom/att/iqi/IQIServiceBroker$ServiceState;

    move-result-object v1

    sget-object v2, Lcom/att/iqi/IQIServiceBroker$ServiceState;->ON:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$1;->this$0:Lcom/att/iqi/IQIServiceBroker;

    sget-object v2, Lcom/att/iqi/IQIServiceBroker$ServiceState;->OFF:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    invoke-static {v1, v2}, Lcom/att/iqi/IQIServiceBroker;->-set2(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IQIServiceBroker$ServiceState;)Lcom/att/iqi/IQIServiceBroker$ServiceState;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$1;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Lcom/att/iqi/IQIServiceBroker;->tryDisconnecting()V

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$1;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->-wrap6(Lcom/att/iqi/IQIServiceBroker;)V

    goto :goto_0
.end method
