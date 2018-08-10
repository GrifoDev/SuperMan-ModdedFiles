.class Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;
.super Ljava/lang/Object;
.source "TapAndHoldDelayCustomFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get6(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->checkLongPressStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-wrap1(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;I)V

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->-get0(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getMetricsCategory()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    :cond_1
    return v5
.end method
