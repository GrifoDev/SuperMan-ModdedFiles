.class public Lsun/reflect/annotation/AnnotationType;
.super Ljava/lang/Object;
.source "AnnotationType.java"


# instance fields
.field private inherited:Z

.field private final memberDefaults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final memberTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final members:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private retention:Ljava/lang/annotation/RetentionPolicy;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v6, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lsun/reflect/annotation/AnnotationType;->memberTypes:Ljava/util/Map;

    .line 54
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 53
    iput-object v7, p0, Lsun/reflect/annotation/AnnotationType;->memberDefaults:Ljava/util/Map;

    .line 60
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lsun/reflect/annotation/AnnotationType;->members:Ljava/util/Map;

    .line 65
    sget-object v7, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    iput-object v7, p0, Lsun/reflect/annotation/AnnotationType;->retention:Ljava/lang/annotation/RetentionPolicy;

    .line 70
    iput-boolean v6, p0, Lsun/reflect/annotation/AnnotationType;->inherited:Z

    .line 96
    invoke-virtual {p1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v7

    if-nez v7, :cond_0

    .line 97
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Not an annotation type"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 100
    :cond_0
    new-instance v7, Lsun/reflect/annotation/AnnotationType$1;

    invoke-direct {v7, p0, p1}, Lsun/reflect/annotation/AnnotationType$1;-><init>(Lsun/reflect/annotation/AnnotationType;Ljava/lang/Class;)V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Method;

    .line 108
    .local v2, "methods":[Ljava/lang/reflect/Method;
    array-length v7, v2

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v1, v2, v6

    .line 109
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-eqz v8, :cond_1

    .line 110
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " has params"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 111
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    .line 113
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, p0, Lsun/reflect/annotation/AnnotationType;->memberTypes:Ljava/util/Map;

    invoke-static {v5}, Lsun/reflect/annotation/AnnotationType;->invocationHandlerReturnType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v8, p0, Lsun/reflect/annotation/AnnotationType;->members:Ljava/util/Map;

    invoke-interface {v8, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "defaultValue":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 118
    iget-object v8, p0, Lsun/reflect/annotation/AnnotationType;->memberDefaults:Ljava/util/Map;

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_2
    iget-object v8, p0, Lsun/reflect/annotation/AnnotationType;->members:Ljava/util/Map;

    invoke-interface {v8, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "defaultValue":Ljava/lang/Object;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {p1, p0}, Ljava/lang/Class;->setAnnotationType(Lsun/reflect/annotation/AnnotationType;)V

    .line 127
    const-class v6, Ljava/lang/annotation/Retention;

    if-eq p1, v6, :cond_4

    .line 128
    const-class v6, Ljava/lang/annotation/Inherited;

    if-eq p1, v6, :cond_4

    .line 129
    const-class v6, Ljava/lang/annotation/Retention;

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Ljava/lang/annotation/Retention;

    .line 130
    .local v4, "ret":Ljava/lang/annotation/Retention;
    if-nez v4, :cond_5

    sget-object v6, Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;

    :goto_1
    iput-object v6, p0, Lsun/reflect/annotation/AnnotationType;->retention:Ljava/lang/annotation/RetentionPolicy;

    .line 131
    const-class v6, Ljava/lang/annotation/Inherited;

    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    iput-boolean v6, p0, Lsun/reflect/annotation/AnnotationType;->inherited:Z

    .line 95
    .end local v4    # "ret":Ljava/lang/annotation/Retention;
    :cond_4
    return-void

    .line 130
    .restart local v4    # "ret":Ljava/lang/annotation/Retention;
    :cond_5
    invoke-interface {v4}, Ljava/lang/annotation/Retention;->value()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v6

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Ljava/lang/Class;)Lsun/reflect/annotation/AnnotationType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lsun/reflect/annotation/AnnotationType;"
        }
    .end annotation

    .prologue
    .local p0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v2, Lsun/reflect/annotation/AnnotationType;

    monitor-enter v2

    .line 81
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotationType()Lsun/reflect/annotation/AnnotationType;

    move-result-object v0

    .line 82
    .local v0, "result":Lsun/reflect/annotation/AnnotationType;
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lsun/reflect/annotation/AnnotationType;

    .end local v0    # "result":Lsun/reflect/annotation/AnnotationType;
    invoke-direct {v0, p0}, Lsun/reflect/annotation/AnnotationType;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v0    # "result":Lsun/reflect/annotation/AnnotationType;
    :cond_0
    monitor-exit v2

    .line 85
    return-object v0

    .end local v0    # "result":Lsun/reflect/annotation/AnnotationType;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static invocationHandlerReturnType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 144
    const-class v0, Ljava/lang/Byte;

    return-object v0

    .line 145
    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 146
    const-class v0, Ljava/lang/Character;

    return-object v0

    .line 147
    :cond_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 148
    const-class v0, Ljava/lang/Double;

    return-object v0

    .line 149
    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 150
    const-class v0, Ljava/lang/Float;

    return-object v0

    .line 151
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 152
    const-class v0, Ljava/lang/Integer;

    return-object v0

    .line 153
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 154
    const-class v0, Ljava/lang/Long;

    return-object v0

    .line 155
    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 156
    const-class v0, Ljava/lang/Short;

    return-object v0

    .line 157
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 158
    const-class v0, Ljava/lang/Boolean;

    return-object v0

    .line 161
    :cond_7
    return-object p0
.end method


# virtual methods
.method public isInherited()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lsun/reflect/annotation/AnnotationType;->inherited:Z

    return v0
.end method

.method public memberDefaults()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationType;->memberDefaults:Ljava/util/Map;

    return-object v0
.end method

.method public memberTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationType;->memberTypes:Ljava/util/Map;

    return-object v0
.end method

.method public members()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationType;->members:Ljava/util/Map;

    return-object v0
.end method

.method public retention()Ljava/lang/annotation/RetentionPolicy;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationType;->retention:Ljava/lang/annotation/RetentionPolicy;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Annotation Type:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "s":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "   Member types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/reflect/annotation/AnnotationType;->memberTypes:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "   Member defaults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/reflect/annotation/AnnotationType;->memberDefaults:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "   Retention policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/reflect/annotation/AnnotationType;->retention:Ljava/lang/annotation/RetentionPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "   Inherited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lsun/reflect/annotation/AnnotationType;->inherited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
