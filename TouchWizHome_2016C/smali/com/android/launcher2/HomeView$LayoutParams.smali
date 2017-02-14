.class public Lcom/android/launcher2/HomeView$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView$LayoutParams;->customPosition:Z

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    return-void
.end method
