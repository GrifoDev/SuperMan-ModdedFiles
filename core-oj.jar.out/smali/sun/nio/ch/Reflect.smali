.class Lsun/nio/ch/Reflect;
.super Ljava/lang/Object;
.source "Reflect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Reflect$ReflectionError;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v1, v0}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static get(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lsun/nio/ch/Reflect;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static invoke(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v2

    new-instance v3, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v3, v2}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    new-instance v3, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v3, v0}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v1

    new-instance v3, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v3, v1}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v2, v1}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v2, v0}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static invokeIO(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    const-class v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    throw v2

    :cond_0
    new-instance v2, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v2, v1}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v2, v0}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static lookupConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 5

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Lsun/nio/ch/Reflect;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    new-instance v4, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v4, v3}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v2

    new-instance v4, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v4, v2}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method static lookupField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lsun/nio/ch/Reflect;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v3

    new-instance v4, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v4, v3}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v2

    new-instance v4, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v4, v2}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method static varargs lookupMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Lsun/nio/ch/Reflect;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v3

    new-instance v4, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v4, v3}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v2

    new-instance v4, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v4, v2}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method static set(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v1, v0}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    new-instance v0, Lsun/nio/ch/Reflect$1;

    invoke-direct {v0, p0}, Lsun/nio/ch/Reflect$1;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method static setBoolean(Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v1, v0}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static setInt(Ljava/lang/Object;Ljava/lang/reflect/Field;I)V
    .locals 2

    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lsun/nio/ch/Reflect$ReflectionError;

    invoke-direct {v1, v0}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
