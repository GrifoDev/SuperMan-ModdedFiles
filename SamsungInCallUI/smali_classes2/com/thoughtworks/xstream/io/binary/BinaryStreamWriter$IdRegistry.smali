.class Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdRegistry"
.end annotation


# instance fields
.field private ids:Ljava/util/Map;

.field private nextId:J

.field final synthetic this$0:Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;


# direct methods
.method private constructor <init>(Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;)V
    .locals 2

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;->this$0:Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;->nextId:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;->ids:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;-><init>(Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;)V

    return-void
.end method


# virtual methods
.method public getId(Ljava/lang/String;)J
    .locals 6

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;->ids:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Long;

    iget-wide v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;->nextId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;->nextId:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;->ids:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;->this$0:Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;

    new-instance v2, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, p1}, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;-><init>(JLjava/lang/String;)V

    invoke-static {v1, v2}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->access$100(Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;Lcom/thoughtworks/xstream/io/binary/Token;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
