.class public Lcom/android/contacts/common/compat/TelecomManagerUtil;
.super Ljava/lang/Object;
.source "TelecomManagerUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createManageBlockedNumbersIntent(Landroid/telecom/TelecomManager;)Landroid/content/Intent;
    .locals 1
    .param p0, "tm"    # Landroid/telecom/TelecomManager;

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->createManageBlockedNumbersIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
