.class public Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SearchViewInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mSearchView:Landroid/widget/SearchView;

.field private static mSemSearchViewRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;->mSemSearchViewRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;->mSearchView:Landroid/widget/SearchView;

    return-void
.end method

.method private constructor <init>(Landroid/widget/SearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;->mSearchView:Landroid/widget/SearchView;

    return-void
.end method

.method public static getInstance(Landroid/widget/SearchView;)Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;->mSemSearchViewRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;-><init>(Landroid/widget/SearchView;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;->mSemSearchViewRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;->mSemSearchViewRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;

    return-object v0
.end method


# virtual methods
.method public getAutoCompleteView()Landroid/view/View;
    .locals 2

    const-string v0, "getAutoCompleteView"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    return-object v0
.end method

.method public setActionModeMenuItemEnabled()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/widget/AutoCompleteTextView;->semSetActionModeMenuItemEnabled(IZ)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSearchViewRef;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/widget/AutoCompleteTextView;->semSetActionModeMenuItemEnabled(IZ)V

    return-void
.end method
