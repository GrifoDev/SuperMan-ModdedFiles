.class Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$PerformClickEvent;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClickEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;


# direct methods
.method private constructor <init>(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$PerformClickEvent;-><init>(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->access$600(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_1
.end method
