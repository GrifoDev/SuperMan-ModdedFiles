.class Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$CGLIBFilteringReflectionProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$CGLIBFilteringReflectionProvider;->visitSerializableFields(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$CGLIBFilteringReflectionProvider;

.field final synthetic val$visitor:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$CGLIBFilteringReflectionProvider;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$CGLIBFilteringReflectionProvider$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$CGLIBFilteringReflectionProvider;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$CGLIBFilteringReflectionProvider$1;->val$visitor:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "CGLIB$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$CGLIBFilteringReflectionProvider$1;->val$visitor:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;->visit(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
