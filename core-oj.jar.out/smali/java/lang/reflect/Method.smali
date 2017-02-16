.class public final Ljava/lang/reflect/Method;
.super Ljava/lang/reflect/AbstractMethod;
.source "Method.java"

# interfaces
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Member;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/reflect/Method$1;
    }
.end annotation


# static fields
.field public static final ORDER_BY_SIGNATURE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/lang/reflect/Method$1;

    invoke-direct {v0}, Ljava/lang/reflect/Method$1;-><init>()V

    sput-object v0, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/reflect/AbstractMethod;-><init>()V

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


# virtual methods
.method equalNameAndParameters(Ljava/lang/reflect/Method;)Z
    .locals 2
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 631
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->equalMethodParameters([Ljava/lang/Class;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 272
    if-eqz p1, :cond_3

    instance-of v4, p1, Ljava/lang/reflect/Method;

    if-eqz v4, :cond_3

    move-object v1, p1

    .line 273
    check-cast v1, Ljava/lang/reflect/Method;

    .line 274
    .local v1, "other":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_3

    .line 275
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_3

    .line 276
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 277
    return v6

    .line 279
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 280
    .local v2, "params1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 281
    .local v3, "params2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v2

    array-length v5, v3

    if-ne v4, v5, :cond_3

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 283
    aget-object v4, v2, v0

    aget-object v5, v3, v0

    if-eq v4, v5, :cond_1

    .line 284
    return v6

    .line 282
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_2
    const/4 v4, 0x1

    return v4

    .line 290
    .end local v0    # "i":I
    .end local v1    # "other":Ljava/lang/reflect/Method;
    .end local v2    # "params1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "params2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
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
    .line 554
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    if-nez p1, :cond_0

    .line 555
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "annotationType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/reflect/Method;->getAnnotationNative(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public native getDefaultValue()Ljava/lang/Object;
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
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericExceptionTypes:Llibcore/reflect/ListOfTypes;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericParameterTypes:Llibcore/reflect/ListOfTypes;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getGenericReturnType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericReturnType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    iget-object v2, p0, Ljava/lang/reflect/Method;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 105
    .local v0, "dex":Lcom/android/dex/Dex;
    iget v2, p0, Ljava/lang/reflect/Method;->dexMethodIndex:I

    invoke-virtual {v0, v2}, Lcom/android/dex/Dex;->nameIndexFromMethodIndex(I)I

    move-result v1

    .line 106
    .local v1, "nameIndex":I
    iget-object v2, p0, Ljava/lang/reflect/Method;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 594
    invoke-direct {p0}, Ljava/lang/reflect/Method;->getParameterAnnotationsNative()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 595
    .local v0, "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_0

    .line 596
    const-class v1, Ljava/lang/annotation/Annotation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    check-cast v0, [[Ljava/lang/annotation/Annotation;

    .line 598
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
    .line 193
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v2, p0, Ljava/lang/reflect/Method;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 148
    .local v0, "dex":Lcom/android/dex/Dex;
    iget v2, p0, Ljava/lang/reflect/Method;->dexMethodIndex:I

    invoke-virtual {v0, v2}, Lcom/android/dex/Dex;->returnTypeIndexFromMethodIndex(I)I

    move-result v1

    .line 150
    .local v1, "returnTypeIndex":I
    iget-object v2, p0, Ljava/lang/reflect/Method;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method

.method getSignature()Ljava/lang/String;
    .locals 6

    .prologue
    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .local v2, "result":Ljava/lang/StringBuilder;
    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 615
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 616
    .local v0, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Llibcore/reflect/Types;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 618
    .end local v0    # "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Llibcore/reflect/Types;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
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
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    move-result-object v0

    .line 137
    .local v0, "info":Ljava/lang/reflect/AbstractMethod$GenericInfo;
    iget-object v1, v0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/TypeVariable;

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public varargs native invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public isBridge()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 521
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 638
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->isDefault()Z

    move-result v0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isSynthetic(I)Z

    move-result v0

    return v0
.end method

.method public isVarArgs()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 534
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toGenericString()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v12, 0x0

    .line 396
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v13

    invoke-static {}, Ljava/lang/reflect/Modifier;->methodModifiers()I

    move-result v14

    and-int v6, v13, v14

    .line 398
    .local v6, "mod":I
    if-eqz v6, :cond_0

    .line 399
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v11

    .line 402
    .local v11, "typeparms":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v13, v11

    if-lez v13, :cond_3

    .line 403
    const/4 v2, 0x1

    .line 404
    .local v2, "first":Z
    const/16 v13, 0x3c

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    array-length v13, v11

    :goto_0
    if-ge v12, v13, :cond_2

    aget-object v10, v11, v12

    .line 406
    .local v10, "typeparm":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    if-nez v2, :cond_1

    .line 407
    const/16 v14, 0x2c

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const/4 v2, 0x0

    .line 405
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 413
    .end local v10    # "typeparm":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_2
    const-string/jumbo v12, "> "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .end local v2    # "first":Z
    :cond_3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 417
    .local v3, "genRetType":Ljava/lang/reflect/Type;
    instance-of v12, v3, Ljava/lang/Class;

    if-eqz v12, :cond_6

    .line 418
    check-cast v3, Ljava/lang/Class;

    .end local v3    # "genRetType":Ljava/lang/reflect/Type;
    invoke-static {v3}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    .line 417
    :goto_1
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 419
    const/16 v13, 0x20

    .line 417
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x28

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 424
    .local v8, "params":[Ljava/lang/reflect/Type;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v12, v8

    if-ge v4, v12, :cond_8

    .line 425
    aget-object v12, v8, v4

    instance-of v12, v12, Ljava/lang/Class;

    if-eqz v12, :cond_7

    .line 426
    aget-object v12, v8, v4

    check-cast v12, Ljava/lang/Class;

    invoke-static {v12}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 428
    .local v7, "param":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v12

    if-eqz v12, :cond_4

    array-length v12, v8

    add-int/lit8 v12, v12, -0x1

    if-ne v4, v12, :cond_4

    .line 429
    const-string/jumbo v12, "\\[\\]$"

    const-string/jumbo v13, "..."

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 430
    :cond_4
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    array-length v12, v8

    add-int/lit8 v12, v12, -0x1

    if-ge v4, v12, :cond_5

    .line 432
    const/16 v12, 0x2c

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 418
    .end local v4    # "j":I
    .end local v7    # "param":Ljava/lang/String;
    .end local v8    # "params":[Ljava/lang/reflect/Type;
    .restart local v3    # "genRetType":Ljava/lang/reflect/Type;
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 427
    .end local v3    # "genRetType":Ljava/lang/reflect/Type;
    .restart local v4    # "j":I
    .restart local v8    # "params":[Ljava/lang/reflect/Type;
    :cond_7
    aget-object v12, v8, v4

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "param":Ljava/lang/String;
    goto :goto_3

    .line 434
    .end local v7    # "param":Ljava/lang/String;
    :cond_8
    const/16 v12, 0x29

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 436
    .local v1, "exceptions":[Ljava/lang/reflect/Type;
    array-length v12, v1

    if-lez v12, :cond_b

    .line 437
    const-string/jumbo v12, " throws "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_4
    array-length v12, v1

    if-ge v5, v12, :cond_b

    .line 439
    aget-object v12, v1, v5

    instance-of v12, v12, Ljava/lang/Class;

    if-eqz v12, :cond_a

    .line 440
    aget-object v12, v1, v5

    check-cast v12, Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 439
    :goto_5
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    array-length v12, v1

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_9

    .line 443
    const/16 v12, 0x2c

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 438
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 441
    :cond_a
    aget-object v12, v1, v5

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    .line 446
    .end local v5    # "k":I
    :cond_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    return-object v12

    .line 447
    .end local v1    # "exceptions":[Ljava/lang/reflect/Type;
    .end local v4    # "j":I
    .end local v6    # "mod":I
    .end local v8    # "params":[Ljava/lang/reflect/Type;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "typeparms":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "<"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 326
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {}, Ljava/lang/reflect/Modifier;->methodModifiers()I

    move-result v8

    and-int v4, v7, v8

    .line 328
    .local v4, "mod":I
    if-eqz v4, :cond_0

    .line 329
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x28

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 335
    .local v5, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_2

    .line 336
    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_1

    .line 338
    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    :cond_2
    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 342
    .local v1, "exceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v7, v1

    if-lez v7, :cond_4

    .line 343
    const-string/jumbo v7, " throws "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    array-length v7, v1

    if-ge v3, v7, :cond_4

    .line 345
    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_3

    .line 347
    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 350
    .end local v3    # "k":I
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 351
    .end local v1    # "exceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "j":I
    .end local v4    # "mod":I
    .end local v5    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 352
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
