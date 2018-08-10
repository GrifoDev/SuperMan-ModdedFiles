.class final Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;
.super Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;
.source "SupportItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SupportItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfflineEscalationData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;
    }
.end annotation


# instance fields
.field final countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final tollFreePhone:Lcom/android/settings/support/SupportPhone;

.field final tolledPhone:Lcom/android/settings/support/SupportPhone;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;)V

    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->-get0(Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->countries:Ljava/util/List;

    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;)Lcom/android/settings/support/SupportPhone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->tollFreePhone:Lcom/android/settings/support/SupportPhone;

    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->-get2(Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;)Lcom/android/settings/support/SupportPhone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->tolledPhone:Lcom/android/settings/support/SupportPhone;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;)V

    return-void
.end method
