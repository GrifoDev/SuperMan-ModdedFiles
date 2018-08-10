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

    const-class v0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    return-object v0
.end method

.method public getOnCocktailClickHander()Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public onChangedDisplayPolicy(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onChangedReversedView(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract onClosePanel()V
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPanelVisibilityChanged(I)V
    .locals 0

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    return-void
.end method

.method public setOnCocktailClickHandler(Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    return-void
.end method
