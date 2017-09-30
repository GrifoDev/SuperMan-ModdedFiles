.class public Lcom/samsung/a/a/a/a/d/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;I)I
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/samsung/a/a/a/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v1, "dq-w"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "wifi_used"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    sub-int v0, v1, v0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "dq-3g"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "data_used"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/a/a/a/b;Lcom/samsung/a/a/a/a/b/a;Lcom/samsung/a/a/a/a/a;)Lcom/samsung/a/a/a/a/d/a;
    .locals 6

    invoke-static {p0}, Lcom/samsung/a/a/a/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v0, Lcom/samsung/a/a/a/a/d/a;

    sget-object v1, Lcom/samsung/a/a/a/a/a/a;->a:Lcom/samsung/a/a/a/a/a/a;

    invoke-virtual {p1}, Lcom/samsung/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p2, p1}, Lcom/samsung/a/a/a/a/d/b;->a(Landroid/content/Context;Lcom/samsung/a/a/a/a/b/a;Lcom/samsung/a/a/a/b;)Ljava/util/Map;

    move-result-object v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/a/a/a/a/d/a;-><init>(Lcom/samsung/a/a/a/a/a/a;Ljava/lang/String;Ljava/util/Map;Landroid/content/SharedPreferences;Lcom/samsung/a/a/a/a/a;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/a/a/a/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/a/a/a/a/h/a;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/a/a/a/a/b/a;Lcom/samsung/a/a/a/b;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/a/a/a/a/b/a;",
            "Lcom/samsung/a/a/a/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pkn"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dm"

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mcc"

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mnc"

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "uv"

    invoke-virtual {p2}, Lcom/samsung/a/a/a/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/a/a/a/b;Lcom/samsung/a/a/a/a/c/c;Lcom/samsung/a/a/a/a/b/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p3, v0}, Lcom/samsung/a/a/a/a/d/b;->a(Landroid/content/Context;Lcom/samsung/a/a/a/b;Lcom/samsung/a/a/a/a/b/a;Lcom/samsung/a/a/a/a/a;)Lcom/samsung/a/a/a/a/d/a;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/samsung/a/a/a/a/c/c;->a(Lcom/samsung/a/a/a/a/c/b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/a/a/a/b;Lcom/samsung/a/a/a/a/c/c;Lcom/samsung/a/a/a/a/b/a;Lcom/samsung/a/a/a/a/a;)V
    .locals 1

    invoke-static {p0, p1, p3, p4}, Lcom/samsung/a/a/a/a/d/b;->a(Landroid/content/Context;Lcom/samsung/a/a/a/b;Lcom/samsung/a/a/a/a/b/a;Lcom/samsung/a/a/a/a/a;)Lcom/samsung/a/a/a/a/d/a;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/samsung/a/a/a/a/c/c;->a(Lcom/samsung/a/a/a/a/c/b;)V

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;)V
    .locals 5

    const/4 v4, 0x0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "quota_reset_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_used"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wifi_used"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/samsung/a/a/a/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "quota_reset_date"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/a/a/a/a/h/d;->a(ILjava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/a/a/a/a/d/b;->a(Landroid/content/SharedPreferences;)V

    :cond_0
    const-string v1, "rint"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "policy_received_date"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/a/a/a/a/h/d;->a(ILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;II)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/samsung/a/a/a/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-ne p1, v4, :cond_0

    const-string v2, "dq-w"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v2, "wifi_used"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "oq-w"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Quota : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ Uploaded : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ limit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/a/a/a/a/h/a;->a(Ljava/lang/String;)V

    add-int/2addr v2, p2

    if-ge v3, v2, :cond_1

    const-string v0, "DLS Sender"

    const-string v2, "send result fail : Over daily quota"

    invoke-static {v0, v2}, Lcom/samsung/a/a/a/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1

    :cond_0
    if-nez p1, :cond_3

    const-string v2, "dq-3g"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v2, "data_used"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "oq-3g"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    if-ge v0, p2, :cond_2

    const-string v0, "DLS Sender"

    const-string v2, "send result fail : Over once quota"

    invoke-static {v0, v2}, Lcom/samsung/a/a/a/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    move v0, v1

    move v2, v1

    move v3, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/samsung/a/a/a/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string v1, "wifi_used"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "wifi_used"

    add-int/2addr v1, p2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/samsung/a/a/a/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "data_used"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "data_used"

    add-int/2addr v1, p2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
