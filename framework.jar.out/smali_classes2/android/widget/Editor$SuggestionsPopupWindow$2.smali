.class Landroid/widget/Editor$SuggestionsPopupWindow$2;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;->initContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    .line 3696
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3698
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v3, v3, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 3700
    .local v0, "editable":Landroid/text/Editable;
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v3, v3, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 3701
    .local v2, "spanUnionStart":I
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v3, v3, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 3702
    .local v1, "spanUnionEnd":I
    if-ltz v2, :cond_2

    if-le v1, v2, :cond_2

    .line 3705
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3706
    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    .line 3705
    if-eqz v3, :cond_1

    .line 3707
    if-eqz v2, :cond_0

    .line 3708
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    .line 3705
    if-eqz v3, :cond_1

    .line 3709
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 3711
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v3, v3, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 3713
    :cond_2
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v3}, Landroid/widget/Editor$SuggestionsPopupWindow;->-wrap0(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    .line 3697
    return-void
.end method
