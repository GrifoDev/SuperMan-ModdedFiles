.class Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$3;
.super Ljava/lang/Object;
.source "KnoxSetLockFingerprintPassword.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$3;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$3;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-static {v0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->-get1(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$3;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-static {v0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->-wrap1(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
