.class Lcom/android/incallui/smartcall/SmartCallManager$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcall/SmartCallManager;->queryCallerInfo(Ljava/lang/String;Lcom/android/incallui/smartcall/SmartCallerInfoListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcall/SmartCallManager;

.field final synthetic val$callId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/android/incallui/smartcall/SmartCallerInfoListener;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcall/SmartCallManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/smartcall/SmartCallerInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->this$0:Lcom/android/incallui/smartcall/SmartCallManager;

    iput-object p2, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->val$callId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->val$phoneNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->val$listener:Lcom/android/incallui/smartcall/SmartCallerInfoListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->val$callId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v3

    const-string v1, "false"

    const-string v0, "false"

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/android/incallui/util/SecCallExtraUtils;->getReceivedCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "false"

    :goto_0
    invoke-virtual {v3}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    :goto_1
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    const-string v0, "true"

    :goto_2
    move-object v5, v0

    move-object v6, v1

    :goto_3
    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->this$0:Lcom/android/incallui/smartcall/SmartCallManager;

    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallManager;->access$100(Lcom/android/incallui/smartcall/SmartCallManager;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/smartcall/SmartCallContract;->CALLER_INFO_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallManager;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "phoneNumber like ? "

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->val$phoneNumber:Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const/4 v6, 0x2

    const-string v7, "false"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->val$listener:Lcom/android/incallui/smartcall/SmartCallerInfoListener;

    iget-object v2, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->val$callId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/android/incallui/smartcall/SmartCallerInfoListener;->onResult(Landroid/database/Cursor;Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_0
    const-string v1, "true"

    goto :goto_0

    :cond_1
    const-string v0, "false"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IllegalArgumentException "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move-object v5, v0

    move-object v6, v1

    goto :goto_3
.end method
