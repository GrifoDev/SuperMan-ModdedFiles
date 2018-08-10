.class public Landroid/widget/Editor$SuggestionsPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestionsPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;,
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;
    }
.end annotation


# static fields
.field private static final MAX_NUMBER_SUGGESTIONS:I = 0x5

.field private static final USER_DICTIONARY_EXTRA_LOCALE:Ljava/lang/String; = "locale"

.field private static final USER_DICTIONARY_EXTRA_WORD:Ljava/lang/String; = "word"

.field private static final sSuggestionButtonTextColor:I = -0xb66143

.field private static final sSuggestionTextColor:I = -0xdadadb


# instance fields
.field private mAddToDictionaryButton:Landroid/widget/TextView;

.field private mButtonItemView:Landroid/widget/LinearLayout;

.field private mContainerMarginTop:I

.field private mContainerMarginWidth:I

.field private mContainerView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCursorWasVisibleBeforeSuggestions:Z

.field private mDeleteButton:Landroid/widget/TextView;

.field private mHighlightSpan:Landroid/text/style/TextAppearanceSpan;

.field private mIsShowingUp:Z

.field private final mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

.field private mNumberOfButtons:I

.field private mNumberOfSuggestions:I

.field private mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

.field private mSuggestionListView:Landroid/widget/ListView;

.field private mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/Editor$SuggestionsPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    return v0
.end method

.method static synthetic -get3(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/Editor$SuggestionSpanInfo;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/Editor$SuggestionsPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfButtons:I

    return v0
.end method

.method static synthetic -get6(Landroid/widget/Editor$SuggestionsPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    return v0
.end method

.method static synthetic -get7(Landroid/widget/Editor$SuggestionsPopupWindow;)[Landroid/widget/Editor$SuggestionInfo;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hideWithCleanUp()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    new-instance v0, Landroid/widget/Editor$SuggestionSpanInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/Editor$SuggestionSpanInfo;-><init>(Landroid/widget/Editor$SuggestionSpanInfo;)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-boolean v0, p1, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    return-void
.end method

.method private applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v3, v6, [I

    const v4, 0x1110053

    aput v4, v3, v5

    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const v2, 0x103024a

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v2, 0x103012b

    :cond_0
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v3

    :cond_1
    const v2, 0x103024b

    goto :goto_0
.end method

.method private clickButtons(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    if-ne p1, v8, :cond_4

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    invoke-static {v8, v9}, Landroid/widget/Editor;->-wrap1(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-ltz v5, :cond_1

    if-gt v4, v5, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-static {v0, v5, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "word"

    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "locale"

    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x10000000

    or-int/2addr v8, v9

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v8, v8, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v8}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    invoke-static {v0, v4}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8, v5, v4, v10}, Landroid/widget/Editor;->-wrap26(Landroid/widget/Editor;IIZ)V

    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hideWithCleanUp()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    if-ne p1, v8, :cond_3

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v8, v8, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v0, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v8, v8, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v0, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ltz v7, :cond_7

    if-le v6, v7, :cond_7

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v8

    if-ge v6, v8, :cond_6

    invoke-interface {v0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v7, :cond_5

    add-int/lit8 v8, v7, -0x1

    invoke-interface {v0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    :cond_6
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7, v6}, Landroid/widget/TextView;->deleteText_internal(II)V

    :cond_7
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hideWithCleanUp()V

    goto :goto_0
.end method

.method private hideWithCleanUp()V
    .locals 4

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionInfo;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    invoke-virtual {v1}, Landroid/widget/Editor$SuggestionSpanInfo;->clear()V

    invoke-virtual {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    return-void
.end method

.method private highlightTextDifferences(Landroid/widget/Editor$SuggestionInfo;II)V
    .locals 11

    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    iget-object v6, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v2, v6, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    iget-object v6, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v1, v6, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    sub-int v6, v2, p2

    iput v6, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    iget v6, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    iget-object v7, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    const-string/jumbo v5, ""

    :try_start_0
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const v8, -0xdadadb

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v8, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x21

    invoke-virtual {v6, v7, v9, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    invoke-interface {v3}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v6, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void

    :cond_0
    iget-object v6, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mHighlightSpan:Landroid/text/style/TextAppearanceSpan;

    iget-object v8, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x21

    invoke-virtual {v6, v7, v9, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v6, "Editor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "suggestionInfo.mText : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "Editor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unionStart : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", unionEnd : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "Editor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "spanStart : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", spanEnd : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private updateSuggestions()Z
    .locals 14

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spannable;

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get10(Landroid/widget/Editor;)Landroid/widget/Editor$SuggestionHelper;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    iget-object v13, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    invoke-virtual {v11, v12, v13}, Landroid/widget/Editor$SuggestionHelper;->getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I

    move-result v11

    iput v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    iget v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-nez v11, :cond_0

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v11, v11, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    if-nez v11, :cond_0

    const/4 v11, 0x0

    return v11

    :cond_0
    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ge v3, v11, :cond_1

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    aget-object v11, v11, v3

    iget-object v6, v11, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v11, v6, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v11, v6, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v11, v11, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    if-eqz v11, :cond_2

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v11, v11, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v11, v11, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ge v3, v11, :cond_4

    :try_start_0
    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    aget-object v11, v11, v3

    invoke-direct {p0, v11, v8, v7}, Landroid/widget/Editor$SuggestionsPopupWindow;->highlightTextDifferences(Landroid/widget/Editor$SuggestionInfo;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    aget-object v11, v11, v3

    iget-object v6, v11, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    const-string/jumbo v11, "Editor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mNumberOfSuggestions = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", i = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "Editor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "spanInfo.mSpanStart : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v6, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", spanInfo.mSpanEnd : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v6, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "Editor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "spanUnionStart : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", spanUnionEnd : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "Editor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mTextView.getText() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v11, v11, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    if-eqz v11, :cond_3

    const-string/jumbo v11, "Editor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mMisspelledSpanInfo.mSpanStart : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v13, v13, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", mMisspelledSpanInfo.mSpanEnd : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v13, v13, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v11, 0x0

    return v11

    :cond_4
    const/16 v1, 0x8

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v11, v11, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    if-eqz v11, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_5

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v11, v11, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    if-ltz v11, :cond_5

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v11, v11, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    iget-object v12, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v12, v12, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    if-le v11, v12, :cond_5

    const/4 v1, 0x0

    :cond_5
    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez v1, :cond_7

    const/4 v11, 0x2

    iput v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfButtons:I

    :goto_2
    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v11, v11, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    if-nez v11, :cond_6

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    new-instance v12, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct {v12}, Landroid/text/style/SuggestionRangeSpan;-><init>()V

    iput-object v12, v11, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    :cond_6
    iget v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-eqz v11, :cond_8

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v11, v11, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-virtual {v11}, Landroid/text/style/SuggestionSpan;->getUnderlineColor()I

    move-result v10

    :goto_3
    if-nez v10, :cond_9

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v11, v11, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    iget-object v12, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    iget v12, v12, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v11, v12}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    :goto_4
    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v11, v11, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    const/16 v12, 0x21

    invoke-interface {v9, v11, v8, v7, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-virtual {v11}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->notifyDataSetChanged()V

    const/4 v11, 0x1

    return v11

    :cond_7
    const/4 v11, 0x1

    iput v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfButtons:I

    goto :goto_2

    :cond_8
    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v11, v11, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-virtual {v11}, Landroid/text/style/SuggestionSpan;->getUnderlineColor()I

    move-result v10

    goto :goto_3

    :cond_9
    const v0, 0x3ecccccd    # 0.4f

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3ecccccd    # 0.4f

    mul-float/2addr v11, v12

    float-to-int v5, v11

    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v11, v11, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    const v12, 0xffffff

    and-int/2addr v12, v10

    shl-int/lit8 v13, v5, 0x18

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    goto :goto_4
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 3

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method protected createPopupWindow()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-void
.end method

.method public getContentViewForTesting()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getTextOffset()I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerMarginTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic hide()V
    .locals 0

    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    return-void
.end method

.method protected initContentView()V
    .locals 10

    const v9, 0x1020271

    const v8, 0x10201ca

    const/4 v7, 0x1

    const v6, -0xb66143    # -2.6799904E38f

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextEditSuggestionContainerLayout:I

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v4, 0x10204fc

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerMarginWidth:I

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerMarginTop:I

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mClippingLimitLeft:I

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mClippingLimitRight:I

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v4, 0x10204fb

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-direct {v3, p0, v5}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;)V

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    iget-object v4, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/widget/Editor$SuggestionInfo;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    new-instance v4, Landroid/widget/Editor$SuggestionInfo;

    invoke-direct {v4, v5}, Landroid/widget/Editor$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionInfo;)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x109016c

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mButtonItemView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mButtonItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mButtonItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iput v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfButtons:I

    return-void

    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/Editor$SuggestionsPopupWindow$1;

    invoke-direct {v4, p0}, Landroid/widget/Editor$SuggestionsPopupWindow$1;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/Editor$SuggestionsPopupWindow$2;

    invoke-direct {v4, p0}, Landroid/widget/Editor$SuggestionsPopupWindow$2;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public bridge synthetic isShowing()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isShowingUp()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    return v0
.end method

.method protected measureContent()V
    .locals 9

    const/high16 v8, -0x80000000

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ge v2, v7, :cond_0

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2, v5, v8}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, -0x2

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v4}, Landroid/widget/TextView;->measure(II)V

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_1
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v4}, Landroid/widget/TextView;->measure(II)V

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerMarginWidth:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v8, v4}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_2

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v7, v8}, Landroid/widget/Editor;->-set6(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_2
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    :cond_3
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x2

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfButtons:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->clickButtons(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfButtons:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->clickButtons(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfButtons:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-le p3, v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->clickButtons(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    aget-object v0, v1, p3

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1, v0}, Landroid/widget/Editor;->-wrap22(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hideWithCleanUp()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    aget-object v0, v1, p3

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1, v0}, Landroid/widget/Editor;->-wrap22(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hideWithCleanUp()V

    goto :goto_0
.end method

.method public onParentLostFocus()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    return-void
.end method

.method protected setUp()V
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextEditSuggestionHighlightStyle:I

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mHighlightSpan:Landroid/text/style/TextAppearanceSpan;

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap5(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->updateSuggestions()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    :cond_2
    return-void
.end method

.method public bridge synthetic updatePosition(IIZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Editor$PinnedPopupWindow;->updatePosition(IIZZ)V

    return-void
.end method
