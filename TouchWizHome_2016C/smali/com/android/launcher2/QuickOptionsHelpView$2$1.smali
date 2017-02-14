.class Lcom/android/launcher2/QuickOptionsHelpView$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickOptionsHelpView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/QuickOptionsHelpView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/QuickOptionsHelpView$2;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickOptionsHelpView$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickOptionsHelpView$2$1;->this$1:Lcom/android/launcher2/QuickOptionsHelpView$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickOptionsHelpView$2$1;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsHelpView$2$1;->this$1:Lcom/android/launcher2/QuickOptionsHelpView$2;

    iget-object v4, v4, Lcom/android/launcher2/QuickOptionsHelpView$2;->this$0:Lcom/android/launcher2/QuickOptionsHelpView;

    # getter for: Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/launcher2/QuickOptionsHelpView;->access$000(Lcom/android/launcher2/QuickOptionsHelpView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsHelpView$2$1;->this$1:Lcom/android/launcher2/QuickOptionsHelpView$2;

    iget-object v4, v4, Lcom/android/launcher2/QuickOptionsHelpView$2;->this$0:Lcom/android/launcher2/QuickOptionsHelpView;

    # getter for: Lcom/android/launcher2/QuickOptionsHelpView;->mForceClose:Z
    invoke-static {v4}, Lcom/android/launcher2/QuickOptionsHelpView;->access$100(Lcom/android/launcher2/QuickOptionsHelpView;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsHelpView$2$1;->this$1:Lcom/android/launcher2/QuickOptionsHelpView$2;

    iget-object v4, v4, Lcom/android/launcher2/QuickOptionsHelpView$2;->this$0:Lcom/android/launcher2/QuickOptionsHelpView;

    # getter for: Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_Img:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/launcher2/QuickOptionsHelpView;->access$200(Lcom/android/launcher2/QuickOptionsHelpView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsHelpView$2$1;->this$1:Lcom/android/launcher2/QuickOptionsHelpView$2;

    iget-object v4, v4, Lcom/android/launcher2/QuickOptionsHelpView$2;->this$0:Lcom/android/launcher2/QuickOptionsHelpView;

    # getter for: Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_Img:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/launcher2/QuickOptionsHelpView;->access$200(Lcom/android/launcher2/QuickOptionsHelpView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsHelpView$2$1;->this$1:Lcom/android/launcher2/QuickOptionsHelpView$2;

    iget-object v4, v4, Lcom/android/launcher2/QuickOptionsHelpView$2;->this$0:Lcom/android/launcher2/QuickOptionsHelpView;

    # getter for: Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_Img:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/launcher2/QuickOptionsHelpView;->access$200(Lcom/android/launcher2/QuickOptionsHelpView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsHelpView$2$1;->this$1:Lcom/android/launcher2/QuickOptionsHelpView$2;

    iget-object v4, v4, Lcom/android/launcher2/QuickOptionsHelpView$2;->this$0:Lcom/android/launcher2/QuickOptionsHelpView;

    # setter for: Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;
    invoke-static {v4, v5}, Lcom/android/launcher2/QuickOptionsHelpView;->access$002(Lcom/android/launcher2/QuickOptionsHelpView;Landroid/view/View;)Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsHelpView$2$1;->this$1:Lcom/android/launcher2/QuickOptionsHelpView$2;

    iget-object v4, v4, Lcom/android/launcher2/QuickOptionsHelpView$2;->this$0:Lcom/android/launcher2/QuickOptionsHelpView;

    # setter for: Lcom/android/launcher2/QuickOptionsHelpView;->mIsRunning:Z
    invoke-static {v4, v6}, Lcom/android/launcher2/QuickOptionsHelpView;->access$302(Lcom/android/launcher2/QuickOptionsHelpView;Z)Z

    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsHelpView$2$1;->this$1:Lcom/android/launcher2/QuickOptionsHelpView$2;

    iget-object v4, v4, Lcom/android/launcher2/QuickOptionsHelpView$2;->this$0:Lcom/android/launcher2/QuickOptionsHelpView;

    # getter for: Lcom/android/launcher2/QuickOptionsHelpView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/launcher2/QuickOptionsHelpView;->access$400(Lcom/android/launcher2/QuickOptionsHelpView;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsHelpView$2$1;->this$1:Lcom/android/launcher2/QuickOptionsHelpView$2;

    iget-object v4, v4, Lcom/android/launcher2/QuickOptionsHelpView$2;->this$0:Lcom/android/launcher2/QuickOptionsHelpView;

    # getter for: Lcom/android/launcher2/QuickOptionsHelpView;->mForceClose:Z
    invoke-static {v4}, Lcom/android/launcher2/QuickOptionsHelpView;->access$100(Lcom/android/launcher2/QuickOptionsHelpView;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v4, "QuickOptions_Help_Shown"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsHelpView$2$1;->this$1:Lcom/android/launcher2/QuickOptionsHelpView$2;

    iget-object v4, v4, Lcom/android/launcher2/QuickOptionsHelpView$2;->this$0:Lcom/android/launcher2/QuickOptionsHelpView;

    # getter for: Lcom/android/launcher2/QuickOptionsHelpView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v4}, Lcom/android/launcher2/QuickOptionsHelpView;->access$500(Lcom/android/launcher2/QuickOptionsHelpView;)Lcom/android/launcher2/Workspace;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/launcher2/Workspace;->setWorkspaceAccessibilityEnabled(Z)V

    return-void
.end method
