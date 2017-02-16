.class public Lcom/samsung/android/camera/core/SemCamera$Area;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Area"
.end annotation


# instance fields
.field public rect:Landroid/graphics/Rect;

.field public weight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "weight"    # I

    .prologue
    .line 6601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6602
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera$Area;->rect:Landroid/graphics/Rect;

    .line 6603
    iput p2, p0, Lcom/samsung/android/camera/core/SemCamera$Area;->weight:I

    .line 6601
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 6614
    instance-of v2, p1, Lcom/samsung/android/camera/core/SemCamera$Area;

    if-nez v2, :cond_0

    .line 6615
    return v1

    :cond_0
    move-object v0, p1

    .line 6617
    nop

    nop

    .line 6618
    .local v0, "a":Lcom/samsung/android/camera/core/SemCamera$Area;
    iget-object v2, p0, Lcom/samsung/android/camera/core/SemCamera$Area;->rect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 6619
    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$Area;->rect:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    return v1

    .line 6621
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/camera/core/SemCamera$Area;->rect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 6623
    :cond_2
    iget v2, p0, Lcom/samsung/android/camera/core/SemCamera$Area;->weight:I

    iget v3, v0, Lcom/samsung/android/camera/core/SemCamera$Area;->weight:I

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
