.class public Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppShortcutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->setSelected(Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040168

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f110459

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;-><init>(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private setSelected(Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->saveApplicationData(Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const v5, 0x7f110459

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    if-eqz p2, :cond_2

    move-object v3, p2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v4, 0x7f110147

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f110146

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    iget-object v4, v4, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    iget-object v4, v4, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    iget-object v4, v4, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    iget-object v4, v4, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v4}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get4(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    iget-boolean v4, v4, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mIsActive:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_1
    return-object v3

    :cond_2
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    const v4, 0x3ebd70a4    # 0.37f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1
.end method
