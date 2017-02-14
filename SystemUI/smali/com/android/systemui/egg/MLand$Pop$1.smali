.class Lcom/android/systemui/egg/MLand$Pop$1;
.super Landroid/view/ViewOutlineProvider;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/egg/MLand$Pop;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/egg/MLand$Pop;


# direct methods
.method constructor <init>(Lcom/android/systemui/egg/MLand$Pop;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Pop$1;->this$1:Lcom/android/systemui/egg/MLand$Pop;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/egg/MLand$Pop$1;->this$1:Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual {v1}, Lcom/android/systemui/egg/MLand$Pop;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/systemui/egg/MLand$Pop$1;->this$1:Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual {v1}, Lcom/android/systemui/egg/MLand$Pop;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Pop$1;->this$1:Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual {v2}, Lcom/android/systemui/egg/MLand$Pop;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
