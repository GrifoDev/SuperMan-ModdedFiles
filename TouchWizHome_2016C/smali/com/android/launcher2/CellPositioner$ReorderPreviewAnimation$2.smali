.class Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    iput v1, v0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->initDeltaX:F

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    iput v1, v0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->initDeltaY:F

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->repeating:Z

    return-void
.end method
