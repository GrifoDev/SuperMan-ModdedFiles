.class public abstract Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;
.super Ljava/lang/Object;
.source "SemAbsCocktailLoadablePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;,
        Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;
    }
.end annotation


# static fields
.field public static final EXTRA_CONFIGURATION_KEY_POSITION:Ljava/lang/String; = "cocktail_position"

.field public static final POSITION_ON_BOTTOM:I = 0x3

.field public static final POSITION_ON_LEFT:I = 0x0

.field public static final POSITION_ON_RIGHT:I = 0x1

.field public static final POSITION_ON_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCocktailContext:Landroid/content/Context;

.field protected mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

.field private mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract getView()Landroid/view/View;
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDestroy()V
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPostResume()V
    .locals 0

    return-void
.end method

.method public onReceiveContentInfo(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public performOnClickInCocktailBar(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CocktailClickHandler was not set yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public requestCocktailBarOpen()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "open_panel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;->sendOptions(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "CocktailLoadablePanelListener was not set yet"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setListener(Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    return-void
.end method

.method public setOnCocktailClickHander(Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;

    return-void
.end method
