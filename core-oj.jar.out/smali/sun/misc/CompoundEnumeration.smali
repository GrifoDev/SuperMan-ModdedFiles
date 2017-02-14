.class public Lsun/misc/CompoundEnumeration;
.super Ljava/lang/Object;
.source "CompoundEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private enums:[Ljava/util/Enumeration;

.field private index:I


# direct methods
.method public constructor <init>([Ljava/util/Enumeration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    iput-object p1, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    return-void
.end method

.method private next()Z
    .locals 2

    :goto_0
    iget v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    iget-object v1, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    iget v1, p0, Lsun/misc/CompoundEnumeration;->index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    iget v1, p0, Lsun/misc/CompoundEnumeration;->index:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    invoke-direct {p0}, Lsun/misc/CompoundEnumeration;->next()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lsun/misc/CompoundEnumeration;->next()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    iget v1, p0, Lsun/misc/CompoundEnumeration;->index:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
