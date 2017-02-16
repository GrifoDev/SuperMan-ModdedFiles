.class Lcom/android/incallui/SelectPhoneSimAccountActivity$1;
.super Landroid/telephony/PhoneStateListener;
.source "SelectPhoneSimAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SelectPhoneSimAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SelectPhoneSimAccountActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/SelectPhoneSimAccountActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SelectPhoneSimAccountActivity;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity$1;->this$0:Lcom/android/incallui/SelectPhoneSimAccountActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 47
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 48
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity$1;->this$0:Lcom/android/incallui/SelectPhoneSimAccountActivity;

    # invokes: Lcom/android/incallui/SelectPhoneSimAccountActivity;->attemptFinish()V
    invoke-static {v0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->access$000(Lcom/android/incallui/SelectPhoneSimAccountActivity;)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
