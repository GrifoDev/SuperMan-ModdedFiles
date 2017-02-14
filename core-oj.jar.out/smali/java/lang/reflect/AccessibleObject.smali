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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    invoke-static {v1, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible0(Ljava/lang/reflect/AccessibleObject;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static setAccessible0(Ljava/lang/reflect/AccessibleObject;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    instance-of v2, p0, Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Can not make a java.lang.Class constructor accessible"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-class v2, Ljava/lang/reflect/Method;

    if-ne v1, v2, :cond_1

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Can not make a java.lang.reflect.Method constructor accessible"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-class v2, Ljava/lang/reflect/Field;

    if-ne v1, v2, :cond_2

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Can not make a java.lang.reflect.Field constructor accessible"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iput-boolean p1, p0, Ljava/lang/reflect/AccessibleObject;->override:Z

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

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "All subclasses should override this method"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "All subclasses should override this method"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public isAccessible()Z
    .locals 1

    iget-boolean v0, p0, Ljava/lang/reflect/AccessibleObject;->override:Z

    return v0
.end method

.method public setAccessible(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible0(Ljava/lang/reflect/AccessibleObject;Z)V

    return-void
.end method
