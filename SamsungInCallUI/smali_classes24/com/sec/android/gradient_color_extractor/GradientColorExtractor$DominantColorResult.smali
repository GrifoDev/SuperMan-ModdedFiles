.class public Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;
.super Ljava/lang/Object;
.source "GradientColorExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DominantColorResult"
.end annotation


# instance fields
.field public color:I

.field public percentage:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    iput p2, p0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->percentage:F

    return-void
.end method
