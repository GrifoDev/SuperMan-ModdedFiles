.class public Lcom/yulore/sdk/ivr/parser/IvrEntityParser;
.super Lcom/yulore/android/common/parser/BaseParser;
.source "IvrEntityParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yulore/android/common/parser/BaseParser",
        "<",
        "Lcom/yulore/sdk/ivr/model/IvrEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yulore/android/common/parser/BaseParser;-><init>()V

    return-void
.end method

.method private parseInput(Lorg/json/JSONObject;)Lcom/yulore/sdk/ivr/model/InputNode;
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/yulore/sdk/ivr/model/InputNode;

    invoke-direct {v0}, Lcom/yulore/sdk/ivr/model/InputNode;-><init>()V

    .line 127
    .local v0, "inputNode":Lcom/yulore/sdk/ivr/model/InputNode;
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/model/InputNode;->setType(Ljava/lang/String;)V

    .line 130
    :cond_0
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/model/InputNode;->setPromptText(Ljava/lang/String;)V

    .line 133
    :cond_1
    const-string v1, "post_key"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    const-string v1, "post_key"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/model/InputNode;->setPostKey(Ljava/lang/String;)V

    .line 137
    :cond_2
    return-object v0
.end method

.method private parseItemMenu(Lorg/json/JSONObject;Lcom/yulore/sdk/ivr/model/ItemNode;)Lcom/yulore/sdk/ivr/model/ItemNode;
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "parent"    # Lcom/yulore/sdk/ivr/model/ItemNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v2, Lcom/yulore/sdk/ivr/model/ItemNode;

    invoke-direct {v2}, Lcom/yulore/sdk/ivr/model/ItemNode;-><init>()V

    .line 144
    .local v2, "itemNode":Lcom/yulore/sdk/ivr/model/ItemNode;
    invoke-virtual {v2, p2}, Lcom/yulore/sdk/ivr/model/ItemNode;->setParent(Lcom/yulore/sdk/ivr/model/ItemNode;)V

    .line 146
    const-string v4, "id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    const-string v4, "id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/yulore/sdk/ivr/model/ItemNode;->setId(Ljava/lang/String;)V

    .line 149
    :cond_0
    const-string v4, "menu_key"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    const-string v4, "menu_key"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/yulore/sdk/ivr/model/ItemNode;->setKey(Ljava/lang/String;)V

    .line 152
    :cond_1
    const-string v4, "text"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 153
    const-string v4, "text"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/yulore/sdk/ivr/model/ItemNode;->setPromptText(Ljava/lang/String;)V

    .line 155
    :cond_2
    const-string v4, "delay"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    const-string v4, "delay"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/yulore/sdk/ivr/model/ItemNode;->setDelay(I)V

    .line 158
    :cond_3
    const-string v4, "action"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 159
    const-string v4, "action"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 176
    sget-object v4, Lcom/yulore/sdk/ivr/ItemNodeType;->UNKOWN_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v2, v4}, Lcom/yulore/sdk/ivr/model/ItemNode;->setType(Lcom/yulore/sdk/ivr/ItemNodeType;)V

    .line 183
    :goto_0
    const-string v4, "inputs"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 184
    const-string v4, "inputs"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 185
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 186
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulore/sdk/ivr/parser/IvrEntityParser;->parseInput(Lorg/json/JSONObject;)Lcom/yulore/sdk/ivr/model/InputNode;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/yulore/sdk/ivr/model/ItemNode;->setInput(Lcom/yulore/sdk/ivr/model/InputNode;)V

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :pswitch_0
    sget-object v4, Lcom/yulore/sdk/ivr/ItemNodeType;->LEAF_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v2, v4}, Lcom/yulore/sdk/ivr/model/ItemNode;->setType(Lcom/yulore/sdk/ivr/ItemNodeType;)V

    goto :goto_0

    .line 164
    :pswitch_1
    sget-object v4, Lcom/yulore/sdk/ivr/ItemNodeType;->NONELEAF_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v2, v4}, Lcom/yulore/sdk/ivr/model/ItemNode;->setType(Lcom/yulore/sdk/ivr/ItemNodeType;)V

    goto :goto_0

    .line 167
    :pswitch_2
    sget-object v4, Lcom/yulore/sdk/ivr/ItemNodeType;->REPEAT_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v2, v4}, Lcom/yulore/sdk/ivr/model/ItemNode;->setType(Lcom/yulore/sdk/ivr/ItemNodeType;)V

    goto :goto_0

    .line 170
    :pswitch_3
    sget-object v4, Lcom/yulore/sdk/ivr/ItemNodeType;->RETURN_UP_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v2, v4}, Lcom/yulore/sdk/ivr/model/ItemNode;->setType(Lcom/yulore/sdk/ivr/ItemNodeType;)V

    goto :goto_0

    .line 173
    :pswitch_4
    sget-object v4, Lcom/yulore/sdk/ivr/ItemNodeType;->RETURN_TOP_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v2, v4}, Lcom/yulore/sdk/ivr/model/ItemNode;->setType(Lcom/yulore/sdk/ivr/ItemNodeType;)V

    goto :goto_0

    .line 180
    :cond_4
    sget-object v4, Lcom/yulore/sdk/ivr/ItemNodeType;->UNKOWN_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v2, v4}, Lcom/yulore/sdk/ivr/model/ItemNode;->setType(Lcom/yulore/sdk/ivr/ItemNodeType;)V

    goto :goto_0

    .line 190
    :cond_5
    const-string v4, "items"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 191
    const-string v4, "items"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 192
    .restart local v0    # "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/yulore/sdk/ivr/model/ItemNode;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 194
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/yulore/sdk/ivr/parser/IvrEntityParser;->parseItemMenu(Lorg/json/JSONObject;Lcom/yulore/sdk/ivr/model/ItemNode;)Lcom/yulore/sdk/ivr/model/ItemNode;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 196
    :cond_6
    invoke-virtual {v2, v3}, Lcom/yulore/sdk/ivr/model/ItemNode;->setSubItems(Ljava/util/List;)V

    .line 199
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/yulore/sdk/ivr/model/ItemNode;>;"
    :cond_7
    return-object v2

    .line 159
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

.method private parseIvrMenu(Lorg/json/JSONObject;)Lcom/yulore/sdk/ivr/model/IvrMenu;
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v2, Lcom/yulore/sdk/ivr/model/IvrMenu;

    invoke-direct {v2}, Lcom/yulore/sdk/ivr/model/IvrMenu;-><init>()V

    .line 65
    .local v2, "ivr":Lcom/yulore/sdk/ivr/model/IvrMenu;
    const-string v5, "op"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    const-string v5, "op"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/yulore/sdk/ivr/model/IvrMenu;->setOp(Ljava/lang/String;)V

    .line 68
    :cond_0
    const-string v5, "code"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    const-string v5, "code"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/yulore/sdk/ivr/model/IvrMenu;->setCode(Ljava/lang/String;)V

    .line 71
    :cond_1
    const-string v5, "starttime"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    const-string v5, "starttime"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/yulore/sdk/ivr/model/IvrMenu;->setStartTime(Ljava/lang/String;)V

    .line 74
    :cond_2
    const-string v5, "endtime"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 75
    const-string v5, "endtime"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/yulore/sdk/ivr/model/IvrMenu;->setEndTime(Ljava/lang/String;)V

    .line 77
    :cond_3
    const-string v5, "mo_area"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 78
    const-string v5, "mo_area"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/yulore/sdk/ivr/model/IvrMenu;->setMoArea(Ljava/lang/String;)V

    .line 80
    :cond_4
    const-string v5, "mt_area"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 81
    const-string v5, "mt_area"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/yulore/sdk/ivr/model/IvrMenu;->setMtArea(Ljava/lang/String;)V

    .line 83
    :cond_5
    const-string v5, "delay"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 84
    const-string v5, "delay"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/yulore/sdk/ivr/model/IvrMenu;->setDelay(I)V

    .line 87
    :cond_6
    const-string v5, "items"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 88
    const-string v5, "items"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 89
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/yulore/sdk/ivr/model/ItemNode;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 91
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/yulore/sdk/ivr/parser/IvrEntityParser;->parseItemMenu(Lorg/json/JSONObject;Lcom/yulore/sdk/ivr/model/ItemNode;)Lcom/yulore/sdk/ivr/model/ItemNode;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_7
    invoke-virtual {v2, v3}, Lcom/yulore/sdk/ivr/model/IvrMenu;->setItems(Ljava/util/List;)V

    .line 96
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/yulore/sdk/ivr/model/ItemNode;>;"
    :cond_8
    const-string v5, "shortcuts"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 97
    const-string v5, "shortcuts"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 98
    .restart local v0    # "array":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/yulore/sdk/ivr/model/ShortcutNode;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 100
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulore/sdk/ivr/parser/IvrEntityParser;->parseShortcut(Lorg/json/JSONObject;)Lcom/yulore/sdk/ivr/model/ShortcutNode;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    :cond_9
    invoke-virtual {v2, v4}, Lcom/yulore/sdk/ivr/model/IvrMenu;->setShortcuts(Ljava/util/List;)V

    .line 105
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/yulore/sdk/ivr/model/ShortcutNode;>;"
    :cond_a
    return-object v2
.end method

.method private parseShortcut(Lorg/json/JSONObject;)Lcom/yulore/sdk/ivr/model/ShortcutNode;
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/yulore/sdk/ivr/model/ShortcutNode;

    invoke-direct {v0}, Lcom/yulore/sdk/ivr/model/ShortcutNode;-><init>()V

    .line 110
    .local v0, "shortcut":Lcom/yulore/sdk/ivr/model/ShortcutNode;
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/model/ShortcutNode;->setId(Ljava/lang/String;)V

    .line 113
    :cond_0
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/model/ShortcutNode;->setPromptText(Ljava/lang/String;)V

    .line 116
    :cond_1
    const-string v1, "key"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const-string v1, "key"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/model/ShortcutNode;->setKey(Ljava/lang/String;)V

    .line 119
    :cond_2
    const-string v1, "path"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    const-string v1, "path"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/model/ShortcutNode;->setPath(Ljava/lang/String;)V

    .line 122
    :cond_3
    return-object v0
.end method


# virtual methods
.method public parseJSON(Ljava/lang/String;)Lcom/yulore/sdk/ivr/model/IvrEntity;
    .locals 6
    .param p1, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-object v2

    .line 29
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .local v3, "ivrJB":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 35
    const-string v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 39
    new-instance v2, Lcom/yulore/sdk/ivr/model/IvrEntity;

    invoke-direct {v2}, Lcom/yulore/sdk/ivr/model/IvrEntity;-><init>()V

    .line 41
    .local v2, "ivrEntity":Lcom/yulore/sdk/ivr/model/IvrEntity;
    const-string v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/yulore/sdk/ivr/model/IvrEntity;->setStatus(I)V

    .line 43
    const-string v5, "number"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 44
    const-string v5, "number"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/yulore/sdk/ivr/model/IvrEntity;->setNumber(Ljava/lang/String;)V

    .line 46
    :cond_2
    const-string v5, "version"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 47
    const-string v5, "version"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/yulore/sdk/ivr/model/IvrEntity;->setVersion(Ljava/lang/String;)V

    .line 50
    :cond_3
    const-string v5, "vivr"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    const-string v5, "vivr"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 52
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/yulore/sdk/ivr/model/IvrMenu;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 54
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulore/sdk/ivr/parser/IvrEntityParser;->parseIvrMenu(Lorg/json/JSONObject;)Lcom/yulore/sdk/ivr/model/IvrMenu;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    :cond_4
    invoke-virtual {v2, v4}, Lcom/yulore/sdk/ivr/model/IvrEntity;->setIvrList(Ljava/util/List;)V

    goto :goto_0
.end method

.method public bridge synthetic parseJSON(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/yulore/sdk/ivr/parser/IvrEntityParser;->parseJSON(Ljava/lang/String;)Lcom/yulore/sdk/ivr/model/IvrEntity;

    move-result-object v0

    return-object v0
.end method
