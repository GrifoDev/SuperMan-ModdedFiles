.class Lcom/android/launcher2/MenuAppIconView$1;
.super Ljava/lang/Object;
.source "MenuAppIconView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppIconView$1;->this$0:Lcom/android/launcher2/MenuAppIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView$1;->this$0:Lcom/android/launcher2/MenuAppIconView;

    invoke-static {v0}, Lcom/android/launcher2/MenuAppIconView;->access$000(Lcom/android/launcher2/MenuAppIconView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

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
