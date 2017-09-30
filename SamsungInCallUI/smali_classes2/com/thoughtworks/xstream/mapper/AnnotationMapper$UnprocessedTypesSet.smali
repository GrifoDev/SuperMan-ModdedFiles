.class final Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;
.super Ljava/util/LinkedHashSet;


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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "javax."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;->this$0:Lcom/thoughtworks/xstream/mapper/AnnotationMapper;

    invoke-static {v0}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->access$100(Lcom/thoughtworks/xstream/mapper/AnnotationMapper;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v1

    :goto_2
    if-eqz v2, :cond_5

    const-class v0, Lcom/thoughtworks/xstream/annotations/XStreamInclude;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamInclude;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamInclude;->value()[Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v3, v0

    :goto_3
    if-ge v1, v3, :cond_5

    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;->add(Ljava/lang/Class;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-super {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;->add(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
