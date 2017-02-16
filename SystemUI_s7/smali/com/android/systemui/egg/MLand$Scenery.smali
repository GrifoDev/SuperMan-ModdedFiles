.class Lcom/android/systemui/egg/MLand$Scenery;
.super Landroid/widget/FrameLayout;
.source "MLand.java"

# interfaces
.implements Lcom/android/systemui/egg/MLand$GameView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scenery"
.end annotation


# instance fields
.field public h:I

.field final synthetic this$0:Lcom/android/systemui/egg/MLand;

.field public v:F

.field public w:I

.field public z:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Scenery;->this$0:Lcom/android/systemui/egg/MLand;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public step(JJFF)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Scenery;->getTranslationX()F

    move-result v0

    invoke-static {}, Lcom/android/systemui/egg/MLand;->-get0()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->TRANSLATION_PER_SEC:F

    mul-float/2addr v1, p6

    iget v2, p0, Lcom/android/systemui/egg/MLand$Scenery;->v:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Scenery;->setTranslationX(F)V

    return-void
.end method
