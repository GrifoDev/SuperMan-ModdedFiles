.class Lcom/android/systemui/qs/QSScreenGridDialog$1;
.super Ljava/lang/Object;
.source "QSScreenGridDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSScreenGridDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSScreenGridDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSScreenGridDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v2}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get1(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v2}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get1(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    iget-object v2, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v2}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get1(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v3, v2, v4}, Lcom/android/systemui/qs/QSScreenGridDialog;->-wrap0(Lcom/android/systemui/qs/QSScreenGridDialog;Landroid/view/ViewGroup;Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v3, v2}, Lcom/android/systemui/qs/QSScreenGridDialog;->-set0(Lcom/android/systemui/qs/QSScreenGridDialog;Landroid/view/View;)Landroid/view/View;

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setSelected(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v3, v2, v5}, Lcom/android/systemui/qs/QSScreenGridDialog;->-wrap0(Lcom/android/systemui/qs/QSScreenGridDialog;Landroid/view/ViewGroup;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0a0405

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v3, "qs_tile_layout"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v2}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get0(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "2"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v3, "2098"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v2}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get2(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v2}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get2(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "2098"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v2}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get2(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v2, "3"

    goto :goto_0
.end method
