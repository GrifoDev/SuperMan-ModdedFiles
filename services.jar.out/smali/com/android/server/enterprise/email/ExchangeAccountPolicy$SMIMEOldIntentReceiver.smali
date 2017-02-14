.class Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SMIMEOldIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v2, "ExchangeAccountPolicy/LegacyReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received Intent - "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0x0

    if-nez v14, :cond_0

    const-string/jumbo v2, "ExchangeAccountPolicy/LegacyReceiver"

    const-string/jumbo v3, "failed. action is null."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v2, "com.samsung.edm.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "ExchangeAccountPolicy/LegacyReceiver"

    const-string/jumbo v3, "Received - ACTION_ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "result"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    const-string/jumbo v2, "account_id"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v2, "smime_type"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    const-string/jumbo v2, "certificate_result_id"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v17

    if-eqz v17, :cond_9

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v15, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v6, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v2, -0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    const/16 v20, 0x0

    if-nez v22, :cond_1

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-wrap1(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v20

    const-string/jumbo v2, "ExchangeAccountPolicy/LegacyReceiver"

    const-string/jumbo v3, "release SMIME Certificate for Enryption (Alias) by null."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_2

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-wrap1(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v20

    const-string/jumbo v2, "ExchangeAccountPolicy/LegacyReceiver"

    const-string/jumbo v3, "release SMIME Certificate for Signing (Alias) by null."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-eqz v20, :cond_7

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v2, :cond_6

    const-string/jumbo v2, "ExchangeAccountPolicy/LegacyReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "success to release SMIME Certificate (Alias) : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v2, v4, v5, v0, v1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-wrap3(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;JII)V

    :goto_3
    return-void

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const-string/jumbo v13, "ForceSmimeCertForEncryption"

    const/4 v12, 0x1

    move v8, v15

    move v9, v6

    move-wide v10, v4

    invoke-static/range {v7 .. v13}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-wrap0(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v20

    const-string/jumbo v2, "ExchangeAccountPolicy/LegacyReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "force SMIME Certificate for Enryption (Alias). ret = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v16

    const-string/jumbo v2, "ExchangeAccountPolicy/LegacyReceiver"

    const-string/jumbo v3, "Failed to apply SMIME Alis Policy on success."

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const-string/jumbo v13, "ForceSmimeCertForSigning"

    const/4 v12, 0x1

    move v8, v15

    move v9, v6

    move-wide v10, v4

    invoke-static/range {v7 .. v13}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-wrap0(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v20

    const-string/jumbo v2, "ExchangeAccountPolicy/LegacyReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "force SMIME Certificate for Signing (Alias). ret = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v2, "ExchangeAccountPolicy/LegacyReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "success to SMIME Certificate (Alias) : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string/jumbo v2, "ExchangeAccountPolicy/LegacyReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to release SMIME Certificate (Alias) : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v2, "ExchangeAccountPolicy/LegacyReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to SMIME Certificate (Alias)."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v2, "ExchangeAccountPolicy/LegacyReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed. no registed work. id = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v2, "ExchangeAccountPolicy/LegacyReceiver"

    const-string/jumbo v3, "no Defined Intent."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method
