.class final Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$1;
.super Ljava/lang/Object;
.source "GradientColorExtractor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->kMeans_hsv([I[II)[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;)I
    .locals 3
    .param p1, "lhs"    # Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;
    .param p2, "rhs"    # Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    .prologue
    .line 174
    const v0, 0x47c35000    # 100000.0f

    iget v1, p2, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->percentage:F

    iget v2, p1, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->percentage:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 171
    check-cast p1, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    check-cast p2, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$1;->compare(Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;)I

    move-result v0

    return v0
.end method
