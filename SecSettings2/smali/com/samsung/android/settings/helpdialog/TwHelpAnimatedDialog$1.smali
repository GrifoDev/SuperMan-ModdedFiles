.class Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog$1;
.super Ljava/lang/Object;
.source "TwHelpAnimatedDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog$1;->this$0:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog$1;->this$0:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->-get1(Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->-set0(Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog$1;->this$0:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->-get1(Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog$1;->this$0:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->-get3(Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog$1;->this$0:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->-get2(Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog$1;->this$0:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->-get3(Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog$1;->this$0:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->-get1(Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
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
