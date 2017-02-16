.class Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$CustomPutField;
.super Ljava/io/ObjectOutputStream$PutField;
.source "CustomObjectOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomPutField"
.end annotation


# instance fields
.field private final fields:Ljava/util/Map;

.field final synthetic this$0:Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;


# direct methods
.method private constructor <init>(Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;)V
    .locals 1

    .prologue
    .line 160
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$CustomPutField;->this$0:Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;

    invoke-direct {p0}, Ljava/io/ObjectOutputStream$PutField;-><init>()V

    .line 162
    new-instance v0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$CustomPutField;->fields:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;
    .param p2, "x1"    # Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$1;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$CustomPutField;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$CustomPutField;->fields:Ljava/util/Map;

    return-object v0
.end method

.method public put(Ljava/lang/String;B)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # B

    .prologue
    .line 177
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$CustomPutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public put(Ljava/lang/String;C)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # C

    .prologue
    .line 181
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$CustomPutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public put(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # D

    .prologue
    .line 185
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$CustomPutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # F

    .prologue
    .line 189
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$CustomPutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 193
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$CustomPutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # J

    .prologue
    .line 197
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$CustomPutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$CustomPutField;->fields:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public put(Ljava/lang/String;S)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # S

    .prologue
    .line 201
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p2}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$CustomPutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .prologue
    .line 205
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$CustomPutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    return-void

    .line 205
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public write(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$CustomPutField;->this$0:Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;

    move-result-object v0

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$CustomPutField;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;->writeToStream(Ljava/lang/Object;)V

    .line 170
    return-void
.end method
