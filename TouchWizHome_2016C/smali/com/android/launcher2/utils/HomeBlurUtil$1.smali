.class Lcom/android/launcher2/utils/HomeBlurUtil$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeBlurUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/utils/HomeBlurUtil;->doTransientBlur(Landroid/graphics/Rect;Lcom/android/launcher2/BaseItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

.field final synthetic val$item:Lcom/android/launcher2/BaseItem;

.field final synthetic val$nonBlurRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/launcher2/utils/HomeBlurUtil;Landroid/graphics/Rect;Lcom/android/launcher2/BaseItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/utils/HomeBlurUtil$1;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    iput-object p2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$1;->val$nonBlurRect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/launcher2/utils/HomeBlurUtil$1;->val$item:Lcom/android/launcher2/BaseItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$1;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$1;->val$nonBlurRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/utils/HomeBlurUtil$1;->val$item:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/launcher2/utils/HomeBlurUtil;->blur(ZZLandroid/graphics/Rect;Lcom/android/launcher2/BaseItem;)Z

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$1;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    invoke-static {v0, v4}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$002(Lcom/android/launcher2/utils/HomeBlurUtil;Z)Z

    return-void
.end method
