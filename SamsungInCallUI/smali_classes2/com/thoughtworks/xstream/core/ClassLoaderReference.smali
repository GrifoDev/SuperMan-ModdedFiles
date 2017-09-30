.class public final Lcom/thoughtworks/xstream/core/ClassLoaderReference;
.super Ljava/lang/Object;


# instance fields
.field private transient reference:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->setReference(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->reference:Ljava/lang/ClassLoader;

    return-object p0
.end method


# virtual methods
.method public getReference()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->reference:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public setReference(Ljava/lang/ClassLoader;)V
    .locals 1

    instance-of v0, p1, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->reference:Ljava/lang/ClassLoader;

    return-void
.end method
