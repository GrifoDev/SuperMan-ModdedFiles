.class Lcom/android/server/enterprise/email/AccountsReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/AccountsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/AccountsReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v20, "user_handle_id"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.USER_HANDLE_ID_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get0()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "onReceive() : Action is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get0()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onReceive() userId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v20, "com.samsung.android.knox.intent.action.CBA_INSTALL_STATUS_INTERNAL"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.STATUS"

    const/16 v21, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get0()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onReceive() : failed to install cba on accountId : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v4, v5, v1, v2}, Lcom/android/server/enterprise/email/AccountsReceiver;->-wrap0(Lcom/android/server/enterprise/email/AccountsReceiver;JII)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v20, "edm.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string/jumbo v20, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_SETUP_RESULT_INTERNAL"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    :cond_4
    const-string/jumbo v20, "status"

    const/16 v21, 0x8

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string/jumbo v20, "user_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v20, "service"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v20, "account_id"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_SETUP_RESULT_STATUS_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    if-nez v7, :cond_5

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_5
    if-nez v16, :cond_6

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_6
    const-string/jumbo v20, "eas"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    const-string/jumbo v20, "server_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_7

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_7
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.EXCHANGE_ACCOUNT_ADD_RESULT"

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v20, "email_id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "result"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v20, "account_id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v20, "server_host"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "containerid"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get1(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v22, "android.permission.sec.MDM_EXCHANGE"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.action.EXCHANGE_ACCOUNT_ADD_RESULT"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.EMAIL_ADDRESS"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.RESULT"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.SERVER_ADDRESS"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "containerid"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get1(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v22, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "#"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v9

    if-eqz v9, :cond_2

    if-nez v17, :cond_2

    const-wide/16 v20, -0x1

    cmp-long v20, v10, v20

    if-eqz v20, :cond_2

    new-instance v20, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;

    move-object/from16 v0, v20

    invoke-direct {v0, v9, v10, v11}, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;-><init>(Lcom/android/server/enterprise/email/AccountSMIMECertificate;J)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->start()V

    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get0()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "onRecieve() : SMIMECertificate install called."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get0()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "onRecieve() failed. "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_8
    :try_start_1
    const-string/jumbo v20, "receive_host"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_9

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_9
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.EMAIL_ACCOUNT_ADD_RESULT"

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v20, "email_id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "result"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v20, "account_id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v20, "protocol"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "receive_host"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "containerid"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get1(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v22, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.action.EMAIL_ACCOUNT_ADD_RESULT"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.EMAIL_ADDRESS"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.RESULT"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.INCOMING_PROTOCOL"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.INCOMING_SERVER_ADDRESS"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "containerid"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get1(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v22, "com.samsung.android.knox.permission.KNOX_EMAIL"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v20, "edm.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    const-string/jumbo v20, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_DELETE_RESULT_INTERNAL"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    :cond_b
    const-string/jumbo v20, "status"

    const/16 v21, 0x8

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string/jumbo v20, "user_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v20, "service"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v20, "account_id"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_SETUP_RESULT_STATUS_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    if-nez v7, :cond_c

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_c
    if-nez v16, :cond_d

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_d
    const-string/jumbo v20, "eas"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    const-string/jumbo v20, "server_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_e

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_e
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.EXCHANGE_ACCOUNT_DELETE_RESULT"

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v20, "email_id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "result"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v20, "account_id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v20, "server_host"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "containerid"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get1(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v22, "android.permission.sec.MDM_EXCHANGE"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.action.EXCHANGE_ACCOUNT_DELETE_RESULT"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.EMAIL_ADDRESS"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.RESULT"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.SERVER_ADDRESS"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "containerid"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get1(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v22, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v20, "receive_host"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_10

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_10
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.EMAIL_ACCOUNT_DELETE_RESULT"

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v20, "email_id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "result"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v20, "account_id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v20, "protocol"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "receive_host"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "containerid"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get1(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v22, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.action.EMAIL_ACCOUNT_DELETE_RESULT"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.EMAIL_ADDRESS"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.RESULT"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.INCOMING_PROTOCOL"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.INCOMING_SERVER_ADDRESS"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v20, "containerid"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get1(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v22, "com.samsung.android.knox.permission.KNOX_EMAIL"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
