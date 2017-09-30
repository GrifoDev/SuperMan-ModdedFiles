.class public Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SearchViewInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mSdlSearchViewRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;

.field private static mSearchView:Landroid/widget/SearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;->mSdlSearchViewRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;->mSearchView:Landroid/widget/SearchView;

    return-void
.end method

.method private constructor <init>(Landroid/widget/SearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;->mSearchView:Landroid/widget/SearchView;

    return-void
.end method

.method public static getInstance(Landroid/widget/SearchView;)Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;->mSdlSearchViewRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;-><init>(Landroid/widget/SearchView;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;->mSdlSearchViewRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;->mSdlSearchViewRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;

    return-object v0
.end method


# virtual methods
.method public getAutoCompleteView()Landroid/view/View;
    .locals 2

    const-string v0, "getSutoCompleteView"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;->mSearchView:Landroid/widget/SearchView;

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    return-object v0
.end method

.method public setActionModeMenuItemEnabled()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;->mSearchView:Landroid/widget/SearchView;

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setNewActionPopupMenu(IZ)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;->mSearchView:Landroid/widget/SearchView;

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setNewActionPopupMenu(IZ)V

    return-void
.end method
