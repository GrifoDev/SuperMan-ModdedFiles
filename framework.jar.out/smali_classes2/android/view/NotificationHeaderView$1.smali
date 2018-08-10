.class Landroid/view/NotificationHeaderView$1;
.super Landroid/view/ViewOutlineProvider;
.source "NotificationHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NotificationHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/NotificationHeaderView;


# direct methods
.method constructor <init>(Landroid/view/NotificationHeaderView;)V
    .locals 0

    iput-object p1, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-get1(Landroid/view/NotificationHeaderView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v1}, Landroid/view/NotificationHeaderView;->-get3(Landroid/view/NotificationHeaderView;)I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    :cond_0
    return-void
.end method
