.class Lcom/android/server/policy/GlobalActions$34;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createLandscapeGlobalActionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    const v4, 0x102000b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get30()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v5, v5, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    invoke-virtual {v4, v5}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v4

    sub-int/2addr v4, v3

    if-lt v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v5, v5, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    invoke-virtual {v4, v5}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v5, v5, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    if-gt v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v5, v5, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    invoke-virtual {v4, v5}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v4

    if-lt v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v5, v5, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    invoke-virtual {v4, v5}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v5, v5, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    add-int/2addr v4, v5

    if-gt v1, v4, :cond_0

    return v6

    :cond_0
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get30()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v5, v5, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    invoke-virtual {v4, v5}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v4

    sub-int/2addr v4, v3

    if-lt v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v5, v5, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    invoke-virtual {v4, v5}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v5, v5, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    if-gt v2, v4, :cond_1

    return v6

    :cond_1
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get30()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get30()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4, v7}, Lcom/android/server/policy/GlobalActions;->-wrap23(Lcom/android/server/policy/GlobalActions;Z)V

    :goto_0
    return v7

    :cond_3
    return v7

    :cond_4
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    if-ne v0, v7, :cond_6

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get30()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-set7(Z)Z

    :cond_6
    :goto_1
    return v6

    :cond_7
    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
