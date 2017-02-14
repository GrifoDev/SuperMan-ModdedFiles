.class Lcom/android/launcher2/MenuTitleBarManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuTitleBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuTitleBarManager;->getSlideDownAnimation(Ljava/util/List;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuTitleBarManager;

.field final synthetic val$titleBar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuTitleBarManager;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuTitleBarManager$1;->this$0:Lcom/android/launcher2/MenuTitleBarManager;

    iput-object p2, p0, Lcom/android/launcher2/MenuTitleBarManager$1;->val$titleBar:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager$1;->val$titleBar:Landroid/view/View;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
