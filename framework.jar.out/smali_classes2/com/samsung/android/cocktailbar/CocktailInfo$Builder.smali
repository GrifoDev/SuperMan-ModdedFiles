.class public Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
.super Ljava/lang/Object;
.source "CocktailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCategory:I

.field private mClassInfo:Landroid/content/ComponentName;

.field private mContentInfo:Landroid/os/Bundle;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mDisplayPolicy:I

.field private mHelpView:Landroid/widget/RemoteViews;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    .line 58
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    .line 60
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    .line 62
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    .line 64
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 66
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mHelpView:Landroid/widget/RemoteViews;

    .line 68
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    .line 70
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mClassInfo:Landroid/content/ComponentName;

    .line 73
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/cocktailbar/CocktailInfo;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;-><init>()V

    .line 113
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-set6(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 114
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-set4(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 115
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-set0(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 116
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-set3(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 117
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mHelpView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-set5(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 118
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-set7(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 119
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-set2(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 120
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mClassInfo:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-set1(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 121
    return-object v0
.end method

.method public setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "category"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    .line 88
    return-object p0
.end method

.method public setClassloader(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "classInfo"    # Landroid/content/ComponentName;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mClassInfo:Landroid/content/ComponentName;

    .line 108
    return-object p0
.end method

.method public setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    .line 98
    return-object p0
.end method

.method public setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 93
    return-object p0
.end method

.method public setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "displayPolicy"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    .line 83
    return-object p0
.end method

.method public setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mHelpView:Landroid/widget/RemoteViews;

    .line 103
    return-object p0
.end method

.method public setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    .line 78
    return-object p0
.end method
