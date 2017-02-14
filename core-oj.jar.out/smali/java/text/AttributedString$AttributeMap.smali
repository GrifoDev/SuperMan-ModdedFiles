.class final Ljava/text/AttributedString$AttributeMap;
.super Ljava/util/AbstractMap;
.source "AttributedString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/AttributedString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttributeMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/text/AttributedCharacterIterator$Attribute;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field beginIndex:I

.field endIndex:I

.field runIndex:I

.field final synthetic this$0:Ljava/text/AttributedString;


# direct methods
.method constructor <init>(Ljava/text/AttributedString;III)V
    .locals 0

    iput-object p1, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput p2, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    iput p3, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    iput p4, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 11

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v7, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget-object v6, v6, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget-object v6, v6, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    aget-object v6, v6, v8

    invoke-virtual {v6, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget-object v6, v6, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    aget-object v6, v6, v8

    invoke-virtual {v6, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/text/Annotation;

    if-eqz v6, :cond_0

    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    iget v9, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    iget v10, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    invoke-static {v6, v2, v8, v9, v10}, Ljava/text/AttributedString;->-wrap3(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/AttributeEntry;

    invoke-direct {v0, v2, v5}, Ljava/text/AttributeEntry;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_1
    monitor-exit v7

    return-object v3
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    check-cast p1, Ljava/text/AttributedCharacterIterator$Attribute;

    iget v1, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    iget v2, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    iget v3, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    invoke-static {v0, p1, v1, v2, v3}, Ljava/text/AttributedString;->-wrap3(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
