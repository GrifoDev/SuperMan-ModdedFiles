.class Lcom/android/server/policy/GlobalActions$29;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createPortraitGlobalActionsDialog()V
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

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get29()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v4, v4, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    invoke-virtual {v3, v4}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v3

    if-lt v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v4, v4, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    invoke-virtual {v3, v4}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v4, v4, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    add-int/2addr v3, v4

    if-gt v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v4, v4, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    invoke-virtual {v3, v4}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v3

    if-lt v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v4, v4, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    invoke-virtual {v3, v4}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v4, v4, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_0

    return v5

    :cond_0
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get29()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v4, v4, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    invoke-virtual {v3, v4}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v3

    if-lt v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v4, v4, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    invoke-virtual {v3, v4}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v4, v4, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    add-int/2addr v3, v4

    if-gt v1, v3, :cond_1

    return v5

    :cond_1
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get29()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get29()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3, v6}, Lcom/android/server/policy/GlobalActions;->-wrap24(Lcom/android/server/policy/GlobalActions;Z)V

    :goto_0
    return v6

    :cond_3
    return v6

    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    if-ne v0, v6, :cond_6

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get29()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-set6(Z)Z

    :cond_6
    :goto_1
    return v5

    :cond_7
    sput-boolean v5, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$29;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
