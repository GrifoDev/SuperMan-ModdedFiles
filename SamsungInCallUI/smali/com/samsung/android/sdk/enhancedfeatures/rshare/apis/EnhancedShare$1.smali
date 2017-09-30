.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregister()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onDeregister"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.coreapps.simpleshare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->resetDb()V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRQuotaDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->invalidateCache()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Address;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content$ChunkEntry;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public onPushReceive(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 5

    const-string v0, "appData"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    if-nez p3, :cond_1

    const-string v0, "msg"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "push appData : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " data : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$300()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-class v0, Lcom/samsung/android/sdk/ssf/share/io/PushMessageData;

    invoke-virtual {v3, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/PushMessageData;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "onPushReceive :  mListener is null"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " 6.8 share a message sender : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/sdk/ssf/share/io/PushMessageData;->sender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/sdk/ssf/share/io/PushMessageData;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/share/io/PushMessageData;->sender:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/PushMessageData;->message:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;->onReceiveMessage(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V

    goto :goto_1

    :cond_3
    const-class v0, Lcom/samsung/android/sdk/ssf/share/io/PushBasicData;

    invoke-virtual {v3, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/PushBasicData;

    iget-object v2, v0, Lcom/samsung/android/sdk/ssf/share/io/PushBasicData;->c0:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Ljava/lang/String;)C

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/share/io/PushBasicData;->c1:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_2
    :pswitch_0
    packed-switch v1, :pswitch_data_1

    const-string v0, "push api number is not available"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :pswitch_2
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :pswitch_3
    const-string v4, "6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x2

    goto :goto_2

    :pswitch_4
    const-string v4, "9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x3

    goto :goto_2

    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/PushBasicData;->c0:Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;-><init>(Ljava/lang/String;C)V

    invoke-interface {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;->onIncomingContents(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/PushBasicData;->c0:Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;-><init>(Ljava/lang/String;C)V

    invoke-interface {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;->onDeleteIncomingContents(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/PushBasicData;->c0:Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;-><init>(Ljava/lang/String;C)V

    invoke-interface {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;->onIncomingContents(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/PushBasicData;->c0:Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;-><init>(Ljava/lang/String;C)V

    invoke-interface {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;->onUpdateContents(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content token is null receive data : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onRegister()V
    .locals 2

    const-string v0, "onRegister"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
