.class Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p3, :cond_4

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    check-cast p2, Lcom/samsung/android/sdk/ssf/message/io/KeySet;

    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getGpbauthkey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getExpiredkey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage. key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", channelAuthKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expiredKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "handleMessage. Invalid KeySet."

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "key_my_duid"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_app_id"

    invoke-virtual {p4, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "handleMessage. Invalid myDuid."

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage. myDuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", appId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;)Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/listener/KeyUpdateLister;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;)Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/listener/KeyUpdateLister;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/listener/KeyUpdateLister;->onKeyUpdateSuccess(Lcom/samsung/android/sdk/ssf/message/io/KeySet;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;)Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/listener/KeyUpdateLister;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/listener/KeyUpdateLister;->onKeyUpdateSuccess(Lcom/samsung/android/sdk/ssf/message/io/KeySet;)V

    goto :goto_0
.end method
