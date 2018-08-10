.class public Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;
.super Ljava/lang/Object;
.source "ResultAction.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/common/IResultItem;


# static fields
.field private static final RESERVED_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ACTION_VERSION:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;->RESERVED_KEYS:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;->RESERVED_KEYS:Ljava/util/List;

    const-string/jumbo v1, "ActionId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;->RESERVED_KEYS:Ljava/util/List;

    const-string/jumbo v1, "ActionType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;->RESERVED_KEYS:Ljava/util/List;

    const-string/jumbo v1, "ActionVersion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "0.1.13"

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;->ACTION_VERSION:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;->mLabel:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "action"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "0.1.13"

    return-object v0
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;->mLabel:Ljava/lang/String;

    const-string/jumbo v3, "label"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;->mIntent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchIntentUtils;->getStringFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "intent_str"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;->getId()J

    move-result-wide v2

    const-string/jumbo v4, "ActionId"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ActionType"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ActionVersion"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;

    const-string/jumbo v3, "Intent is null"

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to get JsonString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ResultAction"

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
