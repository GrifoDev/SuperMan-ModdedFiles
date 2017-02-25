.class Lcom/android/server/wm/MultiWindowManagerInternal$2;
.super Ljava/lang/Object;
.source "MultiWindowManagerInternal.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MultiWindowManagerInternal;->loadMinimizeAnimationLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

.field final synthetic val$sourceFrame:Landroid/graphics/Rect;

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiWindowManagerInternal;ILandroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal$2;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iput p2, p0, Lcom/android/server/wm/MultiWindowManagerInternal$2;->val$taskId:I

    iput-object p3, p0, Lcom/android/server/wm/MultiWindowManagerInternal$2;->val$sourceFrame:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal$2;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal$2;->val$taskId:I

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal$2;->val$sourceFrame:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->notifyFreefromWindowAnimationEnd(IILandroid/graphics/Rect;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
