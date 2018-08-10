.class final Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;
.super Ljava/lang/Object;
.source "WifiCallingSprTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingSprTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiCallingDetailAdapter"
.end annotation


# instance fields
.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->updateItems(Z)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)V

    return-void
.end method

.method private updateItems(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f12087d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f12087c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-get2(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d014e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0a0509

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a059e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-get2(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isSprVowifiExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-wrap4(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f12087d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    return-object p2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f12087c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1391

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-get5(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getToggleEnabled()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-get5(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-get5(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-wrap5(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->fireToggleStateChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-wrap6(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-get0(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setToggleState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method
