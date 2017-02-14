.class Lcom/android/launcher2/MenuView$1;
.super Ljava/lang/Object;
.source "MenuView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuView$1;->this$0:Lcom/android/launcher2/MenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isHovered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setHovered(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->isHovered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setHovered(Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setHovered(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
