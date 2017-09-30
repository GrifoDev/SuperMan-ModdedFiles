.class public final Lcom/thoughtworks/xstream/core/util/Primitives;
.super Ljava/lang/Object;


# static fields
.field private static final BOX:Ljava/util/Map;

.field private static final NAMED_PRIMITIVE:Ljava/util/Map;

.field private static final REPRESENTING_CHAR:Ljava/util/Map;

.field private static final UNBOX:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->BOX:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->UNBOX:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->NAMED_PRIMITIVE:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->REPRESENTING_CHAR:Ljava/util/Map;

    const/16 v0, 0x9

    new-array v2, v0, [[Ljava/lang/Class;

    new-array v0, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v1

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v0, v7

    aput-object v0, v2, v1

    new-array v0, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v1

    const-class v3, Ljava/lang/Character;

    aput-object v3, v0, v7

    aput-object v0, v2, v7

    new-array v0, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v1

    const-class v3, Ljava/lang/Short;

    aput-object v3, v0, v7

    aput-object v0, v2, v5

    new-array v0, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v1

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v0, v7

    aput-object v0, v2, v6

    new-array v0, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v1

    const-class v3, Ljava/lang/Long;

    aput-object v3, v0, v7

    aput-object v0, v2, v8

    const/4 v0, 0x5

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const-class v4, Ljava/lang/Float;

    aput-object v4, v3, v7

    aput-object v3, v2, v0

    const/4 v0, 0x6

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const-class v4, Ljava/lang/Double;

    aput-object v4, v3, v7

    aput-object v3, v2, v0

    const/4 v0, 0x7

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const-class v4, Ljava/lang/Boolean;

    aput-object v4, v3, v7

    aput-object v3, v2, v0

    const/16 v0, 0x8

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const-class v4, Ljava/lang/Void;

    aput-object v4, v3, v7

    aput-object v3, v2, v0

    const/16 v0, 0x9

    new-array v3, v0, [Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v4, 0x42

    invoke-direct {v0, v4}, Ljava/lang/Character;-><init>(C)V

    aput-object v0, v3, v1

    new-instance v0, Ljava/lang/Character;

    const/16 v4, 0x43

    invoke-direct {v0, v4}, Ljava/lang/Character;-><init>(C)V

    aput-object v0, v3, v7

    new-instance v0, Ljava/lang/Character;

    const/16 v4, 0x53

    invoke-direct {v0, v4}, Ljava/lang/Character;-><init>(C)V

    aput-object v0, v3, v5

    new-instance v0, Ljava/lang/Character;

    const/16 v4, 0x49

    invoke-direct {v0, v4}, Ljava/lang/Character;-><init>(C)V

    aput-object v0, v3, v6

    new-instance v0, Ljava/lang/Character;

    const/16 v4, 0x4a

    invoke-direct {v0, v4}, Ljava/lang/Character;-><init>(C)V

    aput-object v0, v3, v8

    const/4 v0, 0x5

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x46

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    aput-object v4, v3, v0

    const/4 v0, 0x6

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x44

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    aput-object v4, v3, v0

    const/4 v0, 0x7

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x5a

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const/4 v4, 0x0

    aput-object v4, v3, v0

    move v0, v1

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-object v4, v2, v0

    aget-object v4, v4, v1

    aget-object v5, v2, v0

    aget-object v5, v5, v7

    sget-object v6, Lcom/thoughtworks/xstream/core/util/Primitives;->BOX:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/thoughtworks/xstream/core/util/Primitives;->UNBOX:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/thoughtworks/xstream/core/util/Primitives;->NAMED_PRIMITIVE:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/thoughtworks/xstream/core/util/Primitives;->REPRESENTING_CHAR:Ljava/util/Map;

    aget-object v6, v3, v0

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static box(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->BOX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static isBoxed(Ljava/lang/Class;)Z
    .locals 1

    sget-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->UNBOX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static primitiveType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->NAMED_PRIMITIVE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static representingChar(Ljava/lang/Class;)C
    .locals 1

    sget-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->REPRESENTING_CHAR:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    goto :goto_0
.end method

.method public static unbox(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->UNBOX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method
