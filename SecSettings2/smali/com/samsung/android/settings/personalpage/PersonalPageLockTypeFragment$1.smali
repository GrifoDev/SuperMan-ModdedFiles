.class Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$1;
.super Ljava/lang/Object;
.source "PersonalPageLockTypeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$1;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.fingerprint.FingerprintEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$1;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
