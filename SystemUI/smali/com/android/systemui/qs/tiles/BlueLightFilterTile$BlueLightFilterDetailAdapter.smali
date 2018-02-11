.class final Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;
.super Ljava/lang/Object;
.source "BlueLightFilterTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BlueLightFilterTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BlueLightFilterDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$1;
    }
.end annotation


# static fields
.field private static final BLUELIGHTFILTER_STEP_MAX:I = 0xa


# instance fields
.field private final levelChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSlider:Landroid/widget/SeekBar;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->levelChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-static {}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "createDetailView  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get1(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400ee

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-wrap1(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V

    const v2, 0x7f1302c2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createDetailView  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get5(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get1(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter_opacity"

    const/4 v4, 0x5

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get6(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->levelChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_0
    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get1(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0445

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get6(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-wrap2(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return p1
.end method

.method public updateOpacity(I)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOpacity  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
