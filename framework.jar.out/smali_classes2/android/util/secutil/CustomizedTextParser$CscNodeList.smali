.class Landroid/util/secutil/CustomizedTextParser$CscNodeList;
.super Ljava/lang/Object;
.source "CustomizedTextParser.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/secutil/CustomizedTextParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CscNodeList"
.end annotation


# instance fields
.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/secutil/CustomizedTextParser$CscNodeList;->children:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/secutil/CustomizedTextParser$CscNodeList;)V
    .locals 0

    invoke-direct {p0}, Landroid/util/secutil/CustomizedTextParser$CscNodeList;-><init>()V

    return-void
.end method


# virtual methods
.method appendChild(Lorg/w3c/dom/Node;)V
    .locals 1

    iget-object v0, p0, Landroid/util/secutil/CustomizedTextParser$CscNodeList;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Landroid/util/secutil/CustomizedTextParser$CscNodeList;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Landroid/util/secutil/CustomizedTextParser$CscNodeList;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method
