.class Lcom/att/iqi/IQIServiceBrokerExt$1;
.super Landroid/database/ContentObserver;
.source "IQIServiceBrokerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBrokerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBrokerExt;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBrokerExt;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v2}, Lcom/att/iqi/IQIServiceBrokerExt;->-get0(Lcom/att/iqi/IQIServiceBrokerExt;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "att_iqi_report_diagnostic"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.att.iqi.action.CHANGE_IQI_STATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.att.iqi.extra.IQI_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v2}, Lcom/att/iqi/IQIServiceBrokerExt;->-get1(Lcom/att/iqi/IQIServiceBrokerExt;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
