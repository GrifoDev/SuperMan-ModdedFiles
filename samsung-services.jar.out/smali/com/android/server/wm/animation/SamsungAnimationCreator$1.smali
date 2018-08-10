.class Lcom/android/server/wm/animation/SamsungAnimationCreator$1;
.super Ljava/lang/Object;
.source "SamsungAnimationCreator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAppCloseWallpaperEnterAnimation(I)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/animation/SamsungAnimationCreator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/animation/SamsungAnimationCreator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator$1;->this$0:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string/jumbo v0, "SamsungAnimationCreator"

    const-string/jumbo v1, "createAppCloseWallpaperEnterAnimation onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator$1;->this$0:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->updateAppTransitionStartValues(Landroid/graphics/Rect;)V

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
