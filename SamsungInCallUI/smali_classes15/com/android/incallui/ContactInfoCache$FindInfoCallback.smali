.class Lcom/android/incallui/ContactInfoCache$FindInfoCallback;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindInfoCallback"
.end annotation


# instance fields
.field private final mIsIncoming:Z

.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;


# direct methods
.method public constructor <init>(Lcom/android/incallui/ContactInfoCache;Z)V
    .locals 0
    .param p2, "isIncoming"    # Z

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-boolean p2, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mIsIncoming:Z

    .line 178
    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "callerInfo"    # Lcom/android/incallui/CallerInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 182
    if-nez p2, :cond_0

    .line 183
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FindInfoCallback : onQueryComplete : cookie is null..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local p2    # "cookie":Ljava/lang/Object;
    :goto_0
    return-void

    .line 186
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_0
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FindInfoCallback : onQueryComplete - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    iput-boolean v2, p3, Lcom/android/incallui/CallerInfo;->queryCompleted:Z

    .line 188
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    move-object v1, p2

    check-cast v1, Lcom/android/incallui/Call;

    iget-boolean v5, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mIsIncoming:Z

    # invokes: Lcom/android/incallui/ContactInfoCache;->findInfoQueryComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V
    invoke-static {v4, v1, p3, v5, v2}, Lcom/android/incallui/ContactInfoCache;->access$100(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V

    move-object v1, p2

    .line 190
    check-cast v1, Lcom/android/incallui/Call;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getFakeSmartCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "spam_call_enable"

    move-object v1, p2

    check-cast v1, Lcom/android/incallui/Call;

    .line 192
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getFakeSmartCallSetting()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 191
    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object v1, p2

    .line 193
    check-cast v1, Lcom/android/incallui/Call;

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->setSmartCallSearching(Z)V

    .line 194
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartQueryStart()V

    .line 195
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v3

    move-object v1, p2

    check-cast v1, Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    move-object v1, p2

    check-cast v1, Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/smartcall/SmartCallController;->startQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_1
    :goto_2
    iget-boolean v1, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v1, :cond_7

    .line 217
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FindInfoCallback done : contactExists "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 222
    .end local p2    # "cookie":Ljava/lang/Object;
    :goto_3
    iget-object v1, p3, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mIsIncoming:Z

    iget-boolean v3, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/ContactAgentUtils;->startContactAgentAsync(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_2
    move v1, v3

    .line 192
    goto :goto_1

    .line 196
    :cond_3
    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v1, :cond_6

    .line 198
    invoke-virtual {p3}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p3, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    .line 199
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, p2

    check-cast v1, Lcom/android/incallui/Call;

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    .line 200
    # getter for: Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    move-object v1, p2

    check-cast v1, Lcom/android/incallui/Call;

    .line 201
    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 202
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move v0, v2

    .line 203
    .local v0, "mEmergencyMode":Z
    :goto_4
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FindInfoCallback : mSpamEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    move-object v1, p2

    .line 205
    check-cast v1, Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 206
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FindInfoCallback : SmartCallController - startQuery"

    invoke-static {v1, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, p2

    .line 207
    check-cast v1, Lcom/android/incallui/Call;

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->setSmartCallSearching(Z)V

    .line 208
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartQueryStart()V

    .line 209
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v3

    move-object v1, p2

    check-cast v1, Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    move-object v1, p2

    check-cast v1, Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/smartcall/SmartCallController;->startQuery(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v0    # "mEmergencyMode":Z
    :cond_5
    move v0, v3

    .line 202
    goto :goto_4

    :cond_6
    move-object v1, p2

    .line 213
    check-cast v1, Lcom/android/incallui/Call;

    invoke-virtual {v1, v3}, Lcom/android/incallui/Call;->setSmartCallSearching(Z)V

    goto/16 :goto_2

    .line 219
    :cond_7
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FindInfoCallback done : OrgAsyncHandler startquery"

    invoke-static {v1, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 220
    invoke-static {}, Lcom/android/incallui/OrgAsyncHandler;->getInstance()Lcom/android/incallui/OrgAsyncHandler;

    move-result-object v1

    iget-wide v2, p3, Lcom/android/incallui/CallerInfo;->rawId:J

    check-cast p2, Lcom/android/incallui/Call;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    iget v5, p3, Lcom/android/incallui/CallerInfo;->queryUserID:I

    iget-wide v6, p3, Lcom/android/incallui/CallerInfo;->userType:J

    invoke-virtual/range {v1 .. v7}, Lcom/android/incallui/OrgAsyncHandler;->startQuery(JLjava/lang/String;IJ)V

    goto/16 :goto_3
.end method
