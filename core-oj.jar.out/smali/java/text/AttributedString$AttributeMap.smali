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
    .param p1, "this$0"    # Ljava/text/AttributedString;
    .param p2, "runIndex"    # I
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .prologue
    .line 1049
    iput-object p1, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1050
    iput p2, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    .line 1051
    iput p3, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    .line 1052
    iput p4, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    .line 1049
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 11

    .prologue
    .line 1056
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1057
    .local v3, "set":Ljava/util/HashSet;
    iget-object v7, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    monitor-enter v7

    .line 1058
    :try_start_0
    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget-object v6, v6, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v4

    .line 1059
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1060
    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget-object v6, v6, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    aget-object v6, v6, v8

    invoke-virtual {v6, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 1061
    .local v2, "key":Ljava/text/AttributedCharacterIterator$Attribute;
    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget-object v6, v6, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    aget-object v6, v6, v8

    invoke-virtual {v6, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1062
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Ljava/text/Annotation;

    if-eqz v6, :cond_0

    .line 1063
    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    .line 1064
    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    iget v9, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    iget v10, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    .line 1063
    invoke-static {v6, v2, v8, v9, v10}, Ljava/text/AttributedString;->-wrap3(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v5

    .line 1065
    if-nez v5, :cond_0

    .line 1059
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1069
    :cond_0
    new-instance v0, Ljava/text/AttributeEntry;

    invoke-direct {v0, v2, v5}, Ljava/text/AttributeEntry;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 1070
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1057
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v4    # "size":I
    .end local v5    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :cond_1
    monitor-exit v7

    .line 1073
    return-object v3
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1077
    iget-object v0, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    check-cast p1, Ljava/text/AttributedCharacterIterator$Attribute;

    .end local p1    # "key":Ljava/lang/Object;
    iget v1, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    iget v2, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    iget v3, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    invoke-static {v0, p1, v1, v2, v3}, Ljava/text/AttributedString;->-wrap3(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
