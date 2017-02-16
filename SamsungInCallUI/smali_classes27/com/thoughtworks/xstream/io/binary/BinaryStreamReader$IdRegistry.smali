.class Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;
.super Ljava/lang/Object;
.source "BinaryStreamReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdRegistry"
.end annotation


# instance fields
.field private map:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->map:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$1;

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;-><init>()V

    return-void
.end method


# virtual methods
.method public get(J)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 212
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->map:Ljava/util/Map;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 214
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_0
    return-object v0
.end method

.method public put(JLjava/lang/String;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->map:Ljava/util/Map;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method
