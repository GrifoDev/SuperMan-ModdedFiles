.class public final Ljava/lang/Class;
.super Ljava/lang/Object;
.source "Class.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Type;
.implements Ljava/lang/reflect/AnnotatedElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Class$Caches;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/reflect/GenericDeclaration;",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/reflect/AnnotatedElement;"
    }
.end annotation


# static fields
.field private static final ANNOTATION:I = 0x2000

.field private static final ENUM:I = 0x4000

.field private static final FINALIZABLE:I = -0x80000000

.field private static final SYNTHETIC:I = 0x1000

.field private static final serialVersionUID:J = 0x2c7e5503d9bf9553L


# instance fields
.field private transient accessFlags:I

.field private annotationType:Lsun/reflect/annotation/AnnotationType;

.field private transient classFlags:I

.field private transient classLoader:Ljava/lang/ClassLoader;

.field private transient classSize:I

.field private transient clinitThreadId:I

.field private transient componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient copiedMethodsOffset:S

.field private transient dexCache:Ljava/lang/DexCache;

.field private transient dexCacheStrings:J

.field private transient dexClassDefIndex:I

.field private volatile transient dexTypeIndex:I

.field private transient iFields:J

.field private transient ifTable:[Ljava/lang/Object;

.field private transient methods:J

.field private transient name:Ljava/lang/String;

.field private transient numReferenceInstanceFields:I

.field private transient numReferenceStaticFields:I

.field private transient objectSize:I

.field private transient primitiveType:I

.field private transient referenceInstanceOffsets:I

.field private transient sFields:J

.field private transient status:I

.field private transient superClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private transient verifyError:Ljava/lang/Object;

.field private transient virtualMethodsOffset:S

.field private transient vtable:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 272
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canAccess(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2604
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v0, p1, Ljava/lang/Class;->accessFlags:I

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2605
    const/4 v0, 0x1

    return v0

    .line 2607
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/Class;->inSamePackage(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private canAccessMember(Ljava/lang/Class;I)Z
    .locals 3
    .param p2, "memberModifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "memberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 2611
    if-eq p1, p0, :cond_0

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2612
    :cond_0
    return v2

    .line 2614
    :cond_1
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2615
    const/4 v1, 0x0

    return v1

    .line 2617
    :cond_2
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2618
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    .local v0, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_4

    .line 2619
    if-ne v0, p1, :cond_3

    .line 2620
    return v2

    .line 2618
    :cond_3
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_0

    .line 2624
    .end local v0    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    invoke-direct {p0, p1}, Ljava/lang/Class;->inSamePackage(Ljava/lang/Class;)Z

    move-result v1

    return v1
.end method

.method private cannotCastMsg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2313
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cannot cast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static native classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method private classNameImpliesTopLevel()Z
    .locals 2

    .prologue
    .line 1118
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 326
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "initialize"    # Z
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 395
    if-nez p2, :cond_0

    .line 396
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object p2

    .line 400
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 408
    .local v2, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v2

    .line 401
    .end local v2    # "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 403
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/LinkageError;

    if-eqz v3, :cond_1

    .line 404
    check-cast v0, Ljava/lang/LinkageError;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 406
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method private getConstructor0([Ljava/lang/Class;I)Ljava/lang/reflect/Constructor;
    .locals 5
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 2194
    if-nez p1, :cond_0

    .line 2195
    sget-object p1, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 2197
    :cond_0
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p1, v2

    .line 2198
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 2199
    new-instance v2, Ljava/lang/NoSuchMethodException;

    const-string/jumbo v3, "parameter type is null"

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2197
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2202
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-direct {p0, p1}, Ljava/lang/Class;->getDeclaredConstructorInternal([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 2203
    .local v1, "result":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    if-eqz v1, :cond_4

    if-nez p2, :cond_3

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getAccessFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2206
    :cond_3
    return-object v1

    .line 2204
    :cond_4
    new-instance v2, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<init> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private native getDeclaredConstructorInternal([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end method

.method private native getDeclaredConstructorsInternal(Z)[Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end method

.method private native getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation
.end method

.method private native getEnclosingConstructorNative()Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end method

.method private native getEnclosingMethodNative()Ljava/lang/reflect/Method;
.end method

.method private native getInnerClassFlags(I)I
.end method

.method private native getInnerClassName()Ljava/lang/String;
.end method

.method private getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "recursivePublicMethods"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 1965
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 1966
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "name == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1968
    :cond_0
    if-nez p2, :cond_1

    .line 1969
    sget-object p2, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 1971
    :cond_1
    const/4 v2, 0x0

    array-length v3, p2

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, p2, v2

    .line 1972
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_2

    .line 1973
    new-instance v2, Ljava/lang/NoSuchMethodException;

    const-string/jumbo v3, "parameter type is null"

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1971
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1976
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    if-eqz p3, :cond_5

    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1979
    .local v1, "result":Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v1, :cond_6

    .line 1980
    if-eqz p3, :cond_4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1983
    :cond_4
    return-object v1

    .line 1977
    .end local v1    # "result":Ljava/lang/reflect/Method;
    :cond_5
    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_1

    .line 1981
    .restart local v1    # "result":Ljava/lang/reflect/Method;
    :cond_6
    new-instance v2, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private native getNameNative()Ljava/lang/String;
.end method

.method private native getProxyInterfaces()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method private native getPublicDeclaredFields()[Ljava/lang/reflect/Field;
.end method

.method private native getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;
.end method

.method private getPublicFieldsRecursive(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1359
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 1360
    invoke-direct {v0}, Ljava/lang/Class;->getPublicDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1359
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_0

    .line 1364
    :cond_0
    iget-object v2, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 1365
    .local v2, "iftable":[Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 1366
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1367
    aget-object v3, v2, v1

    check-cast v3, Ljava/lang/Class;

    invoke-direct {v3}, Ljava/lang/Class;->getPublicDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1366
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1357
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 1987
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 1988
    invoke-direct {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1989
    .local v4, "result":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1990
    return-object v4

    .line 1987
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1994
    .end local v4    # "result":Ljava/lang/reflect/Method;
    :cond_1
    iget-object v3, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 1995
    .local v3, "iftable":[Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 1999
    array-length v5, v3

    add-int/lit8 v1, v5, -0x2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 2000
    aget-object v2, v3, v1

    check-cast v2, Ljava/lang/Class;

    .line 2001
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v2, p1, p2}, Ljava/lang/Class;->getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2002
    .restart local v4    # "result":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2003
    return-object v4

    .line 1999
    :cond_2
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 2007
    .end local v1    # "i":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "result":Ljava/lang/reflect/Method;
    :cond_3
    return-object v6
.end method

.method private getPublicMethodsInternal(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const/4 v5, 0x1

    .line 1432
    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1433
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1435
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 1436
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1435
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_0

    .line 1440
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v3, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 1441
    .local v3, "iftable":[Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 1442
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 1443
    aget-object v2, v3, v1

    check-cast v2, Ljava/lang/Class;

    .line 1444
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1442
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1431
    .end local v1    # "i":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method

.method private native getSignatureAnnotation()[Ljava/lang/String;
.end method

.method private getSignatureAttribute()Ljava/lang/String;
    .locals 5

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 2493
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAnnotation()[Ljava/lang/String;

    move-result-object v0

    .line 2494
    .local v0, "annotation":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2495
    return-object v3

    .line 2497
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2498
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 2499
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2498
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2501
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private inSamePackage(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 2628
    iget-object v3, p0, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    iget-object v4, p1, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    if-eq v3, v4, :cond_0

    .line 2629
    return v2

    .line 2631
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v0

    .line 2632
    .local v0, "packageName1":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v1

    .line 2633
    .local v1, "packageName2":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 2634
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 2635
    :cond_2
    if-nez v1, :cond_3

    .line 2636
    return v2

    .line 2638
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private native isDeclaredAnnotationPresent(Ljava/lang/Class;)Z
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

.method private isLocalOrAnonymousClass()Z
    .locals 1

    .prologue
    .line 1252
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resolveName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v6, 0x2e

    .line 2171
    if-nez p1, :cond_0

    .line 2172
    return-object p1

    .line 2174
    :cond_0
    const-string/jumbo v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2175
    move-object v1, p0

    .line 2176
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2177
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 2179
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2180
    .local v0, "baseName":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 2181
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 2182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2183
    const-string/jumbo v4, "/"

    .line 2182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2188
    .end local v0    # "baseName":Ljava/lang/String;
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "index":I
    :cond_2
    :goto_1
    return-object p1

    .line 2186
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method


# virtual methods
.method public asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)",
            "Ljava/lang/Class",
            "<+TU;>;"
        }
    .end annotation

    .prologue
    .line 2337
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2338
    return-object p0

    .line 2340
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2341
    const-string/jumbo v2, " cannot be cast to "

    .line 2340
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2341
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2340
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2307
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2309
    :cond_0
    return-object p1

    .line 2308
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p1}, Ljava/lang/Class;->cannotCastMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public desiredAssertionStatus()Z
    .locals 1

    .prologue
    .line 2242
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessFlags()I
    .locals 1

    .prologue
    .line 2645
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->accessFlags:I

    return v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4
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
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    const/4 v3, 0x0

    .line 2349
    if-nez p1, :cond_0

    .line 2350
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 2352
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2353
    .local v0, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    if-eqz v0, :cond_1

    .line 2354
    return-object v0

    .line 2357
    :cond_1
    const-class v2, Ljava/lang/annotation/Inherited;

    invoke-direct {p1, v2}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2358
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_3

    .line 2359
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2360
    if-eqz v0, :cond_2

    .line 2361
    return-object v0

    .line 2358
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 2366
    .end local v1    # "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-object v3
.end method

.method public getAnnotationType()Lsun/reflect/annotation/AnnotationType;
    .locals 1

    .prologue
    .line 2489
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->annotationType:Lsun/reflect/annotation/AnnotationType;

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 10

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 2407
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2408
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v2, v7, v5

    .line 2409
    .local v2, "declaredAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v3, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2408
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2411
    .end local v2    # "declaredAnnotation":Ljava/lang/annotation/Annotation;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .local v4, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v4, :cond_3

    .line 2412
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_2
    if-ge v5, v8, :cond_2

    aget-object v2, v7, v5

    .line 2413
    .restart local v2    # "declaredAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 2414
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-class v9, Ljava/lang/annotation/Inherited;

    invoke-direct {v0, v9}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2415
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2412
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2411
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v2    # "declaredAnnotation":Ljava/lang/annotation/Annotation;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_1

    .line 2421
    :cond_3
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 2422
    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/annotation/Annotation;

    return-object v5
.end method

.method public getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 2442
    invoke-super {p0, p1}, Ljava/lang/reflect/AnnotatedElement;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2444
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;, "[TT;"
    array-length v2, v0

    if-eqz v2, :cond_0

    .line 2445
    return-object v0

    .line 2455
    :cond_0
    const-class v2, Ljava/lang/annotation/Inherited;

    invoke-direct {p1, v2}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2456
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 2458
    .local v1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 2459
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v2

    return-object v2

    .line 2464
    .end local v1    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/annotation/Annotation;

    return-object v2
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 5

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 1192
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1193
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 1194
    .local v0, "canonicalName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1197
    :cond_0
    return-object v4

    .line 1199
    .end local v0    # "canonicalName":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Ljava/lang/Class;->isLocalOrAnonymousClass()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1200
    return-object v4

    .line 1201
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    .line 1202
    .local v1, "enclosingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_3

    .line 1203
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1205
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 1206
    .local v2, "enclosingName":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 1207
    return-object v4

    .line 1208
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 733
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    return-object v1

    .line 736
    :cond_0
    iget-object v0, p0, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public getClasses()[Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 1291
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1292
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 1293
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 1294
    .local v1, "member":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1295
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1293
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1292
    .end local v1    # "member":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_0

    .line 1299
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    return-object v3
.end method

.method public getComponentType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1009
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    return-object v0
.end method

.method public varargs getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1683
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Class;->getConstructor0([Ljava/lang/Class;I)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getConstructors()[Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 1491
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/Class;->getDeclaredConstructorsInternal(Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public native getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public native getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
.end method

.method public native getDeclaredClasses()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public varargs getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 2050
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/lang/Class;->getConstructor0([Ljava/lang/Class;I)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1864
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Class;->getDeclaredConstructorsInternal(Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public native getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation
.end method

.method public native getDeclaredFields()[Ljava/lang/reflect/Field;
.end method

.method public native getDeclaredFieldsUnchecked(Z)[Ljava/lang/reflect/Field;
.end method

.method public varargs getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 1960
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 1808
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1809
    .local v1, "result":[Ljava/lang/reflect/Method;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1811
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 1812
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 1809
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1814
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-object v1
.end method

.method public native getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;
.end method

.method public native getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public getDex()Lcom/android/dex/Dex;
    .locals 2

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 2521
    iget-object v0, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    if-nez v0, :cond_0

    .line 2522
    return-object v1

    .line 2524
    :cond_0
    iget-object v0, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    invoke-virtual {v0}, Ljava/lang/DexCache;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    return-object v0
.end method

.method public getDexAnnotationDirectoryOffset()I
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 2565
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v1

    .line 2566
    .local v1, "dex":Lcom/android/dex/Dex;
    if-nez v1, :cond_0

    .line 2567
    return v2

    .line 2569
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDexClassDefIndex()I

    move-result v0

    .line 2570
    .local v0, "classDefIndex":I
    if-gez v0, :cond_1

    .line 2571
    return v2

    .line 2573
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex;->annotationDirectoryOffsetFromClassDefIndex(I)I

    move-result v2

    return v2
.end method

.method public getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;
    .locals 2
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "dexStringIndex"    # I

    .prologue
    .line 2532
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    invoke-virtual {v1, p2}, Ljava/lang/DexCache;->getResolvedString(I)Ljava/lang/String;

    move-result-object v0

    .line 2533
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2534
    invoke-virtual {p1}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 2535
    iget-object v1, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    invoke-virtual {v1, p2, v0}, Ljava/lang/DexCache;->setResolvedString(ILjava/lang/String;)V

    .line 2537
    :cond_0
    return-object v0
.end method

.method public getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;
    .locals 4
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "dexTypeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dex/Dex;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2547
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    invoke-virtual {v3, p2}, Ljava/lang/DexCache;->getResolvedType(I)Ljava/lang/Class;

    move-result-object v2

    .line 2548
    .local v2, "resolvedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_0

    .line 2549
    invoke-virtual {p1}, Lcom/android/dex/Dex;->typeIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2550
    .local v1, "descriptorIndex":I
    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;

    move-result-object v0

    .line 2551
    .local v0, "descriptor":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v0}, Llibcore/reflect/InternalNames;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2552
    iget-object v3, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    invoke-virtual {v3, p2, v2}, Ljava/lang/DexCache;->setResolvedType(ILjava/lang/Class;)V

    .line 2554
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "descriptorIndex":I
    :cond_0
    return-object v2
.end method

.method public getDexClassDefIndex()I
    .locals 2

    .prologue
    .line 2664
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->dexClassDefIndex:I

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/lang/Class;->dexClassDefIndex:I

    goto :goto_0
.end method

.method public getDexTypeIndex()I
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const v1, 0xffff

    .line 2583
    iget v0, p0, Ljava/lang/Class;->dexTypeIndex:I

    .line 2584
    .local v0, "typeIndex":I
    if-eq v0, v1, :cond_0

    .line 2585
    return v0

    .line 2587
    :cond_0
    monitor-enter p0

    .line 2588
    :try_start_0
    iget v0, p0, Ljava/lang/Class;->dexTypeIndex:I

    .line 2589
    if-ne v0, v1, :cond_2

    .line 2590
    iget v1, p0, Ljava/lang/Class;->dexClassDefIndex:I

    if-ltz v1, :cond_3

    .line 2591
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v1

    iget v2, p0, Ljava/lang/Class;->dexClassDefIndex:I

    invoke-virtual {v1, v2}, Lcom/android/dex/Dex;->typeIndexFromClassDefIndex(I)I

    move-result v0

    .line 2598
    :cond_1
    :goto_0
    iput v0, p0, Ljava/lang/Class;->dexTypeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 2601
    return v0

    .line 2593
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v1

    invoke-static {p0}, Llibcore/reflect/InternalNames;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dex/Dex;->findTypeIndex(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 2594
    if-gez v0, :cond_1

    .line 2595
    const/4 v0, -0x1

    goto :goto_0

    .line 2587
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public native getEnclosingClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public getEnclosingConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1109
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    const/4 v0, 0x0

    return-object v0

    .line 1112
    :cond_0
    invoke-direct {p0}, Ljava/lang/Class;->getEnclosingConstructorNative()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 1088
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    const/4 v0, 0x0

    return-object v0

    .line 1091
    :cond_0
    invoke-direct {p0}, Ljava/lang/Class;->getEnclosingMethodNative()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getEnumConstants()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 2279
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstantsShared()[Ljava/lang/Object;

    move-result-object v0

    .line 2280
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method getEnumConstantsShared()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 2290
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2291
    :cond_0
    invoke-static {p0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 1544
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 1545
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1547
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/Class;->getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1548
    .local v0, "result":Ljava/lang/reflect/Field;
    if-nez v0, :cond_1

    .line 1549
    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1551
    :cond_1
    return-object v0
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 1348
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicFieldsRecursive(Ljava/util/List;)V

    .line 1350
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Field;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    return-object v1
.end method

.method public getGenericInterfaces()[Ljava/lang/reflect/Type;
    .locals 6

    .prologue
    .line 980
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/lang/Class$Caches;->-get0()Llibcore/util/BasicLruCache;

    move-result-object v4

    monitor-enter v4

    .line 981
    :try_start_0
    invoke-static {}, Ljava/lang/Class$Caches;->-get0()Llibcore/util/BasicLruCache;

    move-result-object v3

    invoke-virtual {v3, p0}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Type;

    .line 982
    .local v2, "result":[Ljava/lang/reflect/Type;
    if-nez v2, :cond_0

    .line 983
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, "annotationSignature":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 985
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 991
    :goto_0
    invoke-static {}, Ljava/lang/Class$Caches;->-get0()Llibcore/util/BasicLruCache;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "annotationSignature":Ljava/lang/String;
    :cond_0
    monitor-exit v4

    .line 994
    array-length v3, v2

    if-nez v3, :cond_2

    .end local v2    # "result":[Ljava/lang/reflect/Type;
    :goto_1
    return-object v2

    .line 987
    .restart local v0    # "annotationSignature":Ljava/lang/String;
    .restart local v2    # "result":[Ljava/lang/reflect/Type;
    :cond_1
    :try_start_1
    new-instance v1, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 988
    .local v1, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v1, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 989
    iget-object v3, v1, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 980
    .end local v0    # "annotationSignature":Ljava/lang/String;
    .end local v1    # "parser":Llibcore/reflect/GenericSignatureParser;
    .end local v2    # "result":[Ljava/lang/reflect/Type;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 994
    .restart local v2    # "result":[Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Type;

    move-object v2, v3

    goto :goto_1
.end method

.method public getGenericSuperclass()Ljava/lang/reflect/Type;
    .locals 4

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 815
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 818
    .local v1, "genericSuperclass":Ljava/lang/reflect/Type;
    if-nez v1, :cond_0

    .line 819
    return-object v3

    .line 822
    :cond_0
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "annotationSignature":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 824
    new-instance v2, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 825
    .local v2, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v2, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 826
    iget-object v1, v2, Llibcore/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    .line 828
    .end local v2    # "parser":Llibcore/reflect/GenericSignatureParser;
    :cond_1
    invoke-static {v1}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    return-object v3
.end method

.method public getInterfaces()[Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 909
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 910
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Cloneable;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/io/Serializable;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    return-object v4

    .line 911
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isProxy()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 912
    invoke-direct {p0}, Ljava/lang/Class;->getProxyInterfaces()[Ljava/lang/Class;

    move-result-object v4

    return-object v4

    .line 914
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 915
    .local v0, "dex":Lcom/android/dex/Dex;
    if-nez v0, :cond_2

    .line 916
    sget-object v4, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    return-object v4

    .line 918
    :cond_2
    iget v4, p0, Ljava/lang/Class;->dexClassDefIndex:I

    invoke-virtual {v0, v4}, Lcom/android/dex/Dex;->interfaceTypeIndicesFromClassDefIndex(I)[S

    move-result-object v2

    .line 919
    .local v2, "interfaces":[S
    array-length v4, v2

    new-array v3, v4, [Ljava/lang/Class;

    .line 920
    .local v3, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 921
    aget-short v4, v2, v1

    invoke-virtual {p0, v0, v4}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    .line 920
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 923
    :cond_3
    return-object v3
.end method

.method public varargs getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 1637
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()[Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 1416
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1417
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicMethodsInternal(Ljava/util/List;)V

    .line 1423
    sget-object v1, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->removeDuplicates(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1424
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    return-object v1
.end method

.method public getModifiers()I
    .locals 4

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const v3, 0xffff

    .line 1046
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1047
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 1048
    .local v0, "componentModifiers":I
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_0

    .line 1049
    and-int/lit16 v0, v0, -0x209

    .line 1051
    :cond_0
    or-int/lit16 v2, v0, 0x410

    return v2

    .line 1054
    .end local v0    # "componentModifiers":I
    :cond_1
    iget v2, p0, Ljava/lang/Class;->accessFlags:I

    and-int/2addr v2, v3

    invoke-direct {p0, v2}, Ljava/lang/Class;->getInnerClassFlags(I)I

    move-result v1

    .line 1055
    .local v1, "modifiers":I
    and-int v2, v1, v3

    return v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    .line 699
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 700
    invoke-direct {p0}, Ljava/lang/Class;->getNameNative()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    .line 701
    :cond_0
    return-object v0
.end method

.method public getPackage()Ljava/lang/Package;
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 847
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 848
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1

    .line 849
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v2

    :cond_0
    return-object v2

    .line 852
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public getPackageName$()Ljava/lang/String;
    .locals 3

    .prologue
    .line 862
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 864
    .local v0, "last":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getProtectionDomain()Ljava/security/ProtectionDomain;
    .locals 1

    .prologue
    .line 2163
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2133
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Ljava/lang/Class;->resolveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2134
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2135
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 2137
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1

    .line 2139
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2089
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Ljava/lang/Class;->resolveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2090
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2091
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 2093
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 2095
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public getSigners()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1067
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1156
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1159
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1160
    const-string/jumbo v2, ""

    return-object v2

    .line 1163
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1169
    :cond_2
    invoke-direct {p0}, Ljava/lang/Class;->getInnerClassName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1172
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1173
    .local v1, "simpleName":Ljava/lang/String;
    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1174
    .local v0, "dot":I
    if-lez v0, :cond_4

    .line 1175
    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1178
    :cond_4
    return-object v1
.end method

.method public getSuperclass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 778
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    const/4 v0, 0x0

    return-object v0

    .line 781
    :cond_0
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    return-object v0
.end method

.method public declared-synchronized getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 755
    :try_start_0
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "annotationSignature":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 757
    sget-object v2, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 759
    :cond_0
    :try_start_1
    new-instance v1, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 760
    .local v1, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v1, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 761
    iget-object v2, v1, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .end local v0    # "annotationSignature":Ljava/lang/String;
    .end local v1    # "parser":Llibcore/reflect/GenericSignatureParser;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isAnnotation()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 632
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 3
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
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v2, 0x1

    .line 2370
    if-nez p1, :cond_0

    .line 2371
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "annotationType == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2374
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2375
    return v2

    .line 2378
    :cond_1
    const-class v1, Ljava/lang/annotation/Inherited;

    invoke-direct {p1, v1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2379
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 2380
    invoke-direct {v0, p1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2381
    return v2

    .line 2379
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 2386
    .end local v0    # "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public native isAnonymousClass()Z
.end method

.method public isArray()Z
    .locals 1

    .prologue
    .line 575
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 527
    if-ne p0, p1, :cond_0

    .line 528
    return v3

    .line 529
    :cond_0
    const-class v4, Ljava/lang/Object;

    if-ne p0, v4, :cond_2

    .line 530
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 531
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 532
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    iget-object v3, p1, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    :cond_3
    return v2

    .line 533
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 535
    iget-object v1, p1, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 536
    .local v1, "iftable":[Ljava/lang/Object;
    if-eqz v1, :cond_6

    .line 537
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_6

    .line 538
    aget-object v4, v1, v0

    if-ne v4, p0, :cond_5

    .line 539
    return v3

    .line 537
    :cond_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 543
    .end local v0    # "i":I
    :cond_6
    return v2

    .line 545
    .end local v1    # "iftable":[Ljava/lang/Object;
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_9

    .line 546
    iget-object p1, p1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    :goto_2
    if-eqz p1, :cond_9

    .line 547
    if-ne p1, p0, :cond_8

    .line 548
    return v3

    .line 546
    :cond_8
    iget-object p1, p1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_2

    .line 552
    :cond_9
    return v2
.end method

.method public isEnum()Z
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 2264
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_0

    .line 2265
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Enum;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2264
    :cond_0
    return v0
.end method

.method public isFinalizable()Z
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 619
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 495
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 496
    const/4 v0, 0x0

    return v0

    .line 498
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isInterface()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 564
    iget v1, p0, Ljava/lang/Class;->accessFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLocalClass()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 1229
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1230
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1229
    :cond_1
    :goto_0
    return v0

    .line 1230
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMemberClass()Z
    .locals 1

    .prologue
    .line 1241
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimitive()Z
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 607
    iget v1, p0, Ljava/lang/Class;->primitiveType:I

    const v2, 0xffff

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isProxy()Z
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 2512
    iget v1, p0, Ljava/lang/Class;->accessFlags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSynthetic()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 643
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public native newInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method public setAnnotationType(Lsun/reflect/annotation/AnnotationType;)V
    .locals 0
    .param p1, "type"    # Lsun/reflect/annotation/AnnotationType;

    .prologue
    .line 2484
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Ljava/lang/Class;->annotationType:Lsun/reflect/annotation/AnnotationType;

    .line 2483
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "interface "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "class "

    goto :goto_0
.end method
