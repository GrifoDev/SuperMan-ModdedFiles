.class public Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final xpath:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;-><init>(Ljava/lang/ThreadLocal;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadLocal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->xpath:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private compareInternal(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Ljava/lang/StringBuffer;I)I
    .locals 11

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ltz p4, :cond_0

    const/16 v1, 0x5b

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz v0, :cond_2

    const/16 v1, 0x3f

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v3

    array-length v0, v4

    sub-int/2addr v0, v5

    if-eqz v0, :cond_4

    const-string v1, "::count(@*)"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-gez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_7

    aget-object v6, v3, v1

    aget-object v0, v4, v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    const-string v1, "[@"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "?]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v6}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v6}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    const-string v1, "[@"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChildCount()I

    move-result v3

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChildCount()I

    move-result v0

    sub-int v1, v0, v3

    if-eqz v1, :cond_9

    const-string v0, "::count(*)"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-gez v1, :cond_8

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    const/4 v0, -0x1

    goto :goto_0

    :cond_9
    if-lez v3, :cond_d

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XppDom cannot handle mixed mode at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::text()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_2
    if-ge v1, v3, :cond_11

    invoke-virtual {p1, v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChild(I)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v5

    invoke-virtual {p2, v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChild(I)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v6

    invoke-virtual {v5}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const/4 v7, 0x1

    new-array v7, v7, [I

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    const/4 v7, 0x0

    aget v8, v0, v7

    add-int/lit8 v9, v8, 0x1

    aput v9, v0, v7

    invoke-direct {p0, v5, v6, p3, v8}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->compareInternal(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Ljava/lang/StringBuffer;I)I

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    invoke-virtual {p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_11

    const-string v1, "::text()"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_e
    const/4 v0, -0x1

    goto :goto_3

    :cond_f
    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_3

    :cond_10
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_11
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    check-cast p2, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->compareInternal(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Ljava/lang/StringBuffer;I)I

    move-result v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->xpath:Ljava/lang/ThreadLocal;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->xpath:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->xpath:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method
