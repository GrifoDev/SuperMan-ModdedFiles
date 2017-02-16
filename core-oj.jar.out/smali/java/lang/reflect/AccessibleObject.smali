.class public Ljava/lang/reflect/AccessibleObject;
.super Ljava/lang/Object;
.source "AccessibleObject.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# instance fields
.field override:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V
    .locals 2
    .param p0, "array"    # [Ljava/lang/reflect/AccessibleObject;
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 89
    aget-object v1, p0, v0

    invoke-static {v1, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible0(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method private static setAccessible0(Ljava/lang/reflect/AccessibleObject;Z)V
    .locals 4
    .param p0, "obj"    # Ljava/lang/reflect/AccessibleObject;
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 126
    instance-of v2, p0, Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p0

    .line 127
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 128
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 129
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 130
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Can not make a java.lang.Class constructor accessible"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_0
    const-class v2, Ljava/lang/reflect/Method;

    if-ne v1, v2, :cond_1

    .line 133
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Can not make a java.lang.reflect.Method constructor accessible"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_1
    const-class v2, Ljava/lang/reflect/Field;

    if-ne v1, v2, :cond_2

    .line 136
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Can not make a java.lang.reflect.Field constructor accessible"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    iput-boolean p1, p0, Ljava/lang/reflect/AccessibleObject;->override:Z

    .line 124
    return-void
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "All subclasses should override this method"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "All subclasses should override this method"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public isAccessible()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Ljava/lang/reflect/AccessibleObject;->override:Z

    return v0
.end method

.method public setAccessible(Z)V
    .locals 0
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible0(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 118
    return-void
.end method
