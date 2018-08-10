.class Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
    otherwise = 0x2
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrintSummaryProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider$PrintManagerWrapper;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPrintManager:Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider$PrintManagerWrapper;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider$PrintManagerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iput-object p3, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mPrintManager:Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider$PrintManagerWrapper;

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 7

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mPrintManager:Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider$PrintManagerWrapper;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mPrintManager:Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider$PrintManagerWrapper;

    invoke-virtual {v2, v4}, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider$PrintManagerWrapper;->getPrintServices(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v3, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mContext:Landroid/content/Context;

    const v4, 0x7f12150a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v3, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f10002a

    invoke-virtual {v3, v5, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
