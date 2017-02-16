.class public final Landroid/renderscript/ScriptGroup$Builder;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mKernelCount:I

.field private mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/renderscript/ScriptGroup$ConnectLine;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/renderscript/ScriptGroup$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    .line 567
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 566
    return-void
.end method

.method private findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;
    .locals 4
    .param p1, "k"    # Landroid/renderscript/Script$KernelID;

    .prologue
    .line 649
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 650
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$Node;

    .line 651
    .local v2, "n":Landroid/renderscript/ScriptGroup$Node;
    const/4 v1, 0x0

    .local v1, "ct2":I
    :goto_1
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 652
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 653
    return-object v2

    .line 651
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 649
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    .end local v1    # "ct2":I
    .end local v2    # "n":Landroid/renderscript/ScriptGroup$Node;
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method private findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;
    .locals 2
    .param p1, "s"    # Landroid/renderscript/Script;

    .prologue
    .line 640
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 641
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$Node;->mScript:Landroid/renderscript/Script;

    if-ne p1, v1, :cond_0

    .line 642
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    return-object v1

    .line 640
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private mergeDAGs(II)V
    .locals 2
    .param p1, "valueUsed"    # I
    .param p2, "valueKilled"    # I

    .prologue
    .line 593
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 594
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    iget v1, v1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-ne v1, p2, :cond_0

    .line 595
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    iput p1, v1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 593
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 592
    :cond_1
    return-void
.end method

.method private validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V
    .locals 5
    .param p1, "target"    # Landroid/renderscript/ScriptGroup$Node;
    .param p2, "original"    # Landroid/renderscript/ScriptGroup$Node;

    .prologue
    .line 573
    const/4 v1, 0x0

    .local v1, "ct":I
    :goto_0
    iget-object v3, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 574
    iget-object v3, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ScriptGroup$ConnectLine;

    .line 575
    .local v0, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    if-eqz v3, :cond_1

    .line 576
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    iget-object v3, v3, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 577
    .local v2, "tn":Landroid/renderscript/ScriptGroup$Node;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 578
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "Loops in group not allowed."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 580
    :cond_0
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    .line 582
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_1
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    if-eqz v3, :cond_3

    .line 583
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    iget-object v3, v3, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 584
    .restart local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 585
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "Loops in group not allowed."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 587
    :cond_2
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    .line 573
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    .end local v0    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    :cond_4
    return-void
.end method

.method private validateDAG()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 621
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 622
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/renderscript/ScriptGroup$Node;

    .line 623
    .local v3, "n":Landroid/renderscript/ScriptGroup$Node;
    iget-object v4, v3, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 624
    iget-object v4, v3, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 625
    const-string/jumbo v2, "Groups cannot contain unconnected scripts"

    .line 626
    .local v2, "msg":Ljava/lang/String;
    new-instance v4, Landroid/renderscript/RSInvalidStateException;

    invoke-direct {v4, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 628
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v3, v4}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    .line 621
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    .end local v3    # "n":Landroid/renderscript/ScriptGroup$Node;
    :cond_2
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/renderscript/ScriptGroup$Node;

    iget v1, v4, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 632
    .local v1, "dagNumber":I
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 633
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/renderscript/ScriptGroup$Node;

    iget v4, v4, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-eq v4, v1, :cond_3

    .line 634
    new-instance v4, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v5, "Multiple DAGs in group not allowed."

    invoke-direct {v4, v5}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 632
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 620
    :cond_4
    return-void
.end method

.method private validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V
    .locals 4
    .param p1, "n"    # Landroid/renderscript/ScriptGroup$Node;
    .param p2, "dagNumber"    # I

    .prologue
    .line 601
    iget v3, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-eqz v3, :cond_0

    iget v3, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-eq v3, p2, :cond_0

    .line 602
    iget v3, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    invoke-direct {p0, v3, p2}, Landroid/renderscript/ScriptGroup$Builder;->mergeDAGs(II)V

    .line 603
    return-void

    .line 606
    :cond_0
    iput p2, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 607
    const/4 v1, 0x0

    .local v1, "ct":I
    :goto_0
    iget-object v3, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 608
    iget-object v3, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ScriptGroup$ConnectLine;

    .line 609
    .local v0, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    if-eqz v3, :cond_1

    .line 610
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    iget-object v3, v3, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 611
    .local v2, "tn":Landroid/renderscript/ScriptGroup$Node;
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    .line 613
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_1
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    if-eqz v3, :cond_2

    .line 614
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    iget-object v3, v3, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 615
    .restart local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    .line 607
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    .end local v0    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    :cond_3
    return-void
.end method


# virtual methods
.method public addConnection(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)Landroid/renderscript/ScriptGroup$Builder;
    .locals 5
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "from"    # Landroid/renderscript/Script$KernelID;
    .param p3, "to"    # Landroid/renderscript/Script$FieldID;

    .prologue
    .line 705
    invoke-direct {p0, p2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v1

    .line 706
    .local v1, "nf":Landroid/renderscript/ScriptGroup$Node;
    if-nez v1, :cond_0

    .line 707
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "From script not found."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 710
    :cond_0
    iget-object v3, p3, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 711
    .local v2, "nt":Landroid/renderscript/ScriptGroup$Node;
    if-nez v2, :cond_1

    .line 712
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "To script not found."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 715
    :cond_1
    new-instance v0, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v0, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)V

    .line 716
    .local v0, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    new-instance v4, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v4, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v3, v1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    invoke-direct {p0, v1, v1}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    .line 722
    return-object p0
.end method

.method public addConnection(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Builder;
    .locals 5
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "from"    # Landroid/renderscript/Script$KernelID;
    .param p3, "to"    # Landroid/renderscript/Script$KernelID;

    .prologue
    .line 740
    invoke-direct {p0, p2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v1

    .line 741
    .local v1, "nf":Landroid/renderscript/ScriptGroup$Node;
    if-nez v1, :cond_0

    .line 742
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "From script not found."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 745
    :cond_0
    invoke-direct {p0, p3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 746
    .local v2, "nt":Landroid/renderscript/ScriptGroup$Node;
    if-nez v2, :cond_1

    .line 747
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "To script not found."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 750
    :cond_1
    new-instance v0, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v0, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)V

    .line 751
    .local v0, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    new-instance v4, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v4, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    iget-object v3, v1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    invoke-direct {p0, v1, v1}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    .line 757
    return-object p0
.end method

.method public addKernel(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Builder;
    .locals 3
    .param p1, "k"    # Landroid/renderscript/Script$KernelID;

    .prologue
    .line 669
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    .line 671
    const-string/jumbo v2, "Kernels may not be added once connections exist."

    .line 670
    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 675
    :cond_0
    invoke-direct {p0, p1}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 676
    return-object p0

    .line 679
    :cond_1
    iget v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    .line 680
    iget-object v1, p1, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v1}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v0

    .line 681
    .local v0, "n":Landroid/renderscript/ScriptGroup$Node;
    if-nez v0, :cond_2

    .line 683
    new-instance v0, Landroid/renderscript/ScriptGroup$Node;

    .end local v0    # "n":Landroid/renderscript/ScriptGroup$Node;
    iget-object v1, p1, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {v0, v1}, Landroid/renderscript/ScriptGroup$Node;-><init>(Landroid/renderscript/Script;)V

    .line 684
    .restart local v0    # "n":Landroid/renderscript/ScriptGroup$Node;
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_2
    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    return-object p0
.end method

.method public create()Landroid/renderscript/ScriptGroup;
    .locals 26

    .prologue
    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 771
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v23, "Empty script groups are not allowed"

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 775
    :cond_0
    const/4 v9, 0x0

    .local v9, "ct":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_1

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$Node;

    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v2, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 775
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 778
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/ScriptGroup$Builder;->validateDAG()V

    .line 780
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .local v18, "inputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/renderscript/ScriptGroup$IO;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v21, "outputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/renderscript/ScriptGroup$IO;>;"
    move-object/from16 v0, p0

    iget v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    new-array v3, v2, [J

    .line 784
    .local v3, "kernels":[J
    const/16 v16, 0x0

    .line 785
    .local v16, "idx":I
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_9

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/renderscript/ScriptGroup$Node;

    .line 787
    .local v20, "n":Landroid/renderscript/ScriptGroup$Node;
    const/4 v10, 0x0

    .local v10, "ct2":I
    :goto_2
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_8

    .line 788
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/renderscript/Script$KernelID;

    .line 789
    .local v19, "kid":Landroid/renderscript/Script$KernelID;
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "idx":I
    .local v17, "idx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    aput-wide v24, v3, v16

    .line 791
    const/4 v12, 0x0

    .line 792
    .local v12, "hasInput":Z
    const/4 v13, 0x0

    .line 793
    .local v13, "hasOutput":Z
    const/4 v11, 0x0

    .local v11, "ct3":I
    :goto_3
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_3

    .line 794
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$ConnectLine;

    iget-object v2, v2, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    move-object/from16 v0, v19

    if-ne v2, v0, :cond_2

    .line 795
    const/4 v12, 0x1

    .line 793
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 798
    :cond_3
    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_5

    .line 799
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$ConnectLine;

    iget-object v2, v2, Landroid/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/renderscript/Script$KernelID;

    move-object/from16 v0, v19

    if-ne v2, v0, :cond_4

    .line 800
    const/4 v13, 0x1

    .line 798
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 803
    :cond_5
    if-nez v12, :cond_6

    .line 804
    new-instance v2, Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/renderscript/ScriptGroup$IO;-><init>(Landroid/renderscript/Script$KernelID;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_6
    if-nez v13, :cond_7

    .line 807
    new-instance v2, Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/renderscript/ScriptGroup$IO;-><init>(Landroid/renderscript/Script$KernelID;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    :cond_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v17

    .end local v17    # "idx":I
    .restart local v16    # "idx":I
    goto/16 :goto_2

    .line 785
    .end local v11    # "ct3":I
    .end local v12    # "hasInput":Z
    .end local v13    # "hasOutput":Z
    .end local v19    # "kid":Landroid/renderscript/Script$KernelID;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 812
    .end local v10    # "ct2":I
    .end local v20    # "n":Landroid/renderscript/ScriptGroup$Node;
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    move/from16 v0, v16

    if-eq v0, v2, :cond_a

    .line 813
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v23, "Count mismatch, should not happen."

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 816
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v4, v2, [J

    .line 817
    .local v4, "src":[J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v5, v2, [J

    .line 818
    .local v5, "dstk":[J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v6, v2, [J

    .line 819
    .local v6, "dstf":[J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v7, v2, [J

    .line 821
    .local v7, "types":[J
    const/4 v9, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_d

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/renderscript/ScriptGroup$ConnectLine;

    .line 823
    .local v8, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/renderscript/Script$KernelID;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    aput-wide v24, v4, v9

    .line 824
    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    if-eqz v2, :cond_b

    .line 825
    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    aput-wide v24, v5, v9

    .line 827
    :cond_b
    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    if-eqz v2, :cond_c

    .line 828
    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    aput-wide v24, v6, v9

    .line 830
    :cond_c
    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroid/renderscript/Type;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    aput-wide v24, v7, v9

    .line 821
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 833
    .end local v8    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/RenderScript;->nScriptGroupCreate([J[J[J[J[J)J

    move-result-wide v14

    .line 834
    .local v14, "id":J
    const-wide/16 v24, 0x0

    cmp-long v2, v14, v24

    if-nez v2, :cond_e

    .line 835
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v23, "Object creation error, should not happen."

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 838
    :cond_e
    new-instance v22, Landroid/renderscript/ScriptGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, v22

    invoke-direct {v0, v14, v15, v2}, Landroid/renderscript/ScriptGroup;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 839
    .local v22, "sg":Landroid/renderscript/ScriptGroup;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v0, v22

    iput-object v2, v0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    .line 840
    const/4 v9, 0x0

    :goto_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_f

    .line 841
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$IO;

    aput-object v2, v23, v9

    .line 840
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 844
    :cond_f
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v0, v22

    iput-object v2, v0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    .line 845
    const/4 v9, 0x0

    :goto_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_10

    .line 846
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$IO;

    aput-object v2, v23, v9

    .line 845
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 849
    :cond_10
    return-object v22
.end method
