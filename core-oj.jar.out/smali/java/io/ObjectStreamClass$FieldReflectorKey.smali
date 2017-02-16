.class Ljava/io/ObjectStreamClass$FieldReflectorKey;
.super Ljava/lang/ref/WeakReference;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldReflectorKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final hash:I

.field private final nullClass:Z

.field private final sigs:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;[Ljava/io/ObjectStreamField;Ljava/lang/ref/ReferenceQueue;)V
    .locals 5
    .param p2, "fields"    # [Ljava/io/ObjectStreamField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/io/ObjectStreamField;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 2182
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2183
    if-nez p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->nullClass:Z

    .line 2184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2185
    .local v2, "sbuf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 2186
    aget-object v0, p2, v1

    .line 2187
    .local v0, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2185
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2183
    .end local v0    # "f":Ljava/io/ObjectStreamField;
    .end local v1    # "i":I
    .end local v2    # "sbuf":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2189
    .restart local v1    # "i":I
    .restart local v2    # "sbuf":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->sigs:Ljava/lang/String;

    .line 2190
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->sigs:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->hash:I

    .line 2180
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 2198
    if-ne p1, p0, :cond_0

    .line 2199
    const/4 v2, 0x1

    return v2

    .line 2202
    :cond_0
    instance-of v3, p1, Ljava/io/ObjectStreamClass$FieldReflectorKey;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 2203
    check-cast v0, Ljava/io/ObjectStreamClass$FieldReflectorKey;

    .line 2205
    .local v0, "other":Ljava/io/ObjectStreamClass$FieldReflectorKey;
    iget-boolean v3, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->nullClass:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->nullClass:Z

    if-eqz v3, :cond_1

    .line 2208
    :goto_0
    iget-object v2, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->sigs:Ljava/lang/String;

    iget-object v3, v0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->sigs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2205
    :cond_1
    return v2

    .line 2206
    :cond_2
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$FieldReflectorKey;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .local v1, "referent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 2207
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$FieldReflectorKey;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 2210
    .end local v0    # "other":Ljava/io/ObjectStreamClass$FieldReflectorKey;
    .end local v1    # "referent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2194
    iget v0, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->hash:I

    return v0
.end method
