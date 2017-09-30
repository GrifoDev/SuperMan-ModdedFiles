.class public Lcom/yulore/sdk/ivr/d/a;
.super Lcom/yulore/a/a/d/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yulore/a/a/d/a",
        "<",
        "Lcom/yulore/sdk/ivr/model/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yulore/a/a/d/a;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/yulore/sdk/ivr/model/ItemNode;)Lcom/yulore/sdk/ivr/model/ItemNode;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Lcom/yulore/sdk/ivr/model/ItemNode;

    invoke-direct {v2}, Lcom/yulore/sdk/ivr/model/ItemNode;-><init>()V

    invoke-virtual {v2, p2}, Lcom/yulore/sdk/ivr/model/ItemNode;->a(Lcom/yulore/sdk/ivr/model/ItemNode;)V

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/ItemNode;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "menu_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "menu_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/ItemNode;->b(Ljava/lang/String;)V

    :cond_1
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/ItemNode;->c(Ljava/lang/String;)V

    :cond_2
    const-string v0, "delay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "delay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/ItemNode;->a(I)V

    :cond_3
    const-string v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->f:Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/ItemNode;->a(Lcom/yulore/sdk/ivr/ItemNodeType;)V

    :goto_0
    const-string v0, "inputs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "inputs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulore/sdk/ivr/d/a;->c(Lorg/json/JSONObject;)Lcom/yulore/sdk/ivr/model/InputNode;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/yulore/sdk/ivr/model/ItemNode;->a(Lcom/yulore/sdk/ivr/model/InputNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->a:Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/ItemNode;->a(Lcom/yulore/sdk/ivr/ItemNodeType;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->b:Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/ItemNode;->a(Lcom/yulore/sdk/ivr/ItemNodeType;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->c:Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/ItemNode;->a(Lcom/yulore/sdk/ivr/ItemNodeType;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->d:Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/ItemNode;->a(Lcom/yulore/sdk/ivr/ItemNodeType;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->e:Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/ItemNode;->a(Lcom/yulore/sdk/ivr/ItemNodeType;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->f:Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/ItemNode;->a(Lcom/yulore/sdk/ivr/ItemNodeType;)V

    goto :goto_0

    :cond_5
    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/yulore/sdk/ivr/d/a;->a(Lorg/json/JSONObject;Lcom/yulore/sdk/ivr/model/ItemNode;)Lcom/yulore/sdk/ivr/model/ItemNode;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v3}, Lcom/yulore/sdk/ivr/model/ItemNode;->a(Ljava/util/List;)V

    :cond_7
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Lorg/json/JSONObject;)Lcom/yulore/sdk/ivr/model/b;
    .locals 7

    const/4 v1, 0x0

    new-instance v2, Lcom/yulore/sdk/ivr/model/b;

    invoke-direct {v2}, Lcom/yulore/sdk/ivr/model/b;-><init>()V

    const-string v0, "op"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "op"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/b;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/b;->b(Ljava/lang/String;)V

    :cond_1
    const-string v0, "starttime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "starttime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/b;->c(Ljava/lang/String;)V

    :cond_2
    const-string v0, "endtime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "endtime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/b;->d(Ljava/lang/String;)V

    :cond_3
    const-string v0, "mo_area"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "mo_area"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/b;->e(Ljava/lang/String;)V

    :cond_4
    const-string v0, "mt_area"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "mt_area"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/b;->f(Ljava/lang/String;)V

    :cond_5
    const-string v0, "delay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "delay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/yulore/sdk/ivr/model/b;->a(I)V

    :cond_6
    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_7

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/yulore/sdk/ivr/d/a;->a(Lorg/json/JSONObject;Lcom/yulore/sdk/ivr/model/ItemNode;)Lcom/yulore/sdk/ivr/model/ItemNode;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v2, v4}, Lcom/yulore/sdk/ivr/model/b;->a(Ljava/util/List;)V

    :cond_8
    const-string v0, "shortcuts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "shortcuts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_9

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulore/sdk/ivr/d/a;->b(Lorg/json/JSONObject;)Lcom/yulore/sdk/ivr/model/ShortcutNode;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {v2, v3}, Lcom/yulore/sdk/ivr/model/b;->b(Ljava/util/List;)V

    :cond_a
    return-object v2
.end method

.method private b(Lorg/json/JSONObject;)Lcom/yulore/sdk/ivr/model/ShortcutNode;
    .locals 2

    new-instance v0, Lcom/yulore/sdk/ivr/model/ShortcutNode;

    invoke-direct {v0}, Lcom/yulore/sdk/ivr/model/ShortcutNode;-><init>()V

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/model/ShortcutNode;->a(Ljava/lang/String;)V

    :cond_0
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/model/ShortcutNode;->c(Ljava/lang/String;)V

    :cond_1
    const-string v1, "key"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "key"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/model/ShortcutNode;->b(Ljava/lang/String;)V

    :cond_2
    const-string v1, "path"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "path"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/model/ShortcutNode;->d(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)Lcom/yulore/sdk/ivr/model/InputNode;
    .locals 2

    new-instance v0, Lcom/yulore/sdk/ivr/model/InputNode;

    invoke-direct {v0}, Lcom/yulore/sdk/ivr/model/InputNode;-><init>()V

    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/model/InputNode;->a(Ljava/lang/String;)V

    :cond_0
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/model/InputNode;->b(Ljava/lang/String;)V

    :cond_1
    const-string v1, "post_key"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "post_key"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/model/InputNode;->c(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yulore/sdk/ivr/model/a;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/yulore/sdk/ivr/model/a;

    invoke-direct {v1}, Lcom/yulore/sdk/ivr/model/a;-><init>()V

    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yulore/sdk/ivr/model/a;->a(I)V

    const-string v0, "number"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "number"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yulore/sdk/ivr/model/a;->a(Ljava/lang/String;)V

    :cond_2
    const-string v0, "version"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "version"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yulore/sdk/ivr/model/a;->b(Ljava/lang/String;)V

    :cond_3
    const-string v0, "vivr"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "vivr"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulore/sdk/ivr/d/a;->a(Lorg/json/JSONObject;)Lcom/yulore/sdk/ivr/model/b;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v3}, Lcom/yulore/sdk/ivr/model/a;->a(Ljava/util/List;)V

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method
