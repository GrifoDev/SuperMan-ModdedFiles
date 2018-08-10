.class Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider$PrintManagerWrapper;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrintManagerWrapper"
.end annotation


# instance fields
.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "print"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider$PrintManagerWrapper;->mPrintManager:Landroid/print/PrintManager;

    return-void
.end method


# virtual methods
.method public getPrintServices(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider$PrintManagerWrapper;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0, p1}, Landroid/print/PrintManager;->getPrintServices(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
