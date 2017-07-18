.class final Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;
.super Ljava/util/LinkedHashSet;
.source "AnnotationMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/mapper/AnnotationMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UnprocessedTypesSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashSet",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/mapper/AnnotationMapper;


# direct methods
.method private constructor <init>(Lcom/thoughtworks/xstream/mapper/AnnotationMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;->this$0:Lcom/thoughtworks/xstream/mapper/AnnotationMapper;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/thoughtworks/xstream/mapper/AnnotationMapper;Lcom/thoughtworks/xstream/mapper/AnnotationMapper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;-><init>(Lcom/thoughtworks/xstream/mapper/AnnotationMapper;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Class;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    return v7

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "java."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "javax."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;->this$0:Lcom/thoughtworks/xstream/mapper/AnnotationMapper;

    invoke-static {v8}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->access$100(Lcom/thoughtworks/xstream/mapper/AnnotationMapper;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_1
    if-eqz v7, :cond_0

    const-class v8, Lcom/thoughtworks/xstream/annotations/XStreamInclude;

    invoke-virtual {p1, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/annotations/XStreamInclude;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/thoughtworks/xstream/annotations/XStreamInclude;->value()[Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v0, v4

    array-length v5, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;->add(Ljava/lang/Class;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-super {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;->add(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
