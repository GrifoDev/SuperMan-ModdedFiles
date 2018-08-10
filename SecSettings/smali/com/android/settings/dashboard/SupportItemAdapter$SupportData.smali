.class Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
.super Ljava/lang/Object;
.source "SupportItemAdapter.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SupportItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SupportData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;
    }
.end annotation


# instance fields
.field final icon:I

.field final intent:Landroid/content/Intent;

.field final metricsEvent:I

.field final tileSummary:Ljava/lang/CharSequence;

.field final tileTitle:I

.field final tileTitleDescription:Ljava/lang/CharSequence;

.field final type:I


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->-get6(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->type:I

    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->-get0(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->icon:I

    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->-get4(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->tileTitle:I

    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->-get5(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->tileTitleDescription:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->-get3(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->tileSummary:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->intent:Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->-get2(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->metricsEvent:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;)V

    return-void
.end method
