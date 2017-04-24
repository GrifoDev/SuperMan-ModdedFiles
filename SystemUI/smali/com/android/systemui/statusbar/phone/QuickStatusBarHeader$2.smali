.class Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;
.super Ljava/lang/Object;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->showQSPopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get4(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get3(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get0(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v2, "QP02"

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get2(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->showGridPopup()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-wrap0(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get0(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->launchContactUsApp(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get0(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v2, "QS23"

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f130437
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
