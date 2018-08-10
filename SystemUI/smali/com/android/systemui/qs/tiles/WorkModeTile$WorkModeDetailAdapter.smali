.class final Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;
.super Ljava/lang/Object;
.source "WorkModeTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WorkModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkModeDetailAdapter"
.end annotation


# instance fields
.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/WorkModeTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/WorkModeTile;Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WorkModeTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WorkModeTile;->-get0(Lcom/android/systemui/qs/tiles/WorkModeTile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d014b

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f0a0331

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->mSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WorkModeTile;->-get1(Lcom/android/systemui/qs/tiles/WorkModeTile;)Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WorkModeTile;->-get0(Lcom/android/systemui/qs/tiles/WorkModeTile;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WorkModeTile;->-wrap0(Lcom/android/systemui/qs/tiles/WorkModeTile;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WorkModeTile;->-get0(Lcom/android/systemui/qs/tiles/WorkModeTile;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120950

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x101

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->-get0(Lcom/android/systemui/qs/tiles/WorkModeTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12094f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->-get3(Lcom/android/systemui/qs/tiles/WorkModeTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->-get2(Lcom/android/systemui/qs/tiles/WorkModeTile;)Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->setWorkModeEnabled(Z)V

    return p1
.end method
