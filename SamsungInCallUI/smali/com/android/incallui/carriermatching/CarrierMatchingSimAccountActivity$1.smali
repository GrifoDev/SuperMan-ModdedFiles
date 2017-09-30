.class Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$1;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$1;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->access$000(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$1;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->access$000(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_SERVICE_STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$1;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->access$100(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$1;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->access$100(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$1;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->access$200(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$1;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->access$200(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->checkMultiSim()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$1;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->access$300(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$1;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->access$400(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$1;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->access$000(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_SCREEN_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$1;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->access$300(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_1
        -0x7d6de25e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
