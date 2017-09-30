.class Lcom/android/incallui/SelectPhoneAccountActivity$1;
.super Landroid/telephony/PhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SelectPhoneAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SelectPhoneAccountActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/SelectPhoneAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SelectPhoneAccountActivity$1;->this$0:Lcom/android/incallui/SelectPhoneAccountActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/SelectPhoneAccountActivity$1;->this$0:Lcom/android/incallui/SelectPhoneAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/SelectPhoneAccountActivity;->access$000(Lcom/android/incallui/SelectPhoneAccountActivity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
