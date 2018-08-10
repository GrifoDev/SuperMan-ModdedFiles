.class Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$1;
.super Ljava/lang/Object;
.source "BixbyView.java"

# interfaces
.implements Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScriptPlayCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap9(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    return-void
.end method

.method public onScriptPlayError()V
    .locals 2

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v1, "onScriptPlayError"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap9(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    return-void
.end method

.method public onScriptPlayerServiceConnected()V
    .locals 4

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v1, "Connected to BixbyScriptPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getCurrentBixbyState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    iget-object v0, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;

    const-wide/16 v2, 0x10b

    const/16 v1, 0x15

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
