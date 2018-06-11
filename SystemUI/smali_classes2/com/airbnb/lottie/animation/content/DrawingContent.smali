.class public interface abstract Lcom/airbnb/lottie/animation/content/DrawingContent;
.super Ljava/lang/Object;
.source "DrawingContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/Content;


# virtual methods
.method public abstract addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public abstract getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
.end method
