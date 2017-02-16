.class public final Ljava/lang/reflect/Constructor;
.super Ljava/lang/reflect/AbstractMethod;
.source "Constructor.java"

# interfaces
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Member;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/reflect/AbstractMethod;",
        "Ljava/lang/reflect/GenericDeclaration;",
        "Ljava/lang/reflect/Member;"
    }
.end annotation


# static fields
.field private static final ORDER_BY_SIGNATURE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final serializationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final serializationCtor:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0, v0}, Ljava/lang/reflect/Constructor;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local p1, "serializationCtor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "serializationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/reflect/AbstractMethod;-><init>()V

    .line 70
    iput-object p1, p0, Ljava/lang/reflect/Constructor;->serializationCtor:Ljava/lang/Class;

    .line 71
    iput-object p2, p0, Ljava/lang/reflect/Constructor;->serializationClass:Ljava/lang/Class;

    .line 69
    return-void
.end method

.method private native getAnnotationNative(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method private native getParameterAnnotationsNative()[[Ljava/lang/annotation/Annotation;
.end method

.method private native isAnnotationPresentNative(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation
.end method

.method private varargs native newInstance0([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method private static native newInstanceFromSerialization(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v6, 0x0

    .line 219
    if-eqz p1, :cond_2

    instance-of v4, p1, Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_2

    move-object v1, p1

    .line 220
    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 221
    .local v1, "other":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 224
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 225
    .local v2, "params1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 226
    .local v3, "params2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v2

    array-length v5, v3

    if-ne v4, v5, :cond_2

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 228
    aget-object v4, v2, v0

    aget-object v5, v3, v0

    if-eq v4, v5, :cond_0

    .line 229
    return v6

    .line 227
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    const/4 v4, 0x1

    return v4

    .line 235
    .end local v0    # "i":I
    .end local v1    # "other":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "params1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "params2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    return v6
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    if-nez p1, :cond_0

    .line 487
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "annotationType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/reflect/Constructor;->getAnnotationNative(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public native getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public native getExceptionTypes()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 209
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .locals 5

    .prologue
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v4, 0x0

    .line 523
    invoke-direct {p0}, Ljava/lang/reflect/Constructor;->getParameterAnnotationsNative()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 524
    .local v0, "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_0

    .line 525
    const-class v1, Ljava/lang/annotation/Annotation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    check-cast v0, [[Ljava/lang/annotation/Annotation;

    .line 527
    .restart local v0    # "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    :cond_0
    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method getSignature()Ljava/lang/String;
    .locals 6

    .prologue
    .line 469
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .local v2, "result":Ljava/lang/StringBuilder;
    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 473
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 474
    .local v0, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Llibcore/reflect/Types;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 476
    .end local v0    # "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-string/jumbo v3, ")V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    move-result-object v0

    .line 125
    .local v0, "info":Ljava/lang/reflect/AbstractMethod$GenericInfo;
    iget-object v1, v0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/TypeVariable;

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-nez p1, :cond_0

    .line 500
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "annotationType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/reflect/Constructor;->isAnnotationPresentNative(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    .prologue
    .line 465
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isSynthetic(I)Z

    move-result v0

    return v0
.end method

.method public isVarArgs()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->serializationClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 430
    invoke-direct {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 432
    :cond_0
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->serializationCtor:Ljava/lang/Class;

    iget-object v1, p0, Ljava/lang/reflect/Constructor;->serializationClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Constructor;->newInstanceFromSerialization(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public serializationCopy(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local p1, "ctor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/reflect/Constructor;

    invoke-direct {v0, p1, p2}, Ljava/lang/reflect/Constructor;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public toGenericString()Ljava/lang/String;
    .locals 14

    .prologue
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v11, 0x0

    .line 328
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v12

    invoke-static {}, Ljava/lang/reflect/Modifier;->constructorModifiers()I

    move-result v13

    and-int v5, v12, v13

    .line 330
    .local v5, "mod":I
    if-eqz v5, :cond_0

    .line 331
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v10

    .line 334
    .local v10, "typeparms":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v12, v10

    if-lez v12, :cond_3

    .line 335
    const/4 v2, 0x1

    .line 336
    .local v2, "first":Z
    const-string/jumbo v12, "<"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    array-length v12, v10

    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v9, v10, v11

    .line 338
    .local v9, "typeparm":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    if-nez v2, :cond_1

    .line 339
    const-string/jumbo v13, ","

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const/4 v2, 0x0

    .line 337
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 345
    .end local v9    # "typeparm":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_2
    const-string/jumbo v11, "> "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .end local v2    # "first":Z
    :cond_3
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string/jumbo v11, "("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 350
    .local v7, "params":[Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v11, v7

    if-ge v3, v11, :cond_7

    .line 351
    aget-object v11, v7, v3

    instance-of v11, v11, Ljava/lang/Class;

    if-eqz v11, :cond_6

    .line 352
    aget-object v11, v7, v3

    check-cast v11, Ljava/lang/Class;

    invoke-static {v11}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, "param":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v11

    if-eqz v11, :cond_4

    array-length v11, v7

    add-int/lit8 v11, v11, -0x1

    if-ne v3, v11, :cond_4

    .line 355
    const-string/jumbo v11, "\\[\\]$"

    const-string/jumbo v12, "..."

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 356
    :cond_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    array-length v11, v7

    add-int/lit8 v11, v11, -0x1

    if-ge v3, v11, :cond_5

    .line 358
    const-string/jumbo v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 353
    .end local v6    # "param":Ljava/lang/String;
    :cond_6
    aget-object v11, v7, v3

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "param":Ljava/lang/String;
    goto :goto_2

    .line 360
    .end local v6    # "param":Ljava/lang/String;
    :cond_7
    const-string/jumbo v11, ")"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 362
    .local v1, "exceptions":[Ljava/lang/reflect/Type;
    array-length v11, v1

    if-lez v11, :cond_a

    .line 363
    const-string/jumbo v11, " throws "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_3
    array-length v11, v1

    if-ge v4, v11, :cond_a

    .line 365
    aget-object v11, v1, v4

    instance-of v11, v11, Ljava/lang/Class;

    if-eqz v11, :cond_9

    .line 366
    aget-object v11, v1, v4

    check-cast v11, Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 365
    :goto_4
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    array-length v11, v1

    add-int/lit8 v11, v11, -0x1

    if-ge v4, v11, :cond_8

    .line 369
    const-string/jumbo v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 367
    :cond_9
    aget-object v11, v1, v4

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 372
    .end local v4    # "k":I
    :cond_a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    return-object v11

    .line 373
    .end local v1    # "exceptions":[Ljava/lang/reflect/Type;
    .end local v3    # "j":I
    .end local v5    # "mod":I
    .end local v7    # "params":[Ljava/lang/reflect/Type;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "typeparms":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 264
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :try_start_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 265
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v7

    invoke-static {}, Ljava/lang/reflect/Modifier;->constructorModifiers()I

    move-result v8

    and-int v4, v7, v8

    .line 266
    .local v4, "mod":I
    if-eqz v4, :cond_0

    .line 267
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 272
    .local v5, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_2

    .line 273
    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_1

    .line 275
    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    :cond_2
    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 279
    .local v1, "exceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v7, v1

    if-lez v7, :cond_4

    .line 280
    const-string/jumbo v7, " throws "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    array-length v7, v1

    if-ge v3, v7, :cond_4

    .line 282
    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_3

    .line 284
    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 287
    .end local v3    # "k":I
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 288
    .end local v1    # "exceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "j":I
    .end local v4    # "mod":I
    .end local v5    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
