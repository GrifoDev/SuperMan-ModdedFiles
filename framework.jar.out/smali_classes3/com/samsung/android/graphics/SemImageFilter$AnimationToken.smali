.class public Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;
.super Ljava/lang/Object;
.source "SemImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationToken"
.end annotation


# instance fields
.field public mAnimationId:I

.field public mImageFilter:Lcom/samsung/android/graphics/SemImageFilter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/graphics/SemImageFilter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;->mImageFilter:Lcom/samsung/android/graphics/SemImageFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;->mAnimationId:I

    return-void
.end method
