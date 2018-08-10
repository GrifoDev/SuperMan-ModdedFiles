.class public Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;
.super Landroid/widget/BaseAdapter;
.source "NavigationbarColorPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomGrid"
.end annotation


# instance fields
.field private final colorValue:[I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->colorValue:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;Landroid/content/Context;[I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->colorValue:[I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->colorValue:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const v0, 0x7f0d019f

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a055a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v0, 0x7f0a055c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v0, 0x7f0a055b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->colorValue:[I

    aget v0, v0, p1

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;ILandroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->-get2()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const/high16 v0, -0x1000000

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-object p2

    :cond_0
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
