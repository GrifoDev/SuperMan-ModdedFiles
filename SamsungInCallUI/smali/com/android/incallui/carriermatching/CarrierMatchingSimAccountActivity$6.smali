.class Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$6;
.super Landroid/telephony/PhoneStateListener;


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

    iput-object p1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$6;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$6;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->access$000(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$6;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->access$300(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
