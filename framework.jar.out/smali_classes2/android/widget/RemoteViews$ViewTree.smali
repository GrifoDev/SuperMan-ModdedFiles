.class Landroid/widget/RemoteViews$ViewTree;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewTree"
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews$ViewTree;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Landroid/view/View;


# direct methods
.method static synthetic -get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/RemoteViews$ViewTree;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    return-object p1
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/widget/RemoteViews$ViewTree;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private addViewChild(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-eqz v5, :cond_1

    new-instance v3, Landroid/widget/RemoteViews$ViewTree;

    invoke-direct {v3, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;)V

    iget-object v5, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    :goto_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    iget-object v5, v2, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/RemoteViews$ViewTree;->addViewChild(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v2, p0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addChild(Landroid/widget/RemoteViews$ViewTree;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createTree()V
    .locals 4

    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v2, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews$ViewTree;->addViewChild(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    goto :goto_0
.end method

.method public findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    return-object v4

    :cond_1
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$ViewTree;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_3
    return-object v4
.end method

.method public replaceView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    return-void
.end method
