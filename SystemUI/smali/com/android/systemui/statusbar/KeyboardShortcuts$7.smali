.class Lcom/android/systemui/statusbar/KeyboardShortcuts$7;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;->handleShowKeyboardShortcuts(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$7;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$7;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-get1(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$7;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-get0(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$7;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-get1(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$7;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-get0(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
