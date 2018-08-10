.class Lcom/android/systemui/qs/TouchAnimator$IntKeyframeSet;
.super Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;
.source "TouchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/TouchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntKeyframeSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;"
    }
.end annotation


# instance fields
.field private final mProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:[I


# virtual methods
.method protected interpolate(IFLjava/lang/Object;)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator$IntKeyframeSet;->mValues:[I

    add-int/lit8 v3, p1, -0x1

    aget v0, v2, v3

    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator$IntKeyframeSet;->mValues:[I

    aget v1, v2, p1

    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator$IntKeyframeSet;->mProperty:Landroid/util/Property;

    int-to-float v3, v0

    sub-int v4, v1, v0

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
