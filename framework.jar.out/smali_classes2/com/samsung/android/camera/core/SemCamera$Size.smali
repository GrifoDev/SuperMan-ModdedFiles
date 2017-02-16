.class public Lcom/samsung/android/camera/core/SemCamera$Size;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Lcom/samsung/android/camera/core/SemCamera;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core/SemCamera;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camera/core/SemCamera;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 6486
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera$Size;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6487
    iput p2, p0, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    .line 6488
    iput p3, p0, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    .line 6486
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 6499
    instance-of v2, p1, Lcom/samsung/android/camera/core/SemCamera$Size;

    if-nez v2, :cond_0

    .line 6500
    return v1

    :cond_0
    move-object v0, p1

    .line 6502
    nop

    nop

    .line 6503
    .local v0, "s":Lcom/samsung/android/camera/core/SemCamera$Size;
    iget v2, p0, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    iget v3, v0, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    iget v3, v0, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 6510
    iget v0, p0, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method
