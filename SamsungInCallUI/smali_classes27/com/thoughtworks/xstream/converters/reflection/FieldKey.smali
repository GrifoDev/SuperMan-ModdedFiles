.class public Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
.super Ljava/lang/Object;
.source "FieldKey.java"


# instance fields
.field private final declaringClass:Ljava/lang/Class;

.field private final depth:I

.field private final fieldName:Ljava/lang/String;

.field private final order:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "fieldName or declaringClass is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    iput p3, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->order:I

    move-object v0, p2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->depth:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    iget-object v4, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    iget-object v4, v0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    iget v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->depth:I

    return v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->order:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldKey{order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", writer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->depth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", declaringClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fieldName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
