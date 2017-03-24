.class Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;
.super Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;
.source "TouchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/TouchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatKeyframeSet"
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
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:[F


# direct methods
.method public constructor <init>(Landroid/util/Property;[F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    array-length v0, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mProperty:Landroid/util/Property;

    iput-object p2, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mValues:[F

    return-void
.end method


# virtual methods
.method protected interpolate(IFLjava/lang/Object;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mValues:[F

    add-int/lit8 v3, p1, -0x1

    aget v0, v2, v3

    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mValues:[F

    aget v1, v2, p1

    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mProperty:Landroid/util/Property;

    sub-float v3, v1, v0

    mul-float/2addr v3, p2

    add-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
