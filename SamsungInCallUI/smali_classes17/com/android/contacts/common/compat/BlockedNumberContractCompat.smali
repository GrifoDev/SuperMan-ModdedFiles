.class public Lcom/android/contacts/common/compat/BlockedNumberContractCompat;
.super Ljava/lang/Object;
.source "BlockedNumberContractCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canCurrentUserBlockNumbers(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Landroid/provider/BlockedNumberContract;->canCurrentUserBlockNumbers(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
