.class Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$9;
.super Ljava/lang/Object;
.source "SmartStaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->-get1(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->-wrap0(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "intelligent_sleep_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void
.end method
