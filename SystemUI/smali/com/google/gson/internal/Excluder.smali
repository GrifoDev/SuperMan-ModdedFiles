.class public final Lcom/google/gson/internal/Excluder;
.super Ljava/lang/Object;
.source "Excluder.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/google/gson/internal/Excluder;


# instance fields
.field private deserializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private modifiers:I

.field private requireExpose:Z

.field private serializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private serializeInnerClasses:Z

.field private version:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/internal/Excluder;

    invoke-direct {v0}, Lcom/google/gson/internal/Excluder;-><init>()V

    sput-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/gson/internal/Excluder;->version:D

    const/16 v0, 0x88

    iput v0, p0, Lcom/google/gson/internal/Excluder;->modifiers:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    return-void
.end method

.method private isAnonymousOrLocal(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method private isInnerClass(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isStatic(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isStatic(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidSince(Lcom/google/gson/annotations/Since;)Z
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    invoke-interface {p1}, Lcom/google/gson/annotations/Since;->value()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/gson/internal/Excluder;->version:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    return v2
.end method

.method private isValidUntil(Lcom/google/gson/annotations/Until;)Z
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    invoke-interface {p1}, Lcom/google/gson/annotations/Until;->value()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/gson/internal/Excluder;->version:D

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    return v2
.end method

.method private isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isValidSince(Lcom/google/gson/annotations/Since;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/google/gson/internal/Excluder;->isValidUntil(Lcom/google/gson/annotations/Until;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected clone()Lcom/google/gson/internal/Excluder;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/internal/Excluder;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v6

    const/4 v0, 0x1

    invoke-virtual {p0, v6, v0}, Lcom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v3

    invoke-virtual {p0, v6, v1}, Lcom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v3, :cond_1

    :cond_0
    new-instance v0, Lcom/google/gson/internal/Excluder$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/gson/internal/Excluder$1;-><init>(Lcom/google/gson/internal/Excluder;ZZLcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)V

    return-object v0

    :cond_1
    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method public excludeClass(Ljava/lang/Class;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-wide v4, p0, Lcom/google/gson/internal/Excluder;->version:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    const-class v3, Lcom/google/gson/annotations/Since;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/google/gson/annotations/Since;

    const-class v4, Lcom/google/gson/annotations/Until;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/google/gson/annotations/Until;

    invoke-direct {p0, v3, v4}, Lcom/google/gson/internal/Excluder;->isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    iget-boolean v3, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    if-eqz v3, :cond_4

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_5

    if-nez p2, :cond_6

    iget-object v2, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    return v8

    :cond_3
    return v9

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v9

    :cond_5
    return v9

    :cond_6
    iget-object v2, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    goto :goto_0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/ExclusionStrategy;

    invoke-interface {v1, p1}, Lcom/google/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v9
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget v5, p0, Lcom/google/gson/internal/Excluder;->modifiers:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/2addr v5, v6

    if-nez v5, :cond_3

    iget-wide v6, p0, Lcom/google/gson/internal/Excluder;->version:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v5, v6, v8

    if-eqz v5, :cond_0

    const-class v5, Lcom/google/gson/annotations/Since;

    invoke-virtual {p1, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/google/gson/annotations/Since;

    const-class v6, Lcom/google/gson/annotations/Until;

    invoke-virtual {p1, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/google/gson/annotations/Until;

    invoke-direct {p0, v5, v6}, Lcom/google/gson/internal/Excluder;->isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/google/gson/internal/Excluder;->requireExpose:Z

    if-nez v5, :cond_6

    :goto_0
    iget-boolean v5, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    if-eqz v5, :cond_a

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/gson/internal/Excluder;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_b

    if-nez p2, :cond_c

    iget-object v4, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_2
    return v10

    :cond_3
    return v11

    :cond_4
    return v11

    :cond_5
    return v11

    :cond_6
    const-class v5, Lcom/google/gson/annotations/Expose;

    invoke-virtual {p1, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/gson/annotations/Expose;

    if-nez v1, :cond_8

    :cond_7
    return v11

    :cond_8
    if-nez p2, :cond_9

    invoke-interface {v1}, Lcom/google/gson/annotations/Expose;->deserialize()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_0

    :cond_9
    invoke-interface {v1}, Lcom/google/gson/annotations/Expose;->serialize()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/gson/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v11

    :cond_b
    return v11

    :cond_c
    iget-object v4, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    goto :goto_1

    :cond_d
    new-instance v3, Lcom/google/gson/FieldAttributes;

    invoke-direct {v3, p1}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/ExclusionStrategy;

    invoke-interface {v2, v3}, Lcom/google/gson/ExclusionStrategy;->shouldSkipField(Lcom/google/gson/FieldAttributes;)Z

    move-result v5

    if-eqz v5, :cond_e

    return v11
.end method
