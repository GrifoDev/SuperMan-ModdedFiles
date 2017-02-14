.class Lcom/samsung/android/settings/SettingsApplication$1;
.super Ljava/lang/Object;
.source "SettingsApplication.java"

# interfaces
.implements Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SettingsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SettingsApplication;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SettingsApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStateReceived(Lcom/samsung/android/app/executor/data/State;)V
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getStateId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "SettingsHome"

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getParameters()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v5, "SettingsHome"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "Settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-virtual {v5}, Lcom/samsung/android/settings/SettingsApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/settings/Settings;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v5, 0x10008000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-virtual {v5, v0}, Lcom/samsung/android/settings/SettingsApplication;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v3, Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v5}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/android/app/executor/ExecutorMediator;->requestNlg(Lcom/samsung/android/app/executor/data/NlgRequestInfo;)V

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v5}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_2
    return-void
.end method
