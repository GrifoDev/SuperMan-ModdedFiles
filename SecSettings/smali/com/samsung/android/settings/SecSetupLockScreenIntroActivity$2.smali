.class Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$2;
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

    iput-object p1, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$2;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f1218ad

    invoke-static {v0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$LearnMoreDialog;->newInstance(I)Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$LearnMoreDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$2;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$LearnMoreDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
