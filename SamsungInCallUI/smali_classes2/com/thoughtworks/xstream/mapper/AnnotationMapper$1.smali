.class Lcom/thoughtworks/xstream/mapper/AnnotationMapper$1;
.super Ljava/util/LinkedHashSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->addParametrizedTypes(Ljava/lang/reflect/Type;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashSet",
        "<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/mapper/AnnotationMapper;

.field final synthetic val$processedTypes:Ljava/util/Set;

.field final synthetic val$types:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/mapper/AnnotationMapper;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$1;->this$0:Lcom/thoughtworks/xstream/mapper/AnnotationMapper;

    iput-object p2, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$1;->val$types:Ljava/util/Set;

    iput-object p3, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$1;->val$processedTypes:Ljava/util/Set;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$1;->add(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/reflect/Type;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$1;->val$types:Ljava/util/Set;

    check-cast p1, Ljava/lang/Class;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$1;->val$processedTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
