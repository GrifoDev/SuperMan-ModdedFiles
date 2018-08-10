.class Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;
.super Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
.source "SupportItemAdapter.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SupportItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EscalationData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;
    }
.end annotation


# instance fields
.field final enabled1:Z

.field final enabled2:Z

.field final summary1:Ljava/lang/CharSequence;

.field final summary2:Ljava/lang/CharSequence;

.field final text1:I

.field final text2:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;)V

    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->-get4(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->text1:I

    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->-get5(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->text2:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->-get2(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->summary1:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->-get3(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->summary2:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->-get0(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->enabled1:Z

    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->enabled2:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)V

    return-void
.end method
