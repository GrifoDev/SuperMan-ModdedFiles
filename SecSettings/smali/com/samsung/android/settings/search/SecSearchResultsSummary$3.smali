.class Lcom/samsung/android/settings/search/SecSearchResultsSummary$3;
.super Ljava/lang/Object;
.source "SecSearchResultsSummary.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/SecSearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/search/SecSearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/search/SecSearchResultsSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$3;->this$0:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$3;->this$0:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    :cond_0
    return-void
.end method
