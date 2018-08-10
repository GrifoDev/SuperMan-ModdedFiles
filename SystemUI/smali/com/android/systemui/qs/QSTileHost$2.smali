.class Lcom/android/systemui/qs/QSTileHost$2;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v8}, Lcom/android/systemui/qs/QSTileHost;->-get4(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v8}, Lcom/android/systemui/qs/QSTileHost;->-get4(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string/jumbo v9, "initialized"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/systemui/qs/QSTileHost;->-set1(Lcom/android/systemui/qs/QSTileHost;Z)Z

    new-instance v4, Ljava/util/LinkedHashMap;

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v8}, Lcom/android/systemui/qs/QSTileHost;->-get3(Lcom/android/systemui/qs/QSTileHost;)Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getToggleState()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLoggingKey()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/android/systemui/SystemUIAnalytics;->mTileSAIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v8}, Lcom/android/systemui/qs/QSTileHost;->-get4(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/systemui/SystemUIAnalytics;->mTileSAIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget v9, Lcom/android/systemui/SystemUIAnalytics;->QUICKTILE_MAP_TOGGLE_EID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v8}, Lcom/android/systemui/qs/QSTileHost;->-get4(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v8}, Lcom/android/systemui/qs/QSTileHost;->-get4(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v8, "SystemUIAnalytics"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SAPreference : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v8, "QSTileHost"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SAPreference : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1
.end method
