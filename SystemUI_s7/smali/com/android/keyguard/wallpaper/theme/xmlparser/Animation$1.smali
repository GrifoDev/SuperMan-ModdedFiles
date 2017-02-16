.class Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$1;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

.field final synthetic val$view:Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$1;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    iput-object p2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$1;->val$view:Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$1;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->-set0(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$1;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->-set2(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;J)J

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$1;->val$view:Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$1;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->-set0(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$1;->val$view:Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method
