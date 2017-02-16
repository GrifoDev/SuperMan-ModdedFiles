.class Landroid/graphics/Paint$1;
.super Ljava/lang/Object;
.source "Paint.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/Paint;->semAddLinearGradientTextEffect(FF[I[F[FF)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/graphics/Paint$Gradient;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/Paint;

    .prologue
    .line 1530
    iput-object p1, p0, Landroid/graphics/Paint$1;->this$0:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/Paint$Gradient;Landroid/graphics/Paint$Gradient;)I
    .locals 2
    .param p1, "o1"    # Landroid/graphics/Paint$Gradient;
    .param p2, "o2"    # Landroid/graphics/Paint$Gradient;

    .prologue
    .line 1533
    iget v0, p1, Landroid/graphics/Paint$Gradient;->position:F

    iget v1, p2, Landroid/graphics/Paint$Gradient;->position:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/graphics/Paint$Gradient;->position:F

    iget v1, p2, Landroid/graphics/Paint$Gradient;->position:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 1532
    check-cast p1, Landroid/graphics/Paint$Gradient;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Paint$Gradient;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Paint$1;->compare(Landroid/graphics/Paint$Gradient;Landroid/graphics/Paint$Gradient;)I

    move-result v0

    return v0
.end method
