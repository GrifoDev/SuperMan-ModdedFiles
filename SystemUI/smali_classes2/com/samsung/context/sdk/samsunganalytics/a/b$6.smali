.class Lcom/samsung/context/sdk/samsunganalytics/a/b$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/a/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/a/b;->c(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/samsung/context/sdk/samsunganalytics/a/b;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/a/b;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$6;->b:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$6;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$6;->b:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    invoke-static {v4}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->b(Lcom/samsung/context/sdk/samsunganalytics/a/b;)Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "SASettingPref"

    invoke-virtual {v4, v5, v6}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$6;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$6;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method
