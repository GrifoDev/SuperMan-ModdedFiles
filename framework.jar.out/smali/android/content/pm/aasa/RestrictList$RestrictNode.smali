.class public Landroid/content/pm/aasa/RestrictList$RestrictNode;
.super Ljava/lang/Object;
.source "RestrictList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/aasa/RestrictList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestrictNode"
.end annotation


# instance fields
.field private child:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/aasa/RestrictList$RestrictNode;",
            ">;"
        }
    .end annotation
.end field

.field private depth:I

.field private name:Ljava/lang/String;

.field private parent:Landroid/content/pm/aasa/RestrictList$RestrictNode;

.field final synthetic this$0:Landroid/content/pm/aasa/RestrictList;

.field private type:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/content/pm/aasa/RestrictList$RestrictNode;)Landroid/content/pm/aasa/RestrictList$RestrictNode;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->parent:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/pm/aasa/RestrictList;Landroid/content/pm/aasa/RestrictList$RestrictNode;)V
    .locals 1

    iput-object p1, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->this$0:Landroid/content/pm/aasa/RestrictList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->child:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->name:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->type:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getDepth()I

    move-result v0

    iput v0, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->depth:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->parent:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/aasa/RestrictList;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->this$0:Landroid/content/pm/aasa/RestrictList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->child:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->name:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->type:Ljava/lang/String;

    iput p4, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->depth:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->parent:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    return-void
.end method


# virtual methods
.method public getChildList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/aasa/RestrictList$RestrictNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->child:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    iget v0, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->depth:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Landroid/content/pm/aasa/RestrictList$RestrictNode;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->parent:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setParent(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->parent:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->parent:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    if-eqz v1, :cond_0

    const-string/jumbo v1, ", parent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->parent:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-virtual {v1}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->type:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string/jumbo v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, ", depth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->depth:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", numofChild = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/aasa/RestrictList$RestrictNode;->child:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
