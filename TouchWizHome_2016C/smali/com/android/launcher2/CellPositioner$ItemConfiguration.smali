.class Lcom/android/launcher2/CellPositioner$ItemConfiguration;
.super Ljava/lang/Object;
.source "CellPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemConfiguration"
.end annotation


# instance fields
.field dragViewSpanX:I

.field dragViewSpanY:I

.field dragViewX:I

.field dragViewY:I

.field intersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field isSolution:Z

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellPositioner$CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field private savedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellPositioner$CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field sortedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher2/CellPositioner;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellPositioner;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->isSolution:Z

    return-void
.end method


# virtual methods
.method add(Landroid/view/View;Lcom/android/launcher2/CellPositioner$CellAndSpan;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    iget-object v2, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-direct {v1, v2}, Lcom/android/launcher2/CellPositioner$CellAndSpan;-><init>(Lcom/android/launcher2/CellPositioner;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method area()I
    .locals 2

    iget v0, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewSpanX:I

    iget v1, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewSpanY:I

    mul-int/2addr v0, v1

    return v0
.end method

.method restore()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    iget-object v2, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellPositioner$CellAndSpan;->copy(Lcom/android/launcher2/CellPositioner$CellAndSpan;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method save()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    iget-object v2, p0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellPositioner$CellAndSpan;->copy(Lcom/android/launcher2/CellPositioner$CellAndSpan;)V

    goto :goto_0

    :cond_0
    return-void
.end method
