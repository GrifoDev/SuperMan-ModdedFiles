.class final Landroid/transition/ChangeBounds$2;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/transition/ChangeBounds$ViewBounds;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous1"    # Ljava/lang/String;

    .prologue
    .line 87
    .local p1, "$anonymous0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;
    .locals 1
    .param p1, "viewBounds"    # Landroid/transition/ChangeBounds$ViewBounds;

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "viewBounds"    # Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p1, Landroid/transition/ChangeBounds$ViewBounds;

    .end local p1    # "viewBounds":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/transition/ChangeBounds$2;->get(Landroid/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "viewBounds"    # Landroid/transition/ChangeBounds$ViewBounds;
    .param p2, "topLeft"    # Landroid/graphics/PointF;

    .prologue
    .line 90
    invoke-virtual {p1, p2}, Landroid/transition/ChangeBounds$ViewBounds;->setTopLeft(Landroid/graphics/PointF;)V

    .line 89
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "viewBounds"    # Ljava/lang/Object;
    .param p2, "topLeft"    # Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, Landroid/transition/ChangeBounds$ViewBounds;

    .end local p1    # "viewBounds":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/PointF;

    .end local p2    # "topLeft":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/transition/ChangeBounds$2;->set(Landroid/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V

    return-void
.end method
