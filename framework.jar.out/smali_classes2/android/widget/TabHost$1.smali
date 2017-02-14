.class Landroid/widget/TabHost$1;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method constructor <init>(Landroid/widget/TabHost;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TabHost$1;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_0

    iget-object v0, p0, Landroid/widget/TabHost$1;->this$0:Landroid/widget/TabHost;

    invoke-static {v0}, Landroid/widget/TabHost;->-get0(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    iget-object v0, p0, Landroid/widget/TabHost$1;->this$0:Landroid/widget/TabHost;

    invoke-static {v0}, Landroid/widget/TabHost;->-get0(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    return v0

    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TabHost$1;->this$0:Landroid/widget/TabHost;

    iget v0, v0, Landroid/widget/TabHost;->mCurrentTab:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/widget/TabHost$1;->this$0:Landroid/widget/TabHost;

    invoke-static {v1}, Landroid/widget/TabHost;->-get2(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TabHost$1;->this$0:Landroid/widget/TabHost;

    invoke-static {v0}, Landroid/widget/TabHost;->-get2(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TabHost$1;->this$0:Landroid/widget/TabHost;

    iget v1, v1, Landroid/widget/TabHost;->mCurrentTab:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Landroid/widget/TabHost$1;->this$0:Landroid/widget/TabHost;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->playSoundEffect(I)V

    :cond_1
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
