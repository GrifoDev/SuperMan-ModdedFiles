.class public Lcom/thoughtworks/xstream/converters/basic/StringConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;


# static fields
.field private static final LENGTH_LIMIT:I = 0x26


# instance fields
.field private final cache:Ljava/util/Map;

.field private final lengthLimit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/basic/StringConverter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/core/util/WeakCache;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/WeakCache;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/converters/basic/StringConverter;-><init>(Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const/16 v0, 0x26

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/basic/StringConverter;-><init>(Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;I)V
    .locals 0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->cache:Ljava/util/Map;

    iput p2, p0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->lengthLimit:I

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->cache:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->lengthLimit:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->lengthLimit:I

    if-gt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method
