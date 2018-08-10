.class Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleSelector"
.end annotation


# instance fields
.field public attribs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$Attrib;",
            ">;"
        }
    .end annotation
.end field

.field public combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

.field public pseudos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object p1, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    :cond_0
    iput-object p1, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    iput-object p2, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$Attrib;

    invoke-direct {v1, p1, p2, p3}, Lcom/caverock/androidsvg/CSSParser$Attrib;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    goto :goto_0
.end method

.method public addPseudo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v5, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v5, Lcom/caverock/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-eq v4, v5, :cond_3

    :goto_0
    iget-object v4, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    if-nez v4, :cond_5

    :cond_0
    iget-object v4, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-nez v4, :cond_6

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "*"

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$Attrib;

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/caverock/androidsvg/CSSParser$1;->$SwitchMap$com$caverock$androidsvg$CSSParser$AttribOp:[I

    iget-object v5, v1, Lcom/caverock/androidsvg/CSSParser$Attrib;->operation:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/CSSParser$AttribOp;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_3
    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_0
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_1
    const-string/jumbo v4, "~="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_2
    const-string/jumbo v4, "|="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
