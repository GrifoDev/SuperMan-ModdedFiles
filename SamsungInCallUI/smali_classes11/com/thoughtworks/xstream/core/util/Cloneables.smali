.class public Lcom/thoughtworks/xstream/core/util/Cloneables;
.super Ljava/lang/Object;
.source "Cloneables.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 28
    instance-of v5, p0, Ljava/lang/Cloneable;

    if-eqz v5, :cond_0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 31
    .local v1, "componentType":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_1

    .line 32
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 55
    .end local v1    # "componentType":Ljava/lang/Class;
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 34
    .restart local v1    # "componentType":Ljava/lang/Class;
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 35
    .local v3, "length":I
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "clone":Ljava/lang/Object;
    move v4, v3

    .line 36
    .end local v3    # "length":I
    .local v4, "length":I
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "length":I
    .restart local v3    # "length":I
    if-lez v4, :cond_0

    .line 37
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v4, v3

    .end local v3    # "length":I
    .restart local v4    # "length":I
    goto :goto_1

    .line 44
    .end local v0    # "clone":Ljava/lang/Object;
    .end local v1    # "componentType":Ljava/lang/Class;
    .end local v4    # "length":I
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "clone"

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 45
    .local v0, "clone":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 46
    .end local v0    # "clone":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v6, "Cloneable type has no clone method"

    invoke-direct {v5, v6, v2}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 48
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 49
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v6, "Cannot clone Cloneable type"

    invoke-direct {v5, v6, v2}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 50
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v6, "Exception cloning Cloneable type"

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static cloneIfPossible(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/thoughtworks/xstream/core/util/Cloneables;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "clone":Ljava/lang/Object;
    if-nez v0, :cond_0

    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    move-object p0, v0

    goto :goto_0
.end method
