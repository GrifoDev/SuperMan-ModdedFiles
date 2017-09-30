.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;
.super Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GcmRegState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GcmRegState] enter. message.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushTokenClient"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_GCM:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device doesn\'t support GCM. Checking for required updates Service error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PushTokenClient"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string v0, "GCM supported. update feature and register."

    const-string v1, "PushTokenClient"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_GCM:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->registerGcm(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EULA"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recovery"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Play Service needs updates, but ignored. EntryPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushTokenClient"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "background"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Play Service needs updates, show notification."

    const-string v2, "PushTokenClient"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/c;->a(ILandroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "extra_cb_handler"

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GCM not supported. Result code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushTokenClient"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->registerGcm(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RegisterGcmState] processMessage. message.what : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushTokenClient"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "gcm_register_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GcmRegState] processMessage. result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushTokenClient"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto :goto_0

    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->registerGcm(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    const-string v0, "[GcmRegState] Device not supported GCM "

    const-string v1, "PushTokenClient"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$GcmRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x69 -> :sswitch_1
    .end sparse-switch
.end method
