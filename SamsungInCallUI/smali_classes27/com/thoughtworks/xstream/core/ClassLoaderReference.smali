.class public final Lcom/thoughtworks/xstream/core/ClassLoaderReference;
.super Ljava/lang/Object;
.source "ClassLoaderReference.java"


# instance fields
.field private transient reference:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "reference"    # Ljava/lang/ClassLoader;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->setReference(Ljava/lang/ClassLoader;)V

    .line 28
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->reference:Ljava/lang/ClassLoader;

    .line 42
    return-object p0
.end method


# virtual methods
.method public getReference()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->reference:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public setReference(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "reference"    # Ljava/lang/ClassLoader;

    .prologue
    .line 35
    instance-of v0, p1, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;

    .end local p1    # "reference":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->reference:Ljava/lang/ClassLoader;

    .line 38
    return-void
.end method
