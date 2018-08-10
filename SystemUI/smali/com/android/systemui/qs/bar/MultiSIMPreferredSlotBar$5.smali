.class Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$5;
.super Landroid/database/ContentObserver;
.source "MultiSIMPreferredSlotBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$5;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_QS_MULTISIM_SWITCH_MANAGER:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$5;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2, v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-set8(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$5;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$5;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v3}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get6(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mobile_data"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_0
    invoke-static {v2, v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-set9(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$5;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->-wrap0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_QS_MULTISIM_SWITCH_MANAGER:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$5;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-set8(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
