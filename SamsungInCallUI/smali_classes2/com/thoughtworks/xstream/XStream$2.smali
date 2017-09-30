.class Lcom/thoughtworks/xstream/XStream$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/converters/ConverterRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultConverterLookup:Lcom/thoughtworks/xstream/core/DefaultConverterLookup;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/XStream$2;->val$defaultConverterLookup:Lcom/thoughtworks/xstream/core/DefaultConverterLookup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$2;->val$defaultConverterLookup:Lcom/thoughtworks/xstream/core/DefaultConverterLookup;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    return-void
.end method
