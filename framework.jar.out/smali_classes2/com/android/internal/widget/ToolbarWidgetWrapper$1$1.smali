.class Lcom/android/internal/widget/ToolbarWidgetWrapper$1$1;
.super Landroid/os/ResultReceiver;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/ToolbarWidgetWrapper$1;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ToolbarWidgetWrapper$1;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1$1;->this$1:Lcom/android/internal/widget/ToolbarWidgetWrapper$1;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1$1;->this$1:Lcom/android/internal/widget/ToolbarWidgetWrapper$1;

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->-get4(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1$1;->this$1:Lcom/android/internal/widget/ToolbarWidgetWrapper$1;

    iget-object v1, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    return-void
.end method
