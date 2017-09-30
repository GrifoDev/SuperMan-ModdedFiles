.class Lcom/samsung/android/sdk/bixby/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcom/samsung/android/sdk/bixby/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/sdk/bixby/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_0.1.6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/bixby/b;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/b;->c:Lcom/samsung/android/sdk/bixby/a;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command from EM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "emes_request_context"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/b;->c:Lcom/samsung/android/sdk/bixby/a;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/a;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/bixby/b;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "emes_state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/b;->c:Lcom/samsung/android/sdk/bixby/a;

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/b;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/sdk/bixby/a;->a:Ljava/lang/String;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/b;->c:Lcom/samsung/android/sdk/bixby/a;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v2, "emes_request_param_filling"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "slotFillingResult"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/c;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/b;->c:Lcom/samsung/android/sdk/bixby/a;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V

    goto :goto_0

    :cond_2
    const-string v2, "emes_pathrule_info"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "pathRuleInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/d;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/b;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/b;->c:Lcom/samsung/android/sdk/bixby/a;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/b;)V

    goto :goto_0

    :cond_3
    const-string v2, "emes_chatty_mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "utterance"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "directSend"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/b;->c:Lcom/samsung/android/sdk/bixby/a;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string v2, "emes_split_state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/b;->c:Lcom/samsung/android/sdk/bixby/a;

    const-string v2, "stateIds"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Lorg/json/JSONArray;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "emes_partial_landing_state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "isLanded"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/b;->c:Lcom/samsung/android/sdk/bixby/a;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/a;->c(Z)V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/samsung/android/sdk/bixby/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command arrived : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
