.class Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

.field final synthetic val$classAttributeName:Ljava/lang/String;

.field final synthetic val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

.field final synthetic val$source:Ljava/lang/Object;

.field final synthetic val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$source:Ljava/lang/Object;

    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iput-object p4, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$classAttributeName:Ljava/lang/String;

    iput-object p5, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private writeField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iget-object v2, v2, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$source:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-static {v3, v2, v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$classAttributeName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$classAttributeName:Ljava/lang/String;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iget-object v3, v3, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v3, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-interface {v0, p3}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void
.end method


# virtual methods
.method public shouldVisit(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p2, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->writeField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
