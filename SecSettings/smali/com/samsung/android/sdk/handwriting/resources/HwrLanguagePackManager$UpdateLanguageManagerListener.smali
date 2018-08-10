.class Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;
.super Ljava/lang/Object;
.source "HwrLanguagePackManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateLanguageManagerListener"
.end annotation


# instance fields
.field private mListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)V

    return-void
.end method


# virtual methods
.method addListener(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onComplete(I)V
    .locals 12

    const/4 v11, -0x1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update complete: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v9}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$300()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v8}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;

    invoke-interface {v6}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->getAvailableLanguage()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_2

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$300()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_4

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    if-nez v7, :cond_6

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    new-instance v8, Ljava/util/HashMap;

    iget-object v9, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v9}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$402(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v7, v11}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$202(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;I)I

    return-void

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update failure"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v9}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v7, v11}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$202(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;I)I

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    invoke-interface {v5, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    goto :goto_3

    :cond_2
    aget-object v4, v1, v3

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-interface {v6, v4}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->add(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-interface {v6, v4}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    move-result-object v10

    invoke-direct {v9, v7, v10}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V

    invoke-virtual {v8, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$500()Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->setSpenLanguagePackManager(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)V

    goto :goto_4

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$208(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$300()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_5

    :goto_5
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$300()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v8}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$600()Z

    move-result v8

    invoke-interface {v7, p0, v8}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V

    return-void

    :cond_5
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update language list progress: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v9}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    invoke-interface {v5, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    goto/16 :goto_2
.end method
