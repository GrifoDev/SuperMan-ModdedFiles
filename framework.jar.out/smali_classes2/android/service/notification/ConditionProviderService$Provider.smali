.class final Landroid/service/notification/ConditionProviderService$Provider;
.super Landroid/service/notification/IConditionProvider$Stub;
.source "ConditionProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ConditionProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Provider"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/notification/ConditionProviderService;


# direct methods
.method private constructor <init>(Landroid/service/notification/ConditionProviderService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/notification/ConditionProviderService;

    .prologue
    .line 171
    iput-object p1, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-direct {p0}, Landroid/service/notification/IConditionProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService$Provider;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/notification/ConditionProviderService;

    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/ConditionProviderService$Provider;-><init>(Landroid/service/notification/ConditionProviderService;)V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-static {v0}, Landroid/service/notification/ConditionProviderService;->-get1(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/notification/ConditionProviderService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 173
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 2
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 179
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-static {v0}, Landroid/service/notification/ConditionProviderService;->-get1(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/service/notification/ConditionProviderService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    return-void
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 2
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 184
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-static {v0}, Landroid/service/notification/ConditionProviderService;->-get1(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/service/notification/ConditionProviderService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    return-void
.end method
