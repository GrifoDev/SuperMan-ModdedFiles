.class Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$10;
.super Ljava/lang/Object;
.source "SmartStaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->maketurnOffUniversalPopup()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$10;->this$0:Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$10;->this$0:Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffUniversalSwitch(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$10;->this$0:Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->-wrap0(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "intelligent_sleep_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
