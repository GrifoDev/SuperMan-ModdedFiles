.class public Lcom/android/systemui/recents/views/AbstractHelpPopup;
.super Ljava/lang/Object;
.source "AbstractHelpPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/AbstractHelpPopup$-void__init__android_content_Context_context_java_lang_String_name_int_numPages_LambdaImpl0;,
        Lcom/android/systemui/recents/views/AbstractHelpPopup$1;,
        Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;
    }
.end annotation


# instance fields
.field protected PAGE_FIRST:I

.field protected PAGE_LAST:I

.field protected final STATE_DO_NOT_SHOW:I

.field private mButton:Landroid/widget/Button;

.field mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHandler:Landroid/os/Handler;

.field private mHelpContentGroup:Landroid/view/ViewGroup;

.field private mHelpDialog:Landroid/app/AlertDialog;

.field private mHelpHubText:Lcom/android/systemui/recents/misc/HelpHubTextView;

.field private mHelpImage:Landroid/widget/ImageView;

.field private mHelpRootView:Landroid/view/ViewGroup;

.field private mPageState:I

.field private mPopupName:Ljava/lang/String;

.field showRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->STATE_DO_NOT_SHOW:I

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHandler:Landroid/os/Handler;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;-><init>(Lcom/android/systemui/recents/views/AbstractHelpPopup;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mPopupName:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->PAGE_FIRST:I

    add-int/lit8 v2, p3, -0x1

    iput v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->PAGE_LAST:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04011d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f13032a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpRootView:Landroid/view/ViewGroup;

    const v2, 0x7f13032b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpContentGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpContentGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAccessibilityLiveRegion(I)V

    const v2, 0x7f13032c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpImage:Landroid/widget/ImageView;

    const v2, 0x7f13032d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/misc/HelpHubTextView;

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpHubText:Lcom/android/systemui/recents/misc/HelpHubTextView;

    const v2, 0x7f13032e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/systemui/recents/views/AbstractHelpPopup$-void__init__android_content_Context_context_java_lang_String_name_int_numPages_LambdaImpl0;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/AbstractHelpPopup$-void__init__android_content_Context_context_java_lang_String_name_int_numPages_LambdaImpl0;-><init>(Lcom/android/systemui/recents/views/AbstractHelpPopup;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    const v4, 0x7f10022b

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->create()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public static getPersistentState(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "PREF_KEY_SHOW"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setPage(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->updatePage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mPageState:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->PAGE_LAST:I

    if-le p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->setPersistentState(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mPageState:I

    goto :goto_0
.end method

.method private updatePage(I)Z
    .locals 4

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->PAGE_LAST:I

    if-le p1, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->isValidContent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->imageResId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->contentDescResId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpHubText:Lcom/android/systemui/recents/misc/HelpHubTextView;

    iget v2, v0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->textResId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/HelpHubTextView;->changeText(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpContentGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->contentDescResId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    iget v2, v0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->btnTextResId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    const/4 v1, 0x1

    return v1

    :cond_1
    return v2
.end method


# virtual methods
.method synthetic -com_android_systemui_recents_views_AbstractHelpPopup_lambda$1(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mPageState:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->setPage(I)V

    return-void
.end method

.method public addContent(IIII)V
    .locals 7

    iget-object v6, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;-><init>(Lcom/android/systemui/recents/views/AbstractHelpPopup;IIII)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public initialize(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mPopupName:Ljava/lang/String;

    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->PAGE_LAST:I

    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->PAGE_FIRST:I

    iput v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mPageState:I

    return-void
.end method

.method protected setPersistentState(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mPopupName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "PREF_KEY_SHOW"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public show()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showInternal()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mPageState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->PAGE_FIRST:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->setPage(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->updateContentsSize()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method public updateContentsSize()V
    .locals 4

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
