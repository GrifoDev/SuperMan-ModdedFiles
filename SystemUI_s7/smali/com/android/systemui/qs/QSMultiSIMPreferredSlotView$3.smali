.class Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$3;
.super Landroid/database/ContentObserver;
.source "QSMultiSIMPreferredSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$3;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$3;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$3;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v2}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get3(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mobile_data"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-set3(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$3;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    iget-object v0, v0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultDataButton:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    invoke-static {v0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-wrap0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
