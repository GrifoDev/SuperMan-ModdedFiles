.class public final Ljava/lang/reflect/Field;
.super Ljava/lang/reflect/AccessibleObject;
.source "Field.java"

# interfaces
.implements Ljava/lang/reflect/Member;


# instance fields
.field private accessFlags:I

.field private declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private dexFieldIndex:I

.field private offset:I

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

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

.method private native getSignatureAnnotation()[Ljava/lang/String;
.end method

.method private getSignatureAttribute()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/reflect/Field;->getSignatureAnnotation()[Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "annotation":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 179
    return-object v3

    .line 181
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 183
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static getTypeName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 821
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 823
    move-object v0, p0

    .line 824
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 825
    .local v1, "dimensions":I
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 826
    add-int/lit8 v1, v1, 0x1

    .line 827
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 829
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 830
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 831
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 832
    const-string/jumbo v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 831
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 834
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 835
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 837
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "dimensions":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    return-object v5
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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 197
    if-eqz p1, :cond_1

    instance-of v2, p1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 198
    check-cast v0, Ljava/lang/reflect/Field;

    .line 199
    .local v0, "other":Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 200
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 201
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 199
    :cond_0
    return v1

    .line 203
    .end local v0    # "other":Ljava/lang/reflect/Field;
    :cond_1
    return v1
.end method

.method public native get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
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
    .line 845
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    if-nez p1, :cond_0

    .line 846
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "annotationType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 848
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/reflect/Field;->getAnnotationNative(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public native getBoolean(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native getByte(Ljava/lang/Object;)B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native getChar(Ljava/lang/Object;)C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
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
    .line 74
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getDexFieldIndex()I
    .locals 1

    .prologue
    .line 871
    iget v0, p0, Ljava/lang/reflect/Field;->dexFieldIndex:I

    return v0
.end method

.method public native getDouble(Ljava/lang/Object;)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native getFloat(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 5

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/reflect/Field;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "signatureAttribute":Ljava/lang/String;
    iget-object v4, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 167
    .local v0, "cl":Ljava/lang/ClassLoader;
    new-instance v2, Llibcore/reflect/GenericSignatureParser;

    invoke-direct {v2, v0}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 168
    .local v2, "parser":Llibcore/reflect/GenericSignatureParser;
    iget-object v4, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2, v4, v3}, Llibcore/reflect/GenericSignatureParser;->parseForField(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 169
    iget-object v1, v2, Llibcore/reflect/GenericSignatureParser;->fieldType:Ljava/lang/reflect/Type;

    .line 170
    .local v1, "genericType":Ljava/lang/reflect/Type;
    if-nez v1, :cond_0

    .line 171
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 173
    :cond_0
    return-object v1
.end method

.method public native getInt(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native getLong(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public getModifiers()I
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Ljava/lang/reflect/Field;->accessFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    iget v2, p0, Ljava/lang/reflect/Field;->dexFieldIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 83
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isProxy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 86
    :cond_0
    const-string/jumbo v2, "throws"

    return-object v2

    .line 88
    :cond_1
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 89
    .local v0, "dex":Lcom/android/dex/Dex;
    iget v2, p0, Ljava/lang/reflect/Field;->dexFieldIndex:I

    invoke-virtual {v0, v2}, Lcom/android/dex/Dex;->nameIndexFromFieldIndex(I)I

    move-result v1

    .line 90
    .local v1, "nameIndex":I
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 880
    iget v0, p0, Ljava/lang/reflect/Field;->offset:I

    return v0
.end method

.method public native getShort(Ljava/lang/Object;)S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

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
    .line 853
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-nez p1, :cond_0

    .line 854
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "annotationType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/reflect/Field;->isAnnotationPresentNative(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isEnumConstant()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isSynthetic(I)Z

    move-result v0

    return v0
.end method

.method public native set(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setBoolean(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setByte(Ljava/lang/Object;B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setChar(Ljava/lang/Object;C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setDouble(Ljava/lang/Object;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setFloat(Ljava/lang/Object;F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setInt(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setLong(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setShort(Ljava/lang/Object;S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public toGenericString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 261
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    .line 262
    .local v1, "mod":I
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 263
    .local v0, "fieldType":Ljava/lang/reflect/Type;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_0

    const-string/jumbo v2, ""

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 264
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 265
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "fieldType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 263
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 265
    const-string/jumbo v3, " "

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 266
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 266
    const-string/jumbo v3, "."

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 267
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .restart local v0    # "fieldType":Ljava/lang/reflect/Type;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 234
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 235
    .local v0, "mod":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 236
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 236
    const-string/jumbo v2, " "

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 237
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 237
    const-string/jumbo v2, "."

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
