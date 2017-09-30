.class final Lcom/android/incallui/smartcall/SmartCallUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/smartcall/SmartCallerInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcall/SmartCallUtil;->queryCallerInfo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/smartcall/SmartCallUtil$1;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 12

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v10

    const/4 v0, 0x1

    if-eqz p1, :cond_11

    const-string v1, "queryCallerInfo - cursor != null"

    invoke-static {v1}, Lcom/android/incallui/smartcall/SmartCallUtil;->access$000(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/incallui/smartcall/SmartCallInfo;->getSmartCallInfo(Landroid/database/Cursor;)Lcom/android/incallui/smartcall/SmartCallInfo;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v11, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    :cond_0
    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getSmartCallLogInfoUpdated()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/android/incallui/Call;->setSmartCallLogInfoUpdated(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add call log about smart call info reputationTypeCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/smartcall/SmartCallUtil;->access$000(Ljava/lang/String;)V

    const-string v1, "feature_usa"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v11}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/smartcall/SmartCallInfo;)I

    move-result v1

    if-nez v1, :cond_12

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-static {v10}, Lcom/android/incallui/util/SecCallExtraUtils;->getTelecomCallId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v10}, Lcom/android/incallui/util/SecCallExtraUtils;->getTelecomCallId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    :goto_2
    iget-object v3, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    :goto_3
    iget-object v4, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    :goto_4
    iget-object v5, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    :goto_5
    iget-object v6, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    if-eqz v6, :cond_c

    if-eqz v8, :cond_c

    iget-object v6, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    :goto_6
    iget-object v7, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    if-eqz v7, :cond_d

    if-eqz v8, :cond_d

    iget-object v7, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    :goto_7
    iget-object v9, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    if-eqz v9, :cond_e

    if-eqz v8, :cond_e

    iget-object v8, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    :goto_8
    iget-object v9, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    if-eqz v9, :cond_f

    iget-object v9, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    :goto_9
    invoke-virtual/range {v0 .. v9}, Lcom/android/incallui/TelecomAdapter;->setSmartCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v11}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/smartcall/SmartCallInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallName(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.accessory.callhandlerprovider.UPDATE_SMART_CALL_ITEM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    const/4 v3, 0x1

    if-gt v0, v3, :cond_10

    const-string v0, "SMART_CALL_NAME"

    iget-object v1, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_a
    const-string v0, "SMART_CALL_NUMBER"

    iget-object v1, p0, Lcom/android/incallui/smartcall/SmartCallUtil$1;->val$phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SMART_CALL_TYPE_CODE"

    iget-object v1, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SMART_CALL_CATEGORY_CODE"

    iget-object v1, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SMART_CALL_IMAGE_URL"

    iget-object v1, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SMART_CALL_ATTRIBUTION_NAME"

    iget-object v1, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SMART_CALL_ATTRIBUTION_IMAGE_URL"

    iget-object v1, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SMART_CALL_ATTRIBUTION_URL"

    iget-object v1, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const-string v1, "com.samsung.smartcall.permission.SMART_CALL_ITEM"

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallApp;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_3
    if-eqz v10, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/android/incallui/Call;->setSmartCallSearching(Z)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartInfoQueryComplete()V

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-eqz v11, :cond_5

    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallUtil$1;->val$phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v11, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/smartcall/SmartCallUtil$1;->val$phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/incallui/smartcall/SmartCallUtil;->queryCallerImageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartCallerIdAppLogging(Landroid/content/Context;)V

    :cond_6
    :goto_b
    return-void

    :cond_7
    invoke-static {v10}, Lcom/android/incallui/util/SecCallExtraUtils;->getConnectionCallId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_8
    const-string v2, ""

    goto/16 :goto_2

    :cond_9
    const-string v3, ""

    goto/16 :goto_3

    :cond_a
    const-string v4, ""

    goto/16 :goto_4

    :cond_b
    const-string v5, ""

    goto/16 :goto_5

    :cond_c
    const-string v6, ""

    goto/16 :goto_6

    :cond_d
    const-string v7, ""

    goto/16 :goto_7

    :cond_e
    const-string v8, ""

    goto/16 :goto_8

    :cond_f
    const-string v9, ""

    goto/16 :goto_9

    :cond_10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SMART_CALL_NAME"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a

    :cond_11
    if-eqz v10, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/android/incallui/Call;->setSmartCallSearching(Z)V

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartInfoQueryComplete()V

    goto :goto_b

    :cond_12
    move v8, v0

    goto/16 :goto_0
.end method
