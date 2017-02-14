.class Lcom/samsung/android/settings/spen/DirectPenInputSettings$1;
.super Landroid/database/ContentObserver;
.source "DirectPenInputSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/spen/DirectPenInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$1;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$1;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get6(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$1;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get2(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$1;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get8(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$1;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-wrap0(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
