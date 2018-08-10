.class Lcom/android/systemui/egg/MLand$Cloud;
.super Lcom/android/systemui/egg/MLand$Scenery;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cloud"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Cloud;->this$0:Lcom/android/systemui/egg/MLand;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/egg/MLand$Scenery;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const v0, 0x7f08013d

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Cloud;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Cloud;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-static {}, Lcom/android/systemui/egg/MLand;->-get0()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->CLOUD_SIZE_MIN:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->-get0()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->CLOUD_SIZE_MAX:I

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Cloud;->h:I

    iput v0, p0, Lcom/android/systemui/egg/MLand$Cloud;->w:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Cloud;->z:F

    const v0, 0x3e19999a    # 0.15f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Cloud;->v:F

    return-void

    :cond_0
    const v0, 0x7f08013c

    goto :goto_0
.end method
