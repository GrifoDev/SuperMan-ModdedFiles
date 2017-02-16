.class final Lcom/android/incallui/smartcall/SmartCallUtil$1;
.super Ljava/lang/Object;
.source "SmartCallUtil.java"

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

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/incallui/smartcall/SmartCallUtil$1;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 66
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 67
    .local v1, "callList":Lcom/android/incallui/CallList;
    const/4 v7, 0x0

    invoke-static {v1, v7, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 68
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz p1, :cond_7

    .line 69
    const-string v7, "queryCallerInfo - cursor != null"

    # invokes: Lcom/android/incallui/smartcall/SmartCallUtil;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/incallui/smartcall/SmartCallUtil;->access$000(Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Lcom/android/incallui/smartcall/SmartCallInfo;->getSmartCallInfo(Landroid/database/Cursor;)Lcom/android/incallui/smartcall/SmartCallInfo;

    move-result-object v6

    .line 71
    .local v6, "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    if-eqz v6, :cond_2

    .line 72
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 73
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_0

    .line 74
    iput-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    .line 77
    :cond_0
    invoke-static {v6}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/smartcall/SmartCallInfo;)I

    move-result v4

    .line 78
    .local v4, "mSmartCallRegisterState":I
    invoke-static {v4}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallName(I)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "mSpamLevel":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.samsung.accessory.callhandlerprovider.UPDATE_SMART_CALL_ITEM"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, "intent":Landroid/content/Intent;
    iget-object v7, v6, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    if-gt v4, v8, :cond_6

    .line 82
    const-string v7, "SMART_CALL_NAME"

    iget-object v8, v6, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    :cond_1
    :goto_0
    const-string v7, "SMART_CALL_NUMBER"

    iget-object v8, p0, Lcom/android/incallui/smartcall/SmartCallUtil$1;->val$phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v7, "SMART_CALL_TYPE_CODE"

    iget-object v8, v6, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v7, "SMART_CALL_CATEGORY_CODE"

    iget-object v8, v6, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v7, "SMART_CALL_IMAGE_URL"

    iget-object v8, v6, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v7, "SMART_CALL_ATTRIBUTION_NAME"

    iget-object v8, v6, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v7, "SMART_CALL_ATTRIBUTION_IMAGE_URL"

    iget-object v8, v6, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v7, "SMART_CALL_ATTRIBUTION_URL"

    iget-object v8, v6, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    const-string v8, "com.samsung.smartcall.permission.SMART_CALL_ITEM"

    invoke-virtual {v7, v3, v8}, Lcom/android/incallui/InCallApp;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 96
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "mSmartCallRegisterState":I
    .end local v5    # "mSpamLevel":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {v0, v9}, Lcom/android/incallui/Call;->setSmartCallSearching(Z)V

    .line 99
    :cond_3
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartInfoQueryComplete()V

    .line 100
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 101
    if-eqz v6, :cond_4

    iget-object v7, p0, Lcom/android/incallui/smartcall/SmartCallUtil$1;->val$phoneNumber:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v6, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 102
    iget-object v7, v6, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/incallui/smartcall/SmartCallUtil$1;->val$phoneNumber:Ljava/lang/String;

    invoke-static {v7, v8, p2}, Lcom/android/incallui/smartcall/SmartCallUtil;->queryCallerImageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartCallerIdAppLogging(Landroid/content/Context;)V

    .line 111
    .end local v6    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_5
    :goto_1
    return-void

    .line 83
    .restart local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "mSmartCallRegisterState":I
    .restart local v5    # "mSpamLevel":Ljava/lang/String;
    .restart local v6    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 84
    const-string v7, "SMART_CALL_NAME"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 106
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "mSmartCallRegisterState":I
    .end local v5    # "mSpamLevel":Ljava/lang/String;
    .end local v6    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_7
    if-eqz v0, :cond_5

    .line 107
    invoke-virtual {v0, v9}, Lcom/android/incallui/Call;->setSmartCallSearching(Z)V

    .line 108
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartInfoQueryComplete()V

    goto :goto_1
.end method
