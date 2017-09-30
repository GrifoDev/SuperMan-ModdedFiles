.class Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

.field final synthetic val$defaultFieldDefinition:Ljava/util/Map;

.field final synthetic val$definingType:[Ljava/lang/Class;

.field final synthetic val$fieldType:[Ljava/lang/Class;

.field final synthetic val$realValue:[Ljava/lang/Object;

.field final synthetic val$sourceType:Ljava/lang/Class;

.field final synthetic val$tagValue:[Ljava/lang/String;

.field final synthetic val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/String;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$defaultFieldDefinition:Ljava/util/Map;

    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$sourceType:Ljava/lang/Class;

    iput-object p4, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$definingType:[Ljava/lang/Class;

    iput-object p5, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$fieldType:[Ljava/lang/Class;

    iput-object p6, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$realValue:[Ljava/lang/Object;

    iput-object p7, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$tagValue:[Ljava/lang/String;

    iput-object p8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$000(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v1, p3, p1}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$000(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$defaultFieldDefinition:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$sourceType:Ljava/lang/Class;

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$defaultFieldDefinition:Ljava/util/Map;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    invoke-static {v5}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$100(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-result-object v5

    invoke-interface {v5, v0, p1}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {p2}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->isEnum(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$300(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    invoke-interface {v0, v6, p2, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$400(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/converters/ConverterLookup;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    :cond_3
    if-eqz p4, :cond_0

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    invoke-static {v4}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$500(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    invoke-static {v4, v1}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$200(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;Lcom/thoughtworks/xstream/core/util/FastField;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$definingType:[Ljava/lang/Class;

    aput-object p3, v4, v2

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$fieldType:[Ljava/lang/Class;

    aput-object p2, v4, v2

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$realValue:[Ljava/lang/Object;

    aput-object p4, v4, v2

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$tagValue:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v2

    :cond_4
    instance-of v4, v0, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz v4, :cond_9

    check-cast v0, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    invoke-interface {v0, p4}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$tagValue:[Ljava/lang/String;

    aput-object v0, v1, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$200(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;Lcom/thoughtworks/xstream/core/util/FastField;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Cannot write attribute twice for object"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v1, "alias"

    invoke-virtual {v0, v1, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$sourceType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$000(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v1, v3, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    if-nez v1, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Cannot write element as attribute"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v1, "alias"

    invoke-virtual {v0, v1, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$sourceType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
