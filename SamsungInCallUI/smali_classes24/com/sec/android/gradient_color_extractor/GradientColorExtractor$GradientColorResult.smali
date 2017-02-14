.class public Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
.super Ljava/lang/Object;
.source "GradientColorExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GradientColorResult"
.end annotation


# instance fields
.field public dominantColorResult:[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

.field public gradientColorIndexForDominantColor:[I

.field public gradientColor_a:I

.field public gradientColor_a_original:I

.field public gradientColor_b:I

.field public gradientColor_b_original:I

.field public primaryColor:I

.field public secondaryColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
