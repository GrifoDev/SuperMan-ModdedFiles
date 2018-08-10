.class public Lcom/samsung/context/sdk/samsunganalytics/a/g/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/a/d/b;


# static fields
.field private static a:Z


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->c:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->a:Z

    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->a:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->d:Ljava/util/Map;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/g/c;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->d:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ts"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "t"

    const-string/jumbo v3, "st"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "sti"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->c:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/a/f/b;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->d:Ljava/util/Map;

    invoke-interface {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b;->d(Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "Setting Sender"

    const-string/jumbo v2, "Send fail"

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "Setting Sender"

    const-string/jumbo v2, "Send success"

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->d:Ljava/util/Map;

    const-string/jumbo v3, "sti"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "status_sent_date"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
