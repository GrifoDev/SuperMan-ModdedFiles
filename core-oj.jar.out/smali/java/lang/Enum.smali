.class public abstract Ljava/lang/Enum;
.super Ljava/lang/Object;
.source "Enum.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Enum$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final sharedConstantsCache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;

.field private final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 259
    new-instance v0, Ljava/lang/Enum$1;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/Enum$1;-><init>(I)V

    .line 258
    sput-object v0, Ljava/lang/Enum;->sharedConstantsCache:Llibcore/util/BasicLruCache;

    .line 60
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .prologue
    .line 122
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    .line 124
    iput p2, p0, Ljava/lang/Enum;->ordinal:I

    .line 122
    return-void
.end method

.method public static getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Ljava/lang/Enum;->sharedConstantsCache:Llibcore/util/BasicLruCache;

    invoke-virtual {v0, p0}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "can\'t deserialize enum"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObjectNoData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "can\'t deserialize enum"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    .line 237
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "enumType == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 238
    :cond_0
    if-nez p1, :cond_1

    .line 239
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "Name is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 240
    :cond_1
    invoke-static {p0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v2

    .line 241
    .local v2, "values":[Ljava/lang/Enum;, "[TT;"
    const/4 v0, 0x0

    .line 242
    .local v0, "result":Ljava/lang/Enum;, "TT;"
    if-eqz v2, :cond_3

    .line 243
    const/4 v3, 0x0

    array-length v4, v2

    .end local v0    # "result":Ljava/lang/Enum;, "TT;"
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v1, v2, v3

    .line 244
    .local v1, "value":Ljava/lang/Enum;, "TT;"
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 245
    move-object v0, v1

    .line 243
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "value":Ljava/lang/Enum;, "TT;"
    .restart local v0    # "result":Ljava/lang/Enum;, "TT;"
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not an enum type."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    .end local v0    # "result":Ljava/lang/Enum;, "TT;"
    :cond_4
    if-eqz v0, :cond_5

    .line 253
    return-object v0

    .line 254
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No enum constant "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method protected final clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public final compareTo(Ljava/lang/Enum;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    .local p1, "o":Ljava/lang/Enum;, "TE;"
    move-object v0, p1

    .line 182
    .local v0, "other":Ljava/lang/Enum;
    move-object v1, p0

    .line 183
    .local v1, "self":Ljava/lang/Enum;
    invoke-virtual {p0}, Ljava/lang/Enum;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Enum;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 185
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    throw v2

    .line 186
    :cond_0
    iget v2, p0, Ljava/lang/Enum;->ordinal:I

    iget v3, p1, Ljava/lang/Enum;->ordinal:I

    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 180
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 148
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final finalize()V
    .locals 0

    .prologue
    .line 292
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    return-void
.end method

.method public final getDeclaringClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 203
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 204
    .local v1, "zuper":Ljava/lang/Class;
    const-class v2, Ljava/lang/Enum;

    if-ne v1, v2, :cond_0

    .end local v0    # "clazz":Ljava/lang/Class;
    :goto_0
    return-object v0

    .restart local v0    # "clazz":Ljava/lang/Class;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    iget-object v0, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final ordinal()I
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    iget v0, p0, Ljava/lang/Enum;->ordinal:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    iget-object v0, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    return-object v0
.end method
