.class final Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;
.super Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;
.source "SupportItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private mCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTollFreePhone:Lcom/android/settings/support/SupportPhone;

.field private mTolledPhone:Lcom/android/settings/support/SupportPhone;


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->mCountries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;)Lcom/android/settings/support/SupportPhone;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->mTollFreePhone:Lcom/android/settings/support/SupportPhone;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;)Lcom/android/settings/support/SupportPhone;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->mTolledPhone:Lcom/android/settings/support/SupportPhone;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0d02ff

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method bridge synthetic build()Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->build()Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;

    move-result-object v0

    return-object v0
.end method

.method build()Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;
    .locals 2

    new-instance v0, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;)V

    return-object v0
.end method

.method bridge synthetic build()Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->build()Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;

    move-result-object v0

    return-object v0
.end method

.method setCountries(Ljava/util/List;)Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->mCountries:Ljava/util/List;

    return-object p0
.end method

.method setTollFreePhone(Lcom/android/settings/support/SupportPhone;)Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->mTollFreePhone:Lcom/android/settings/support/SupportPhone;

    return-object p0
.end method

.method setTolledPhone(Lcom/android/settings/support/SupportPhone;)Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->mTolledPhone:Lcom/android/settings/support/SupportPhone;

    return-object p0
.end method
