.class Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter$1;
.super Ljava/lang/Object;
.source "XStream12FieldKeySorter.java"

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
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    move-object v1, p2

    check-cast v1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getDepth()I

    move-result v3

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getDepth()I

    move-result v4

    sub-int v2, v3, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getOrder()I

    move-result v3

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getOrder()I

    move-result v4

    sub-int v2, v3, v4

    :cond_0
    return v2
.end method
