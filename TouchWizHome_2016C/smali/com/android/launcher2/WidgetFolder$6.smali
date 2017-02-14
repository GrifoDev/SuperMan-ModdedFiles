.class Lcom/android/launcher2/WidgetFolder$6;
.super Ljava/lang/Object;
.source "WidgetFolder.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WidgetFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/WidgetFolder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WidgetFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder$6;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_0

    :goto_0
    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_1
    return v4

    :cond_0
    move v3, v5

    goto :goto_0

    :pswitch_0
    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/WidgetFolder$6;->this$0:Lcom/android/launcher2/WidgetFolder;

    # invokes: Lcom/android/launcher2/WidgetFolder;->getGridLayoutOfFirstPage()Landroid/widget/GridLayout;
    invoke-static {v6}, Lcom/android/launcher2/WidgetFolder;->access$800(Lcom/android/launcher2/WidgetFolder;)Landroid/widget/GridLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v5}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
