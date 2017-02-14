.class Lcom/samsung/android/settings/SmartStaySettings$1;
.super Landroid/database/ContentObserver;
.source "SmartStaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SmartStaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SmartStaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SmartStaySettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SmartStaySettings$1;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$1;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SmartStaySettings;->-get0(Lcom/samsung/android/settings/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$1;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SmartStaySettings;->-get0(Lcom/samsung/android/settings/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SmartStaySettings$1;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SmartStaySettings;->-wrap0(Lcom/samsung/android/settings/SmartStaySettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "intelligent_sleep_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    return-void
.end method
