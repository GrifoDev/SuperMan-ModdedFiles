.class public Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinYEvaluatorReverse;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SinYEvaluatorReverse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private adjust:F

.field private key:F

.field private pX:F

.field private pY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinYEvaluatorReverse;->key:F

    iput p2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinYEvaluatorReverse;->adjust:F

    iput p3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinYEvaluatorReverse;->pX:F

    iput p4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinYEvaluatorReverse;->pY:F

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v0

    sub-float v4, v0, v1

    mul-float/2addr v4, p1

    sub-float v4, v0, v4

    iget v5, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinYEvaluatorReverse;->pX:F

    add-float v2, v4, v5

    iget v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinYEvaluatorReverse;->key:F

    iget v5, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinYEvaluatorReverse;->adjust:F

    float-to-double v6, v5

    float-to-double v8, v2

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinYEvaluatorReverse;->pY:F

    add-float v3, v4, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    return-object v4
.end method
