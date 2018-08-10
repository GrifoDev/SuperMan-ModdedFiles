.class Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;
.super Ljava/lang/Object;
.source "HWRLanguageManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

.field final synthetic val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    iput-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    iget-object v4, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v4}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$100(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->getLanguagePacks()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$002(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    if-nez v3, :cond_7

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$202(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$302(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->isInstallable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$300(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Downloadable Language list = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Installed Language list = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->isUpdateAvailable()Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    goto/16 :goto_0
.end method
