.class public Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;
.super Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;


# static fields
.field private static final eventHandlerType:Ljava/lang/Class;


# instance fields
.field private type:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "java.beans.EventHandler"

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;->eventHandlerType:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;->type:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;->type:Ljava/lang/Class;

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;->type:Ljava/lang/Class;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;->eventHandlerType:Ljava/lang/Class;

    if-eq p1, v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;->canAccess(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
