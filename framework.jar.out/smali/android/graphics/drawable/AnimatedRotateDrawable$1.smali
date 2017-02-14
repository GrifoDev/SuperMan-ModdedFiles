.class Landroid/graphics/drawable/AnimatedRotateDrawable$1;
.super Ljava/lang/Object;
.source "AnimatedRotateDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedRotateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->-get0(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    move-result v1

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-static {v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->-get1(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->-set0(Landroid/graphics/drawable/AnimatedRotateDrawable;F)F

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->-get0(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->-get1(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float v1, v2, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->-set0(Landroid/graphics/drawable/AnimatedRotateDrawable;F)F

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->invalidateSelf()V

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->-wrap0(Landroid/graphics/drawable/AnimatedRotateDrawable;)V

    return-void
.end method
