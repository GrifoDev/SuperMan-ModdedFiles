.class abstract Lmf/javax/xml/validation/SchemaFactoryFinder$SingleIterator;
.super Ljava/lang/Object;
.source "SchemaFactoryFinder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/javax/xml/validation/SchemaFactoryFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SingleIterator"
.end annotation


# instance fields
.field private seen:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/javax/xml/validation/SchemaFactoryFinder$SingleIterator;->seen:Z

    return-void
.end method

.method synthetic constructor <init>(Lmf/javax/xml/validation/SchemaFactoryFinder$SingleIterator;)V
    .locals 0

    invoke-direct {p0}, Lmf/javax/xml/validation/SchemaFactoryFinder$SingleIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lmf/javax/xml/validation/SchemaFactoryFinder$SingleIterator;->seen:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lmf/javax/xml/validation/SchemaFactoryFinder$SingleIterator;->seen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/javax/xml/validation/SchemaFactoryFinder$SingleIterator;->seen:Z

    invoke-virtual {p0}, Lmf/javax/xml/validation/SchemaFactoryFinder$SingleIterator;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract value()Ljava/lang/Object;
.end method
