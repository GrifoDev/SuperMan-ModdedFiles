.class Lcom/android/systemui/qs/QSDetail$6;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail;->handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;

.field final synthetic val$adapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$6;->this$0:Lcom/android/systemui/qs/QSDetail;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail$6;->val$adapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$6;->val$adapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getButtonCallback()Lcom/android/systemui/qs/QSTile$DetailAdapter$ButtonCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$DetailAdapter$ButtonCallback;->onSettingsClicked()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$6;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v1}, Lcom/android/systemui/qs/QSDetail;->-get4(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail$6;->val$adapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$6;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v1}, Lcom/android/systemui/qs/QSDetail;->-get0(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v3, "QS12"

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail$6;->val$adapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DetailAdapter"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v7}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method
