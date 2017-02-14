.class Lcom/android/settings/TetherService$1;
.super Landroid/content/BroadcastReceiver;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherService;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/settings/TetherService;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "TetherService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got provision result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-virtual {v3}, Lcom/android/settings/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v3}, Lcom/android/settings/TetherService;->-get3(Lcom/android/settings/TetherService;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "TetherService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected provision response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v3}, Lcom/android/settings/TetherService;->-get1(Lcom/android/settings/TetherService;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v4}, Lcom/android/settings/TetherService;->-get2(Lcom/android/settings/TetherService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v3, v6}, Lcom/android/settings/TetherService;->-set1(Lcom/android/settings/TetherService;Z)Z

    const-string/jumbo v3, "EntitlementResult"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v3, v0, v2}, Lcom/android/settings/TetherService;->-wrap3(Lcom/android/settings/TetherService;II)V

    iget-object v3, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v3}, Lcom/android/settings/TetherService;->-get2(Lcom/android/settings/TetherService;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/android/settings/TetherService;->-set0(Lcom/android/settings/TetherService;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v4}, Lcom/android/settings/TetherService;->-get1(Lcom/android/settings/TetherService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-virtual {v3}, Lcom/android/settings/TetherService;->stopSelf()V

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v3}, Lcom/android/settings/TetherService;->-wrap2(Lcom/android/settings/TetherService;)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v3}, Lcom/android/settings/TetherService;->-wrap0(Lcom/android/settings/TetherService;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v3}, Lcom/android/settings/TetherService;->-wrap1(Lcom/android/settings/TetherService;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    iget-object v4, p0, Lcom/android/settings/TetherService$1;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v4}, Lcom/android/settings/TetherService;->-get2(Lcom/android/settings/TetherService;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/TetherService;->-wrap4(Lcom/android/settings/TetherService;I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
