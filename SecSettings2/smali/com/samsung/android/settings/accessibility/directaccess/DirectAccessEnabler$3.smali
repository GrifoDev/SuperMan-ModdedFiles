.class Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$3;
.super Ljava/lang/Object;
.source "DirectAccessEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->showExclusiveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$3;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$3;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->-get0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$3;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->-get2(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
