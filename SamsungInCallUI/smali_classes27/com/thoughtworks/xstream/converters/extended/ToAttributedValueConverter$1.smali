.class Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;
.super Ljava/lang/Object;
.source "ToAttributedValueConverter.java"

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
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    # getter for: Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;
    invoke-static {v8}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$000(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v8

    invoke-interface {v8, p3, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v3, p3, p1}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    # getter for: Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;
    invoke-static {v8}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$000(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v8

    invoke-interface {v8, p3, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$defaultFieldDefinition:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$sourceType:Ljava/lang/Class;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$defaultFieldDefinition:Ljava/util/Map;

    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    # getter for: Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    invoke-static {v9}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$100(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-result-object v9

    invoke-interface {v9, v5, p1}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {p2}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->isEnum(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    # getter for: Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;
    invoke-static {v8}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$300(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v8

    invoke-interface {v8, v10, p2, v10}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_3

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    # getter for: Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;
    invoke-static {v8}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$400(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/converters/ConverterLookup;

    move-result-object v8

    invoke-interface {v8, p2}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v1

    :cond_3
    if-eqz p4, :cond_0

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    # getter for: Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;
    invoke-static {v8}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$500(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Ljava/lang/reflect/Field;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    # invokes: Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->fieldIsEqual(Lcom/thoughtworks/xstream/core/util/FastField;)Z
    invoke-static {v8, v3}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$200(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;Lcom/thoughtworks/xstream/core/util/FastField;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$definingType:[Ljava/lang/Class;

    aput-object p3, v8, v7

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$fieldType:[Ljava/lang/Class;

    aput-object p2, v8, v7

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$realValue:[Ljava/lang/Object;

    aput-object p4, v8, v7

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$tagValue:[Ljava/lang/String;

    const-string v9, ""

    aput-object v9, v8, v7

    :cond_4
    instance-of v8, v1, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz v8, :cond_9

    check-cast v1, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    invoke-interface {v1, p4}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_8

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$tagValue:[Ljava/lang/String;

    aput-object v6, v8, v7

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    # invokes: Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->fieldIsEqual(Lcom/thoughtworks/xstream/core/util/FastField;)Z
    invoke-static {v8, v3}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$200(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;Lcom/thoughtworks/xstream/core/util/FastField;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v7, "Cannot write attribute twice for object"

    invoke-direct {v2, v7}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v7, "alias"

    invoke-virtual {v2, v7, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "type"

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$sourceType:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_6
    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    # getter for: Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;
    invoke-static {v8}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->access$000(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v8

    invoke-interface {v8, p3, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v1

    goto :goto_1

    :cond_7
    move v4, v7

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v7, v0, v6}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    if-nez v4, :cond_0

    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v7, "Cannot write element as attribute"

    invoke-direct {v2, v7}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v7, "alias"

    invoke-virtual {v2, v7, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "type"

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;->val$sourceType:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method
