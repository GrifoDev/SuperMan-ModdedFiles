.class final Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;
.super Ljava/lang/Object;
.source "RedPacketTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/RedPacketTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RedPacketDetailAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/RedPacketTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/RedPacketTile;Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/RedPacketTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-get1(Lcom/android/systemui/qs/tiles/RedPacketTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400f9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    const v0, 0x7f1301fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-set0(Lcom/android/systemui/qs/tiles/RedPacketTile;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-get5(Lcom/android/systemui/qs/tiles/RedPacketTile;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-wrap1(Lcom/android/systemui/qs/tiles/RedPacketTile;)Ljava/lang/String;

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
    .locals 1

    invoke-static {}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-get0()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-get1(Lcom/android/systemui/qs/tiles/RedPacketTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0661

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-get4(Lcom/android/systemui/qs/tiles/RedPacketTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-wrap0(Lcom/android/systemui/qs/tiles/RedPacketTile;)Z

    move-result v0

    const-string/jumbo v2, "RedPacketTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleClick enable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-get2(Lcom/android/systemui/qs/tiles/RedPacketTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-wrap3(Lcom/android/systemui/qs/tiles/RedPacketTile;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-wrap2(Lcom/android/systemui/qs/tiles/RedPacketTile;Z)V

    :goto_1
    return p1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v2, v5}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-wrap2(Lcom/android/systemui/qs/tiles/RedPacketTile;Z)V

    goto :goto_1
.end method
