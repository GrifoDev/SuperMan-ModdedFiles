.class Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;
.super Ljava/lang/Object;
.source "MultiSIMPreferredSlotBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->showSlotListPopupWindow(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-set3(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->updateTextColor()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-wrap6(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-wrap2(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    return-void
.end method
