.class public Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;
.super Lcom/thoughtworks/xstream/core/AbstractTreeMarshallingStrategy;


# static fields
.field public static ABSOLUTE:I

.field public static RELATIVE:I

.field public static SINGLE_NODE:I


# instance fields
.field private final mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->RELATIVE:I

    const/4 v0, 0x1

    sput v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->ABSOLUTE:I

    const/4 v0, 0x2

    sput v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->SINGLE_NODE:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/AbstractTreeMarshallingStrategy;-><init>()V

    iput p1, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->mode:I

    return-void
.end method


# virtual methods
.method protected createMarshallingContext(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/core/TreeMarshaller;
    .locals 2

    new-instance v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshaller;

    iget v1, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->mode:I

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshaller;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;I)V

    return-object v0
.end method

.method protected createUnmarshallingContext(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/core/TreeUnmarshaller;
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/core/ReferenceByXPathUnmarshaller;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-object v0
.end method
