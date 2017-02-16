.class public abstract Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;
.super Ljava/lang/Object;
.source "AbsCocktailLoadablePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;,
        Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;
    }
.end annotation


# static fields
.field public static final LOADABLE_CONTENT_CLASS:Ljava/lang/String; = "content"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final PANEL_STATE_HIDE:I = 0x1

.field public static final PANEL_STATE_VISIBLE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCocktailContext:Landroid/content/Context;

.field protected mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

.field private mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    .line 102
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    .line 104
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 106
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 115
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "cocktailContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    .line 102
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    .line 104
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 106
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 126
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    .line 125
    return-void
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    return-object v0
.end method

.method public getOnCocktailClickHander()Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public onChangedDisplayPolicy(I)V
    .locals 0
    .param p1, "newDisplayPolicy"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    return-void
.end method

.method public onChangedReversedView(Z)V
    .locals 0
    .param p1, "isReversedViewMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    return-void
.end method

.method public abstract onClosePanel()V
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    return-void
.end method

.method public onPanelVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 186
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 196
    return-void
.end method

.method public setListener(Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 133
    return-void
.end method

.method public setOnCocktailClickHandler(Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;)V
    .locals 0
    .param p1, "onCocktailClickHandler"    # Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 149
    return-void
.end method
