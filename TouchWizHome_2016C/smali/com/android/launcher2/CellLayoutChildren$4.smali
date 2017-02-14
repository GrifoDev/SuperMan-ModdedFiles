.class Lcom/android/launcher2/CellLayoutChildren$4;
.super Ljava/lang/Object;
.source "CellLayoutChildren.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutChildren;->buildAlphaAnimation(Landroid/view/View;JJ)Landroid/view/animation/AlphaAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutChildren;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutChildren;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutChildren$4;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    iput-object p2, p0, Lcom/android/launcher2/CellLayoutChildren$4;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren$4;->val$v:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
