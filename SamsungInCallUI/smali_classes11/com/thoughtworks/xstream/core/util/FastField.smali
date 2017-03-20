.class public final Lcom/thoughtworks/xstream/core/util/FastField;
.super Ljava/lang/Object;
.source "FastField.java"


# instance fields
.field private final declaringClass:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void

    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "definedIn"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/FastField;->name:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 50
    :cond_0
    :goto_0
    return v2

    .line 38
    :cond_1
    if-eqz p1, :cond_0

    .line 41
    instance-of v3, p1, Lcom/thoughtworks/xstream/core/util/FastField;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 42
    check-cast v0, Lcom/thoughtworks/xstream/core/util/FastField;

    .line 43
    .local v0, "field":Lcom/thoughtworks/xstream/core/util/FastField;
    iget-object v3, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 47
    :cond_3
    iget-object v3, p0, Lcom/thoughtworks/xstream/core/util/FastField;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastField;->getDeclaringClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public getDeclaringClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastField;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/FastField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
