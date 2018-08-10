.class Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;
.super Ljava/lang/Object;
.source "MultiSIMPreferredSlotBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->-get2(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get5(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->-get1(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->-get1(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1208a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get3(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get12(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->-get2(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-wrap7(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V

    return-void
.end method
