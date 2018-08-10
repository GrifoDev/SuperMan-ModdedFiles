.class Lcom/android/systemui/settings/BrightnessDetail$1$1;
.super Ljava/lang/Object;
.source "BrightnessDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/BrightnessDetail$1;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/settings/BrightnessDetail$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessDetail$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessDetail$1;->-get0(Lcom/android/systemui/settings/BrightnessDetail$1;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessDetail$1;->-get0(Lcom/android/systemui/settings/BrightnessDetail$1;)Landroid/widget/Switch;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v5, v5, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v5}, Lcom/android/systemui/settings/BrightnessDetail;->-get3(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;->setAutoBrightness(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    sget-object v5, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v6, "4006"

    if-eqz v0, :cond_2

    move v2, v3

    :goto_0
    int-to-long v8, v2

    invoke-static {v5, v6, v8, v9}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v2, v2, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessDetail;->-get0(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v2, v2, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessDetail;->-get0(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v5, "4006"

    if-eqz v0, :cond_3

    :goto_1
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v2, v2, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessDetail;->-get0(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method
