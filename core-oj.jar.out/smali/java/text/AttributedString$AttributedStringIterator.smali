.class final Ljava/text/AttributedString$AttributedStringIterator;
.super Ljava/lang/Object;
.source "AttributedString.java"

# interfaces
.implements Ljava/text/AttributedCharacterIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/AttributedString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttributedStringIterator"
.end annotation


# instance fields
.field private beginIndex:I

.field private currentIndex:I

.field private currentRunIndex:I

.field private currentRunLimit:I

.field private currentRunStart:I

.field private endIndex:I

.field private relevantAttributes:[Ljava/text/AttributedCharacterIterator$Attribute;

.field final synthetic this$0:Ljava/text/AttributedString;


# direct methods
.method constructor <init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V
    .locals 2
    .param p1, "this$0"    # Ljava/text/AttributedString;
    .param p2, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .prologue
    .line 753
    iput-object p1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    if-ltz p3, :cond_0

    if-le p3, p4, :cond_1

    .line 756
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid substring range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_1
    invoke-virtual {p1}, Ljava/text/AttributedString;->length()I

    move-result v0

    if-gt p4, v0, :cond_0

    .line 759
    iput p3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    .line 760
    iput p4, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    .line 761
    iput p3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    .line 762
    invoke-direct {p0}, Ljava/text/AttributedString$AttributedStringIterator;->updateRunInfo()V

    .line 763
    if-eqz p2, :cond_2

    .line 764
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/text/AttributedCharacterIterator$Attribute;

    iput-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->relevantAttributes:[Ljava/text/AttributedCharacterIterator$Attribute;

    .line 753
    :cond_2
    return-void
.end method

.method private getString()Ljava/text/AttributedString;
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    return-object v0
.end method

.method private internalSetIndex(I)C
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 997
    iput p1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    .line 998
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    if-lt p1, v0, :cond_1

    .line 999
    :cond_0
    invoke-direct {p0}, Ljava/text/AttributedString$AttributedStringIterator;->updateRunInfo()V

    .line 1001
    :cond_1
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ne v0, v1, :cond_2

    .line 1002
    const v0, 0xffff

    return v0

    .line 1004
    :cond_2
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    invoke-static {v0, p1}, Ljava/text/AttributedString;->-wrap2(Ljava/text/AttributedString;I)C

    move-result v0

    return v0
.end method

.method private updateRunInfo()V
    .locals 4

    .prologue
    .line 1010
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ne v1, v2, :cond_0

    .line 1011
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 1012
    const/4 v1, -0x1

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 1009
    :goto_0
    return-void

    .line 1014
    :cond_0
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    monitor-enter v2

    .line 1015
    const/4 v0, -0x1

    .line 1016
    .local v0, "runIndex":I
    :goto_1
    :try_start_0
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v1, v1, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v1, v1, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    if-gt v1, v3, :cond_1

    .line 1017
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1018
    :cond_1
    iput v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 1019
    if-ltz v0, :cond_4

    .line 1020
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v1, v1, Ljava/text/AttributedString;->runStarts:[I

    aget v1, v1, v0

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 1021
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ge v1, v3, :cond_2

    .line 1022
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 1027
    :cond_2
    :goto_2
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v1, v1, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    .line 1028
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v1, v1, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    .line 1029
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le v1, v3, :cond_3

    .line 1030
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_3
    monitor-exit v2

    goto :goto_0

    .line 1025
    :cond_4
    :try_start_1
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1014
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1033
    :cond_5
    :try_start_2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 793
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedString$AttributedStringIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    .local v1, "other":Ljava/text/AttributedString$AttributedStringIterator;
    return-object v1

    .line 796
    .end local v1    # "other":Ljava/text/AttributedString$AttributedStringIterator;
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public current()C
    .locals 2

    .prologue
    .line 816
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ne v0, v1, :cond_0

    .line 817
    const v0, 0xffff

    return v0

    .line 819
    :cond_0
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    invoke-static {v0, v1}, Ljava/text/AttributedString;->-wrap2(Ljava/text/AttributedString;I)C

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 771
    if-ne p0, p1, :cond_0

    .line 772
    return v4

    .line 774
    :cond_0
    instance-of v1, p1, Ljava/text/AttributedString$AttributedStringIterator;

    if-nez v1, :cond_1

    .line 775
    return v3

    :cond_1
    move-object v0, p1

    .line 778
    nop

    nop

    .line 780
    .local v0, "that":Ljava/text/AttributedString$AttributedStringIterator;
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    invoke-direct {v0}, Ljava/text/AttributedString$AttributedStringIterator;->getString()Ljava/text/AttributedString;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 781
    return v3

    .line 782
    :cond_2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v2, v0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iget v2, v0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-eq v1, v2, :cond_4

    .line 783
    :cond_3
    return v3

    .line 782
    :cond_4
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iget v2, v0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ne v1, v2, :cond_3

    .line 784
    return v4
.end method

.method public first()C
    .locals 1

    .prologue
    .line 804
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0
.end method

.method public getAllAttributeKeys()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 954
    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v5, v5, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    if-nez v5, :cond_0

    .line 957
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    return-object v5

    .line 959
    :cond_0
    iget-object v6, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    monitor-enter v6

    .line 962
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 963
    .local v4, "keys":Ljava/util/Set;
    const/4 v1, 0x0

    .line 964
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v5, v5, Ljava/text/AttributedString;->runCount:I

    if-ge v1, v5, :cond_3

    .line 965
    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v5, v5, Ljava/text/AttributedString;->runStarts:[I

    aget v5, v5, v1

    iget v7, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v5, v7, :cond_2

    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v5, v5, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_1

    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v5, v5, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v7, v1, 0x1

    aget v5, v5, v7

    iget v7, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v5, v7, :cond_2

    .line 966
    :cond_1
    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v5, v5, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v0, v5, v1

    .line 967
    .local v0, "currentRunAttributes":Ljava/util/Vector;
    if-eqz v0, :cond_2

    .line 968
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .local v2, "j":I
    move v3, v2

    .line 969
    .end local v2    # "j":I
    .local v3, "j":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    if-lez v3, :cond_2

    .line 970
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_1

    .line 974
    .end local v0    # "currentRunAttributes":Ljava/util/Vector;
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v6

    .line 976
    return-object v4

    .line 959
    .end local v1    # "i":I
    .end local v4    # "keys":Ljava/util/Set;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;
    .locals 4
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 981
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 982
    .local v0, "runIndex":I
    if-gez v0, :cond_0

    .line 983
    const/4 v1, 0x0

    return-object v1

    .line 985
    :cond_0
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    invoke-static {v1, p1, v0, v2, v3}, Ljava/text/AttributedString;->-wrap3(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 944
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 947
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    return-object v0

    .line 944
    :cond_1
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 949
    new-instance v0, Ljava/text/AttributedString$AttributeMap;

    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iget v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/AttributedString$AttributeMap;-><init>(Ljava/text/AttributedString;III)V

    return-object v0
.end method

.method public getBeginIndex()I
    .locals 1

    .prologue
    .line 848
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .prologue
    .line 852
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 856
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    return v0
.end method

.method public getRunLimit()I
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    return v0
.end method

.method public getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .locals 5
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 907
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iget v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 908
    :cond_0
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    return v3

    .line 910
    :cond_1
    invoke-virtual {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v2

    .line 911
    .local v2, "value":Ljava/lang/Object;
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    .line 912
    .local v1, "runLimit":I
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 913
    .local v0, "runIndex":I
    :goto_0
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v1, v3, :cond_3

    .line 914
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, p1, v4}, Ljava/text/AttributedString;->-wrap4(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/text/AttributedString;->-wrap1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 913
    if-eqz v3, :cond_3

    .line 915
    add-int/lit8 v0, v0, 0x1

    .line 916
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, v3, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v3, v3, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v4, v0, 0x1

    aget v1, v3, v4

    goto :goto_0

    :cond_2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    goto :goto_0

    .line 918
    :cond_3
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le v1, v3, :cond_4

    .line 919
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    .line 921
    :cond_4
    return v1
.end method

.method public getRunLimit(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 926
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 927
    :cond_0
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    return v2

    .line 929
    :cond_1
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    .line 930
    .local v1, "runLimit":I
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 931
    .local v0, "runIndex":I
    :goto_0
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v1, v2, :cond_3

    .line 932
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    add-int/lit8 v4, v0, 0x1

    invoke-static {v2, p1, v3, v4}, Ljava/text/AttributedString;->-wrap0(Ljava/text/AttributedString;Ljava/util/Set;II)Z

    move-result v2

    .line 931
    if-eqz v2, :cond_3

    .line 933
    add-int/lit8 v0, v0, 0x1

    .line 934
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, v2, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v3, v0, 0x1

    aget v1, v2, v3

    goto :goto_0

    :cond_2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    goto :goto_0

    .line 936
    :cond_3
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le v1, v2, :cond_4

    .line 937
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    .line 939
    :cond_4
    return v1
.end method

.method public getRunStart()I
    .locals 1

    .prologue
    .line 862
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    return v0
.end method

.method public getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .locals 5
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 866
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    iget v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 867
    :cond_0
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    return v3

    .line 869
    :cond_1
    invoke-virtual {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v2

    .line 870
    .local v2, "value":Ljava/lang/Object;
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 871
    .local v1, "runStart":I
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 872
    .local v0, "runIndex":I
    :goto_0
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v1, v3, :cond_2

    .line 873
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, p1, v4}, Ljava/text/AttributedString;->-wrap4(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/text/AttributedString;->-wrap1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 872
    if-eqz v3, :cond_2

    .line 874
    add-int/lit8 v0, v0, -0x1

    .line 875
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v3, v3, Ljava/text/AttributedString;->runStarts:[I

    aget v1, v3, v0

    goto :goto_0

    .line 877
    :cond_2
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ge v1, v3, :cond_3

    .line 878
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    .line 880
    :cond_3
    return v1
.end method

.method public getRunStart(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 885
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 886
    :cond_0
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    return v2

    .line 888
    :cond_1
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 889
    .local v1, "runStart":I
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 890
    .local v0, "runIndex":I
    :goto_0
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v1, v2, :cond_2

    .line 891
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    add-int/lit8 v4, v0, -0x1

    invoke-static {v2, p1, v3, v4}, Ljava/text/AttributedString;->-wrap0(Ljava/text/AttributedString;Ljava/util/Set;II)Z

    move-result v2

    .line 890
    if-eqz v2, :cond_2

    .line 892
    add-int/lit8 v0, v0, -0x1

    .line 893
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->runStarts:[I

    aget v1, v2, v0

    goto :goto_0

    .line 895
    :cond_2
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ge v1, v2, :cond_3

    .line 896
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    .line 898
    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public last()C
    .locals 2

    .prologue
    .line 808
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ne v0, v1, :cond_0

    .line 809
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0

    .line 811
    :cond_0
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0
.end method

.method public next()C
    .locals 2

    .prologue
    .line 824
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v0, v1, :cond_0

    .line 825
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0

    .line 828
    :cond_0
    const v0, 0xffff

    return v0
.end method

.method public previous()C
    .locals 2

    .prologue
    .line 833
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v0, v1, :cond_0

    .line 834
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0

    .line 837
    :cond_0
    const v0, 0xffff

    return v0
.end method

.method public setIndex(I)C
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 842
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le p1, v0, :cond_1

    .line 843
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_1
    invoke-direct {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0
.end method
