.class Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;
.super Ljava/lang/Thread;
.source "WeChatWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->checkLogout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    iput-object p2, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v14, 0x3

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v6, "wx7c913747c92bb95d"

    :goto_0
    const-string/jumbo v0, "content://com.tencent.mm.sdk.comm.provider/getWifiList?appid=%s"

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v6, v3, v13

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v10, 0x0

    :try_start_0
    new-instance v9, Lorg/json/JSONArray;

    const-string/jumbo v0, "[{\'ssid\':\'Logout\'}]"

    invoke-direct {v9, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_1
    new-array v4, v14, [Ljava/lang/String;

    const-string/jumbo v0, "1"

    aput-object v0, v4, v13

    aput-object v10, v4, v12

    const-string/jumbo v0, "1"

    const/4 v3, 0x2

    aput-object v0, v4, v3

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    const-string/jumbo v0, "WeChatWifiManager"

    const-string/jumbo v2, "checkLogout, cursor is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    return-void

    :cond_0
    const-string/jumbo v6, "wxc85693d064779676"

    goto :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "WeChatWifiManager"

    const-string/jumbo v3, "checkLogout, JSONException"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ne v0, v12, :cond_3

    const-string/jumbo v0, "retCode"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v14, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-static {v0}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->-get1(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WeChatWifiManager"

    const-string/jumbo v2, "checkLogout, Broadcast is already sent."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->-wrap0(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-static {v0, v12}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->-set0(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;Z)Z

    :cond_3
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-static {v0, v13}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->-set0(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;Z)Z

    goto :goto_2
.end method
