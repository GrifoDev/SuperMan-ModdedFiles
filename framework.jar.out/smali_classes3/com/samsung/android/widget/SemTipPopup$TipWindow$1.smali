.class Lcom/samsung/android/widget/SemTipPopup$TipWindow$1;
.super Ljava/lang/Object;
.source "SemTipPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup$TipWindow;->animateViewOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/widget/SemTipPopup$TipWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow$1;->this$1:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow$1;->this$1:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-wrap0(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow$1;->this$1:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-set0(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)Z

    return-void
.end method
