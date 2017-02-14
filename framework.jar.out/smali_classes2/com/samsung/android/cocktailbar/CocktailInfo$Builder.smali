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

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mHelpView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mClassInfo:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/cocktailbar/CocktailInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;-><init>()V

    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-set6(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-set4(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-set0(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-set3(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mHelpView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-set5(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-set7(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-set2(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mClassInfo:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-set1(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    return-object v0
.end method

.method public setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    return-object p0
.end method

.method public setClassloader(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mClassInfo:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    return-object p0
.end method

.method public setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    return-object p0
.end method

.method public setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mHelpView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    return-object p0
.end method
