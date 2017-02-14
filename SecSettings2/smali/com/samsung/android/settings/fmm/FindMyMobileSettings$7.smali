.class Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;
.super Ljava/lang/Object;
.source "FindMyMobileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showReactivationLockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-wrap1(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
