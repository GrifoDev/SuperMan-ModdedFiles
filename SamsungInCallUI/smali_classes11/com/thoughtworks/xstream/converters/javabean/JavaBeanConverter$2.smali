.class Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$2;
.super Ljava/util/HashSet;
.source "JavaBeanConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 116
    invoke-super {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$DuplicatePropertyException;

    check-cast p1, Lcom/thoughtworks/xstream/core/util/FastField;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/thoughtworks/xstream/core/util/FastField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$DuplicatePropertyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    .restart local p1    # "e":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
