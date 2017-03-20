.class Lcom/android/incallui/service/EcidClient$EcidContentObserver;
.super Landroid/database/ContentObserver;
.source "EcidClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/EcidClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EcidContentObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 160
    return-void
.end method

.method private reQuery(Lcom/android/incallui/service/EcidClient;)V
    .locals 6
    .param p1, "ecidQuery"    # Lcom/android/incallui/service/EcidClient;

    .prologue
    .line 202
    if-nez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    # getter for: Lcom/android/incallui/service/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;
    invoke-static {p1}, Lcom/android/incallui/service/EcidClient;->access$000(Lcom/android/incallui/service/EcidClient;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_2

    # getter for: Lcom/android/incallui/service/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;
    invoke-static {p1}, Lcom/android/incallui/service/EcidClient;->access$000(Lcom/android/incallui/service/EcidClient;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v5, v0

    .line 204
    .local v5, "ctx":Landroid/content/Context;
    :goto_1
    if-eqz v5, :cond_0

    .line 206
    # ++operator for: Lcom/android/incallui/service/EcidClient;->m_lookupId:I
    invoke-static {}, Lcom/android/incallui/service/EcidClient;->access$504()I

    move-result v1

    iget-object v2, p1, Lcom/android/incallui/service/EcidClient;->m_phoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/incallui/service/EcidClient;->m_cname:Ljava/lang/String;

    iget v4, p1, Lcom/android/incallui/service/EcidClient;->m_nFlags:I

    move-object v0, p1

    # invokes: Lcom/android/incallui/service/EcidClient;->executeLookupQuery(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    invoke-static/range {v0 .. v5}, Lcom/android/incallui/service/EcidClient;->access$600(Lcom/android/incallui/service/EcidClient;ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_0

    .line 203
    .end local v5    # "ctx":Landroid/content/Context;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/service/EcidClient$EcidContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 165
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 171
    if-nez p2, :cond_0

    .line 199
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v5, "Phone-ECID"

    const-string v6, "callback recieved"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "id":Ljava/lang/String;
    const-string v5, "content://com.cequint.ecid/incalllookup"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 178
    .local v3, "lookupUri":Landroid/net/Uri;
    # getter for: Lcom/android/incallui/service/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/incallui/service/EcidClient;->access$300()Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 179
    :try_start_0
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    # getter for: Lcom/android/incallui/service/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/incallui/service/EcidClient;->access$300()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/service/EcidClient;

    .line 181
    .local v1, "ecidQuery":Lcom/android/incallui/service/EcidClient;
    invoke-direct {p0, v1}, Lcom/android/incallui/service/EcidClient$EcidContentObserver;->reQuery(Lcom/android/incallui/service/EcidClient;)V

    goto :goto_1

    .line 198
    .end local v1    # "ecidQuery":Lcom/android/incallui/service/EcidClient;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 184
    :cond_1
    const/4 v1, 0x0

    .line 185
    .restart local v1    # "ecidQuery":Lcom/android/incallui/service/EcidClient;
    :try_start_1
    # getter for: Lcom/android/incallui/service/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/incallui/service/EcidClient;->access$300()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/service/EcidClient;

    .line 186
    .local v0, "e":Lcom/android/incallui/service/EcidClient;
    iget-object v7, v0, Lcom/android/incallui/service/EcidClient;->m_phoneNumber:Ljava/lang/String;

    # invokes: Lcom/android/incallui/service/EcidClient;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/incallui/service/EcidClient;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "number":Ljava/lang/String;
    # invokes: Lcom/android/incallui/service/EcidClient;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/incallui/service/EcidClient;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 188
    move-object v1, v0

    .line 192
    .end local v0    # "e":Lcom/android/incallui/service/EcidClient;
    .end local v4    # "number":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_5

    .line 198
    .end local v1    # "ecidQuery":Lcom/android/incallui/service/EcidClient;
    :cond_4
    :goto_2
    monitor-exit v6

    goto :goto_0

    .line 195
    .restart local v1    # "ecidQuery":Lcom/android/incallui/service/EcidClient;
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/incallui/service/EcidClient$EcidContentObserver;->reQuery(Lcom/android/incallui/service/EcidClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
