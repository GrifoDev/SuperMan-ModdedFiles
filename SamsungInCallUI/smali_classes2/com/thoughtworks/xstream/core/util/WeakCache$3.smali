.class Lcom/thoughtworks/xstream/core/util/WeakCache$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/WeakCache$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/core/util/WeakCache;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/core/util/WeakCache;

.field final synthetic val$collection:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/core/util/WeakCache;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$3;->this$0:Lcom/thoughtworks/xstream/core/util/WeakCache;

    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$3;->val$collection:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/WeakCache$3;->val$collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method
