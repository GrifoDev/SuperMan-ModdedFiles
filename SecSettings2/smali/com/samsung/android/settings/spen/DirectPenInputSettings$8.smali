.class Lcom/samsung/android/settings/spen/DirectPenInputSettings$8;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/spen/DirectPenInputSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$8;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x14

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$8;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$8;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$8;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    return v1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/16 v0, 0x13

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$8;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    return v1

    :cond_1
    return v2
.end method
