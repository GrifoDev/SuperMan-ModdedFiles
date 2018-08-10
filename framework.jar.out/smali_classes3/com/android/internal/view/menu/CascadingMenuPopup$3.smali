.class Lcom/android/internal/view/menu/CascadingMenuPopup$3;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/widget/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 12

    iget-object v8, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v8}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get4(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v8}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get2(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v8, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v8}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get2(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v8, v8, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v8, :cond_1

    move v2, v1

    :cond_0
    const/4 v8, -0x1

    if-ne v2, v8, :cond_2

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v2, 0x1

    iget-object v8, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v8}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get2(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v8}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get2(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    :goto_1
    new-instance v5, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;

    invoke-direct {v5, p0, v4, p2, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup$3;Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Lcom/android/internal/view/menu/MenuBuilder;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0xc8

    add-long v6, v8, v10

    iget-object v8, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v8}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get4(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v5, p1, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onItemHoverExit(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get4(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
