.class Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardMotionWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$5;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$5;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-set0(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
