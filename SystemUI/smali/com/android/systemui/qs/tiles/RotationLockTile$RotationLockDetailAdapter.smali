.class final Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;
.super Ljava/lang/Object;
.source "RotationLockTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/RotationLockTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RotationLockDetailAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile;Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    return-void
.end method

.method private updateRotationLock(Landroid/view/View;)V
    .locals 6

    const v4, 0x7f1302d2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    new-instance v2, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get3(Lcom/android/systemui/qs/tiles/RotationLockTile;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    const v5, 0x1020019

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get1(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400f6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->updateRotationLock(Landroid/view/View;)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x7b

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get1(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0437

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
