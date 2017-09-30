.class Lcom/thoughtworks/xstream/XStream$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/converters/ConverterLookup;


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

    iput-object p1, p0, Lcom/thoughtworks/xstream/XStream$1;->val$defaultConverterLookup:Lcom/thoughtworks/xstream/core/DefaultConverterLookup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$1;->val$defaultConverterLookup:Lcom/thoughtworks/xstream/core/DefaultConverterLookup;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    return-object v0
.end method
