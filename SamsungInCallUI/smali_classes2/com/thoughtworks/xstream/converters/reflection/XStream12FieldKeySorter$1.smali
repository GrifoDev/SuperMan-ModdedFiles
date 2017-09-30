.class Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter;->sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    check-cast p2, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getDepth()I

    move-result v0

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getDepth()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method
