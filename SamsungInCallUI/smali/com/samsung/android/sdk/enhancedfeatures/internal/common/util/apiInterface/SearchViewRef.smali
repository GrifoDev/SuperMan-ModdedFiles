.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SearchViewRef;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mSearchViewInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SearchViewInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SearchViewRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SearchViewRef;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SearchViewRef;->mSearchViewInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SearchViewInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoCompleteView()Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SearchViewRef;->mSearchViewInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SearchViewInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SearchViewInterface;->getAutoCompleteView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/widget/SearchView;)V
    .locals 2

    const-string v0, "Interface SE-SDL"

    const-string v1, "SearchView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;->getInstance(Landroid/widget/SearchView;)Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SearchViewRef;->mSearchViewInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SearchViewInterface;

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;->getInstance(Landroid/widget/SearchView;)Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSearchViewRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SearchViewRef;->mSearchViewInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SearchViewInterface;

    goto :goto_0
.end method

.method public static setActionModeMenuItemEnabled()V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SearchViewRef;->mSearchViewInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SearchViewInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SearchViewInterface;->setActionModeMenuItemEnabled()V

    return-void
.end method
