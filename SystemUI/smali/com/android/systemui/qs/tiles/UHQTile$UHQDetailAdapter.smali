.class final Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;
.super Ljava/lang/Object;
.source "UHQTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/UHQTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UHQDetailAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UHQTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/UHQTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/UHQTile;Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/UHQTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UHQTile;->-get1(Lcom/android/systemui/qs/tiles/UHQTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d014b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    const v0, 0x7f0a0331

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/UHQTile;->-set1(Lcom/android/systemui/qs/tiles/UHQTile;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UHQTile;->-get3(Lcom/android/systemui/qs/tiles/UHQTile;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UHQTile;->-wrap5(Lcom/android/systemui/qs/tiles/UHQTile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getTileString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/UHQTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UHQTile;->-get1(Lcom/android/systemui/qs/tiles/UHQTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120b56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UHQTile;->-get2(Lcom/android/systemui/qs/tiles/UHQTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isToggleUnavailable()Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "UHQTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isToggleUnavailable()  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/UHQTile;->-get0(Lcom/android/systemui/qs/tiles/UHQTile;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UHQTile;->-get0(Lcom/android/systemui/qs/tiles/UHQTile;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UHQTile;->-wrap2(Lcom/android/systemui/qs/tiles/UHQTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UHQTile;->-wrap1(Lcom/android/systemui/qs/tiles/UHQTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UHQTile;->-wrap0(Lcom/android/systemui/qs/tiles/UHQTile;)Z

    move-result v0

    :cond_0
    xor-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UHQTile;->-wrap4(Lcom/android/systemui/qs/tiles/UHQTile;)Z

    move-result v0

    const-string/jumbo v1, "UHQTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setToggleState enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UHQTile;->-wrap3(Lcom/android/systemui/qs/tiles/UHQTile;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UHQTile;->-get1(Lcom/android/systemui/qs/tiles/UHQTile;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/UHQTile;->-get1(Lcom/android/systemui/qs/tiles/UHQTile;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120b57

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v1, v4}, Lcom/android/systemui/qs/tiles/UHQTile;->-wrap6(Lcom/android/systemui/qs/tiles/UHQTile;Z)V

    :goto_0
    return p1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/UHQTile;->-wrap6(Lcom/android/systemui/qs/tiles/UHQTile;Z)V

    goto :goto_0
.end method
