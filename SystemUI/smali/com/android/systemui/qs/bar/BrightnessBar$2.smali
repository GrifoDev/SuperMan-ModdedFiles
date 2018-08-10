.class Lcom/android/systemui/qs/bar/BrightnessBar$2;
.super Ljava/lang/Object;
.source "BrightnessBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/BrightnessBar;->initBrightnessDetailViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/BrightnessBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/BrightnessBar;->-get3(Lcom/android/systemui/qs/bar/BrightnessBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/BrightnessBar;->-get3(Lcom/android/systemui/qs/bar/BrightnessBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    new-instance v2, Lcom/android/systemui/settings/BrightnessDetail;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-static {v3}, Lcom/android/systemui/qs/bar/BrightnessBar;->-get1(Lcom/android/systemui/qs/bar/BrightnessBar;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/settings/BrightnessDetail;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;)V

    invoke-static {v1, v2}, Lcom/android/systemui/qs/bar/BrightnessBar;->-set0(Lcom/android/systemui/qs/bar/BrightnessBar;Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/BrightnessBar;->-get0(Lcom/android/systemui/qs/bar/BrightnessBar;)Lcom/android/systemui/settings/BrightnessDetail;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/bar/BrightnessBar$2$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$2$1;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar$2;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/BrightnessDetail;->setBrightnessDetailCallback(Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/BrightnessBar;->-get0(Lcom/android/systemui/qs/bar/BrightnessBar;)Lcom/android/systemui/settings/BrightnessDetail;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/BrightnessDetail;->showDetail(Z)V

    sget-object v1, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v2, "2027"

    invoke-static {v1, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "225"

    invoke-static {v1}, Lcom/android/systemui/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    const-string/jumbo v1, "SystemUIAnalytics"

    const-string/jumbo v2, "BRIGHTNESS_EXPAND"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    iget-object v1, v1, Lcom/android/systemui/qs/bar/BrightnessBar;->mCallback:Lcom/android/systemui/qs/bar/QSBarItem$Callback;

    invoke-interface {v1}, Lcom/android/systemui/qs/bar/QSBarItem$Callback;->getQSPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    goto :goto_0
.end method
