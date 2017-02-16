.class public Lcom/android/systemui/classifier/DurationCountClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "DurationCountClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .locals 2

    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getDurationSeconds()F

    move-result v0

    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/systemui/classifier/DurationCountEvaluator;->evaluate(F)F

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "DUR"

    return-object v0
.end method
