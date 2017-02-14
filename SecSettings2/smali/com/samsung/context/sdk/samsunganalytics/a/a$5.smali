.class Lcom/samsung/context/sdk/samsunganalytics/a/a$5;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/a/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/a/a;->c(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/samsung/context/sdk/samsunganalytics/a/a;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/a/a;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a$5;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a$5;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a$5;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->d(Lcom/samsung/context/sdk/samsunganalytics/a/a;)Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "SASettingPref"

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a$5;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a$5;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method
