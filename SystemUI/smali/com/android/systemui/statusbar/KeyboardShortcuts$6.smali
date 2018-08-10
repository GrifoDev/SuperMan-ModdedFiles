.class Lcom/android/systemui/statusbar/KeyboardShortcuts$6;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;->showHelpPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

.field final synthetic val$helpPopupWidth:I

.field final synthetic val$helpView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;->val$helpView:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;->val$helpPopupWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-get1(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;->val$helpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-wrap3(Lcom/android/systemui/statusbar/KeyboardShortcuts;F)I

    move-result v1

    add-int/2addr v0, v1

    neg-int v3, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-get2(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-get1(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/widget/ImageButton;

    move-result-object v1

    iget v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;->val$helpPopupWidth:I

    const/4 v2, 0x0

    const/4 v5, -0x2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void
.end method
