.class Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "LewaManageAutostarts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/autostarts/LewaManageAutostarts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppAdapter"
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field protected inflater:Landroid/view/LayoutInflater;

.field protected list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/autostarts/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;


# direct methods
.method public constructor <init>(Lcom/android/settings/autostarts/LewaManageAutostarts;Landroid/view/LayoutInflater;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/settings/autostarts/AppItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/autostarts/AppItem;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/autostarts/AppItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->getItem(I)Lcom/android/settings/autostarts/AppItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x1

    if-nez p2, :cond_0

    iget-object v5, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    invoke-static {v5}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$600(Lcom/android/settings/autostarts/LewaManageAutostarts;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04038b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v5, 0x7f1100e4

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->getItem(I)Lcom/android/settings/autostarts/AppItem;

    move-result-object v5

    iget-object v2, v5, Lcom/android/settings/autostarts/AppItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x7f110898

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->getItem(I)Lcom/android/settings/autostarts/AppItem;

    move-result-object v5

    iget-object v4, v5, Lcom/android/settings/autostarts/AppItem;->appName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v5, 0x7f1101f5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->getItem(I)Lcom/android/settings/autostarts/AppItem;

    move-result-object v5

    iget-object v4, v5, Lcom/android/settings/autostarts/AppItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v4, v5, Lcom/android/settings/autostarts/AppItem;->isSystem:I

    if-eqz v4, :cond_1

    const v4, -0x560000

    goto :goto_0

    :cond_1
    const v4, -0x1000000

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v5, 0x7f110150

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->getItem(I)Lcom/android/settings/autostarts/AppItem;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/settings/autostarts/AppItem;->checked:Z

    if-eqz v5, :cond_2

    invoke-virtual {v1, v8}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    return-object p2

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public remove(Lcom/android/settings/autostarts/AppItem;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public sort()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method
