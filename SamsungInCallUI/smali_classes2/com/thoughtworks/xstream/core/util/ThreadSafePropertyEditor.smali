.class public Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;
.super Ljava/lang/Object;


# instance fields
.field private final editorType:Ljava/lang/Class;

.field private final pool:Lcom/thoughtworks/xstream/core/util/Pool;


# direct methods
.method public constructor <init>(Ljava/lang/Class;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ljava/beans/PropertyEditor;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/beans/PropertyEditor;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->editorType:Ljava/lang/Class;

    new-instance v0, Lcom/thoughtworks/xstream/core/util/Pool;

    new-instance v1, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;

    invoke-direct {v1, p0}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;-><init>(Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;)V

    invoke-direct {v0, p2, p3, v1}, Lcom/thoughtworks/xstream/core/util/Pool;-><init>(IILcom/thoughtworks/xstream/core/util/Pool$Factory;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->editorType:Ljava/lang/Class;

    return-object v0
.end method

.method private fetchFromPool()Ljava/beans/PropertyEditor;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/Pool;->fetchFromPool()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyEditor;

    return-object v0
.end method


# virtual methods
.method public getAsText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->fetchFromPool()Ljava/beans/PropertyEditor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p1}, Ljava/beans/PropertyEditor;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/beans/PropertyEditor;->getAsText()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v2, v1}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v2, v1}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    throw v0
.end method

.method public setAsText(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->fetchFromPool()Ljava/beans/PropertyEditor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p1}, Ljava/beans/PropertyEditor;->setAsText(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/beans/PropertyEditor;->getValue()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v2, v1}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v2, v1}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    throw v0
.end method
