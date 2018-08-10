.class public Landroid/content/pm/aasa/RestrictXMLList;
.super Landroid/content/pm/aasa/RestrictList;
.source "RestrictXMLList.java"


# direct methods
.method public constructor <init>(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Landroid/content/pm/aasa/RestrictList;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p1, p0, Landroid/content/pm/aasa/RestrictXMLList;->head:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    iget-object v0, p0, Landroid/content/pm/aasa/RestrictXMLList;->head:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    iput-object v0, p0, Landroid/content/pm/aasa/RestrictXMLList;->cur:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    return-void
.end method


# virtual methods
.method public SetRestrictedInfoToDocument(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Landroid/content/pm/aasa/RestrictList$RestrictNode;)V
    .locals 5

    invoke-virtual {p3}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p3}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-virtual {v0}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "value"

    invoke-virtual {v0}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, v2, v0}, Landroid/content/pm/aasa/RestrictXMLList;->SetRestrictedInfoToDocument(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto :goto_0

    :cond_1
    return-void
.end method
