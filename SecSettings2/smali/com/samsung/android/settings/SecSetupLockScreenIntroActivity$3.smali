.class Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$3;
.super Ljava/lang/Object;
.source "SecSetupLockScreenIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->updateView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$3;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$3;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$3;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->finish()V

    return-void
.end method
