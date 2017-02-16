.class public final Lcom/thoughtworks/xstream/core/util/Primitives;
.super Ljava/lang/Object;
.source "Primitives.java"


# static fields
.field private static final BOX:Ljava/util/Map;

.field private static final NAMED_PRIMITIVE:Ljava/util/Map;

.field private static final REPRESENTING_CHAR:Ljava/util/Map;

.field private static final UNBOX:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 23
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/thoughtworks/xstream/core/util/Primitives;->BOX:Ljava/util/Map;

    .line 24
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/thoughtworks/xstream/core/util/Primitives;->UNBOX:Ljava/util/Map;

    .line 25
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/thoughtworks/xstream/core/util/Primitives;->NAMED_PRIMITIVE:Ljava/util/Map;

    .line 26
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/thoughtworks/xstream/core/util/Primitives;->REPRESENTING_CHAR:Ljava/util/Map;

    .line 29
    const/16 v5, 0x9

    new-array v1, v5, [[Ljava/lang/Class;

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/Byte;

    aput-object v6, v5, v9

    aput-object v5, v1, v8

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/Character;

    aput-object v6, v5, v9

    aput-object v5, v1, v9

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/Short;

    aput-object v6, v5, v9

    aput-object v5, v1, v10

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/Integer;

    aput-object v6, v5, v9

    aput-object v5, v1, v11

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/Long;

    aput-object v6, v5, v9

    aput-object v5, v1, v12

    const/4 v5, 0x5

    new-array v6, v10, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/Float;

    aput-object v7, v6, v9

    aput-object v6, v1, v5

    const/4 v5, 0x6

    new-array v6, v10, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/Double;

    aput-object v7, v6, v9

    aput-object v6, v1, v5

    const/4 v5, 0x7

    new-array v6, v10, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/Boolean;

    aput-object v7, v6, v9

    aput-object v6, v1, v5

    const/16 v5, 0x8

    new-array v6, v10, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/Void;

    aput-object v7, v6, v9

    aput-object v6, v1, v5

    .line 40
    .local v1, "boxing":[[Ljava/lang/Class;
    const/16 v5, 0x9

    new-array v4, v5, [Ljava/lang/Character;

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x42

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x43

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    aput-object v5, v4, v9

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x53

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    aput-object v5, v4, v10

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x49

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    aput-object v5, v4, v11

    new-instance v5, Ljava/lang/Character;

    const/16 v6, 0x4a

    invoke-direct {v5, v6}, Ljava/lang/Character;-><init>(C)V

    aput-object v5, v4, v12

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/Character;

    const/16 v7, 0x46

    invoke-direct {v6, v7}, Ljava/lang/Character;-><init>(C)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Ljava/lang/Character;

    const/16 v7, 0x44

    invoke-direct {v6, v7}, Ljava/lang/Character;-><init>(C)V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-instance v6, Ljava/lang/Character;

    const/16 v7, 0x5a

    invoke-direct {v6, v7}, Ljava/lang/Character;-><init>(C)V

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 51
    .local v4, "representingChars":[Ljava/lang/Character;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 52
    aget-object v5, v1, v2

    aget-object v3, v5, v8

    .line 53
    .local v3, "primitiveType":Ljava/lang/Class;
    aget-object v5, v1, v2

    aget-object v0, v5, v9

    .line 54
    .local v0, "boxedType":Ljava/lang/Class;
    sget-object v5, Lcom/thoughtworks/xstream/core/util/Primitives;->BOX:Ljava/util/Map;

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v5, Lcom/thoughtworks/xstream/core/util/Primitives;->UNBOX:Ljava/util/Map;

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v5, Lcom/thoughtworks/xstream/core/util/Primitives;->NAMED_PRIMITIVE:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v5, Lcom/thoughtworks/xstream/core/util/Primitives;->REPRESENTING_CHAR:Ljava/util/Map;

    aget-object v6, v4, v2

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "boxedType":Ljava/lang/Class;
    .end local v3    # "primitiveType":Ljava/lang/Class;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static box(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p0, "type"    # Ljava/lang/Class;

    .prologue
    .line 68
    sget-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->BOX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static isBoxed(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/Class;

    .prologue
    .line 89
    sget-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->UNBOX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static primitiveType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->NAMED_PRIMITIVE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static representingChar(Ljava/lang/Class;)C
    .locals 2
    .param p0, "type"    # Ljava/lang/Class;

    .prologue
    .line 111
    sget-object v1, Lcom/thoughtworks/xstream/core/util/Primitives;->REPRESENTING_CHAR:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 112
    .local v0, "ch":Ljava/lang/Character;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_0
.end method

.method public static unbox(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p0, "type"    # Ljava/lang/Class;

    .prologue
    .line 78
    sget-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->UNBOX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method
