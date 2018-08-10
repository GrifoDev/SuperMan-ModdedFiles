.class public Lcom/caverock/androidsvg/CSSParser$Selector;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Selector"
.end annotation


# instance fields
.field public selector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$SimpleSelector;",
            ">;"
        }
    .end annotation
.end field

.field public specificity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    return-void
.end method


# virtual methods
.method public add(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    goto :goto_0
.end method

.method public addedAttributeOrPseudo()V
    .locals 1

    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    return-void
.end method

.method public addedElement()V
    .locals 1

    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    return-void
.end method

.method public addedIdAttribute()V
    .locals 1

    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    return-void
.end method

.method public get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
