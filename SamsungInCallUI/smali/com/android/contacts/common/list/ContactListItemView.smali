.class public Lcom/android/contacts/common/list/ContactListItemView;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;,
        Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;
    }
.end annotation


# static fields
.field private static final ao:Ljava/util/regex/Pattern;


# instance fields
.field private A:Landroid/widget/QuickContactBadge;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/ImageView;

.field private J:Landroid/widget/CheckBox;

.field private K:Landroid/widget/ImageView;

.field private L:Landroid/widget/ImageView;

.field private M:Landroid/content/res/ColorStateList;

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private a:I

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private final ag:Landroid/database/CharArrayBuffer;

.field private final ah:Landroid/database/CharArrayBuffer;

.field private ai:Z

.field private aj:Z

.field private ak:Landroid/graphics/Rect;

.field private final al:Lcom/android/contacts/common/format/TextHighlighter;

.field private am:Ljava/lang/CharSequence;

.field private an:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

.field private u:Z

.field private v:Z

.field private w:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private x:Landroid/widget/TextView;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactListItemView;->ao:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/16 v1, 0x10

    const/4 v4, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->a:I

    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->b:I

    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->c:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->d:I

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->e:I

    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->f:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->k:I

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->l:I

    iput v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->o:I

    iput v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->p:I

    iput-boolean v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->u:Z

    iput-boolean v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->v:Z

    invoke-static {v5}, Lcom/android/contacts/common/list/ContactListItemView;->a(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->w:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    iput-boolean v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->z:Z

    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->N:I

    iput-boolean v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->S:Z

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->U:I

    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->ag:Landroid/database/CharArrayBuffer;

    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->ah:Landroid/database/CharArrayBuffer;

    iput-boolean v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->aj:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->ak:Landroid/graphics/Rect;

    sget-object v0, Lcom/android/incallui/R$styleable;->ContactListItemView:[I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/R$styleable;->ContactListItemView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->a:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->a:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->j:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x9

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->b:I

    const/16 v1, 0xa

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->c:I

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->d:I

    const/16 v1, 0xc

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->e:I

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->N:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->N:I

    const/16 v1, 0x1a

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->f:I

    const/16 v1, 0x2c

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->g:I

    const/16 v1, 0x1c

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->p:I

    const/16 v1, 0x1d

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->o:I

    const/16 v1, 0x2a

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->U:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->U:I

    const/16 v1, 0x2b

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0419

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->h:I

    const/16 v1, 0x2d

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->k:I

    const/16 v1, 0x2e

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->l:I

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setPaddingRelative(IIII)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    new-instance v0, Lcom/android/contacts/common/format/TextHighlighter;

    invoke-direct {v0, v6}, Lcom/android/contacts/common/format/TextHighlighter;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->al:Lcom/android/contacts/common/format/TextHighlighter;

    sget-object v0, Lcom/android/incallui/R$styleable;->Theme:[I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->M:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0426

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->i:I

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/ContactListItemView;->setLayoutDirection(I)V

    return-void
.end method

.method public static final a(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->b:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    :goto_0
    return-object v0

    :pswitch_0
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->a:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->b:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->a:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->t:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    return-object v0
.end method

.method private a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    move v0, p2

    move v1, p3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v2, p2, -0x1

    move v4, v1

    move v3, v1

    move v1, p2

    :goto_2
    const/4 v5, -0x1

    if-le v2, v5, :cond_2

    if-lez v4, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v2

    move v3, v4

    :cond_0
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    if-lez v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    :cond_3
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v1, :cond_5

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    move v0, p2

    move v1, p3

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/SearchUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p1, v2}, Lcom/android/contacts/common/util/SearchUtil;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/util/SearchUtil$MatchedLine;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, v0, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_4

    iget-object v2, v0, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->b:Ljava/lang/String;

    iget v0, v0, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->a:I

    invoke-direct {p0, v2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->b:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/contacts/common/list/ContactListItemView;->ao:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private final a(FF)Z
    .locals 2

    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->m:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->n:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/contacts/common/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->an:I

    return v0
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->S:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->P:I

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->O:I

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->B:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->Q:Z

    if-nez v0, :cond_0

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->O:I

    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->R:Z

    if-nez v0, :cond_1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->P:I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->S:Z

    :cond_2
    return-void
.end method

.method private getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object v0
.end method

.method private getTextEllipsis()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(ZZ)V

    return-void
.end method

.method public a(Landroid/database/Cursor;I)V
    .locals 9

    const/16 v8, 0x5d

    const/16 v7, 0x5b

    const/16 v6, 0xa

    const/4 v0, 0x0

    const/4 v5, -0x1

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-le v1, p2, :cond_0

    const-string v1, "snippet"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "deferred_snippeting"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "deferred_snippeting_query"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "display_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-direct {p0, v3, v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_3

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-eq v0, v5, :cond_8

    add-int/lit8 v0, v0, 0x1

    :goto_2
    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v5, :cond_7

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v5, :cond_7

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    if-ge v0, v1, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_5

    if-eq v4, v8, :cond_5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    move-object v0, v3

    goto :goto_1
.end method

.method public a(Landroid/database/Cursor;II)V
    .locals 6

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setDisplayName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->A:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->A:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090545

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->al:Lcom/android/contacts/common/format/TextHighlighter;

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->a(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v3

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->b(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/contacts/common/format/TextHighlighter;->a(Landroid/text/SpannableString;II)V

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0
.end method

.method public a(ZLcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;I)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->u:Z

    iput-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->t:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    iput p3, p0, Lcom/android/contacts/common/list/ContactListItemView;->an:I

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->u:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->K:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->K:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->K:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->K:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090546

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->K:Landroid/widget/ImageView;

    const v1, 0x7f020188

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->K:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->K:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->K:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/contacts/common/list/ContactListItemView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/list/ContactListItemView$1;-><init>(Lcom/android/contacts/common/list/ContactListItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->K:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->K:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->S:Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->Q:Z

    iput-boolean p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->R:Z

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->B:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->B:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->B:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->A:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->A:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->A:Landroid/widget/QuickContactBadge;

    :cond_1
    return-void
.end method

.method protected a(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->aj:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->ak:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->ak:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->ak:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->ak:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method public b(Landroid/database/Cursor;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/contacts/common/ContactPresenceIconUtil;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/contacts/common/ContactStatusUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setStatus(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_2

    :cond_1
    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->ai:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->ai:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->J:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->J:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->J:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->J:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->J:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getDataView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01a6

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    const v1, 0x7f100004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDefaultPhotoViewSize()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->N:I

    return v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 4

    const/4 v2, -0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01a6

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->w:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v1, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->a:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    const v1, 0x7f100005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->U:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    const v1, 0x7f100006

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoneticNameTextView()Landroid/widget/TextView;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    const v1, 0x7f100007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhotoPosition()Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->w:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    return-object v0
.end method

.method public getPhotoView()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->B:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->B:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->B:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->B:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->B:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->S:Z

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->B:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->z:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QuickContact is disabled for this view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->A:Landroid/widget/QuickContactBadge;

    if-nez v0, :cond_3

    new-instance v0, Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->A:Landroid/widget/QuickContactBadge;

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->A:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->A:Landroid/widget/QuickContactBadge;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->A:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090545

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->A:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    iput-boolean v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->S:Z

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->A:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getSnippetView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStatusView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->M:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->ai:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    sub-int v4, p5, p3

    sub-int v0, p4, p2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p0}, Lcom/android/contacts/common/util/ViewUtil;->b(Landroid/view/View;)Z

    move-result v6

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->y:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->x:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v5

    sub-int/2addr v0, v7

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->g:I

    add-int v8, v0, v3

    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->x:Landroid/widget/TextView;

    if-eqz v6, :cond_11

    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->i:I

    sub-int v0, v1, v0

    move v3, v0

    :goto_0
    if-eqz v6, :cond_12

    move v0, v1

    :goto_1
    add-int/2addr v7, v8

    invoke-virtual {v9, v3, v8, v0, v7}, Landroid/widget/TextView;->layout(IIII)V

    :cond_0
    if-eqz v6, :cond_13

    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->i:I

    sub-int/2addr v1, v0

    move v0, v2

    :goto_2
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->ak:Landroid/graphics/Rect;

    add-int v3, p2, v0

    add-int v7, p2, v1

    invoke-virtual {v2, v3, v5, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    add-int v2, p2, v0

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->m:I

    add-int v2, p2, v1

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->n:I

    iget-boolean v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->y:Z

    if-eqz v2, :cond_1

    if-eqz v6, :cond_14

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->b:I

    sub-int/2addr v1, v2

    :cond_1
    :goto_3
    iget-boolean v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->ai:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->j:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->ak:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_2
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->J:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    sub-int v2, v4, v5

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->ad:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->w:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v7, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->a:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v3, v7, :cond_15

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->J:Landroid/widget/CheckBox;

    iget v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->ae:I

    sub-int v7, v1, v7

    iget v8, p0, Lcom/android/contacts/common/list/ContactListItemView;->ad:I

    add-int/2addr v8, v2

    invoke-virtual {v3, v7, v2, v1, v8}, Landroid/widget/CheckBox;->layout(IIII)V

    :cond_3
    :goto_4
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->A:Landroid/widget/QuickContactBadge;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->A:Landroid/widget/QuickContactBadge;

    :goto_5
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->w:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v7, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->a:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v3, v7, :cond_18

    if-eqz v2, :cond_17

    sub-int v3, v4, v5

    iget v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->P:I

    sub-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    iget v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->O:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/android/contacts/common/list/ContactListItemView;->P:I

    add-int/2addr v8, v3

    invoke-virtual {v2, v0, v3, v7, v8}, Landroid/view/View;->layout(IIII)V

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->O:I

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->b:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    :cond_4
    :goto_6
    iget-boolean v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->v:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->K:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    sub-int v2, v4, v5

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->k:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    if-nez v6, :cond_1b

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->K:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->k:I

    sub-int v7, v1, v7

    iget v8, p0, Lcom/android/contacts/common/list/ContactListItemView;->k:I

    add-int/2addr v8, v2

    invoke-virtual {v3, v7, v2, v1, v8}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_5
    :goto_7
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->w:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v3, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->a:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v2, v3, :cond_1c

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->k:I

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->l:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    :cond_6
    :goto_8
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->T:I

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->V:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->af:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->ab:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->ac:I

    add-int/2addr v2, v3

    add-int v3, v4, v5

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->g:I

    add-int v4, v2, v3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->L:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->L:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->ae:I

    if-lez v2, :cond_1d

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->ae:I

    iget v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->b:I

    add-int/2addr v2, v5

    :goto_9
    iget-object v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->w:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v7, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->a:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v5, v7, :cond_1e

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->L:Landroid/widget/ImageView;

    sub-int v7, v1, v3

    sub-int/2addr v7, v2

    sub-int v2, v1, v2

    iget v8, p0, Lcom/android/contacts/common/list/ContactListItemView;->T:I

    add-int/2addr v8, v4

    invoke-virtual {v5, v7, v4, v2, v8}, Landroid/widget/ImageView;->layout(IIII)V

    move v2, v3

    :cond_7
    :goto_a
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->ae:I

    if-lez v3, :cond_1f

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->ae:I

    iget v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->b:I

    add-int/2addr v3, v5

    :goto_b
    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->w:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v5, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->a:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v3, v5, :cond_20

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    sub-int v2, v1, v2

    iget v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->T:I

    add-int/2addr v5, v4

    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/widget/TextView;->layout(IIII)V

    :cond_8
    :goto_c
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->L:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_9
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->T:I

    add-int v3, v4, v2

    :goto_d
    if-eqz v6, :cond_21

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    sub-int v5, v1, v2

    iget v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->ac:I

    add-int/2addr v7, v3

    invoke-virtual {v4, v5, v3, v1, v7}, Landroid/widget/ImageView;->layout(IIII)V

    iget v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->d:I

    add-int/2addr v2, v4

    sub-int v2, v1, v2

    :goto_e
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->ac:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v0, v3, v2, v5}, Landroid/widget/TextView;->layout(IIII)V

    :cond_a
    :goto_f
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_b
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->ac:I

    add-int/2addr v2, v3

    :goto_10
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->V:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/widget/TextView;->layout(IIII)V

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->V:I

    add-int/2addr v2, v3

    :cond_c
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_24

    if-nez v6, :cond_22

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->af:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->W:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->af:I

    add-int/2addr v5, v2

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->c:I

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    move v10, v3

    move v3, v1

    move v1, v10

    :goto_11
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-nez v6, :cond_23

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->af:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->aa:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->af:I

    add-int/2addr v6, v2

    invoke-virtual {v4, v1, v5, v3, v6}, Landroid/widget/TextView;->layout(IIII)V

    :cond_d
    :goto_12
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->af:I

    add-int/2addr v2, v1

    :cond_f
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->ab:I

    add-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    :cond_10
    return-void

    :cond_11
    move v3, v2

    goto/16 :goto_0

    :cond_12
    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->i:I

    add-int/2addr v0, v2

    goto/16 :goto_1

    :cond_13
    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->i:I

    add-int/2addr v0, v2

    goto/16 :goto_2

    :cond_14
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->b:I

    add-int/2addr v0, v2

    goto/16 :goto_3

    :cond_15
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->J:Landroid/widget/CheckBox;

    iget v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->ae:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/android/contacts/common/list/ContactListItemView;->ad:I

    add-int/2addr v8, v2

    invoke-virtual {v3, v0, v2, v7, v8}, Landroid/widget/CheckBox;->layout(IIII)V

    goto/16 :goto_4

    :cond_16
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->B:Landroid/widget/ImageView;

    goto/16 :goto_5

    :cond_17
    iget-boolean v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->Q:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->O:I

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->b:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    goto/16 :goto_6

    :cond_18
    if-eqz v2, :cond_1a

    sub-int v3, v4, v5

    iget v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->P:I

    sub-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    iget v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->O:I

    sub-int v7, v1, v7

    iget v8, p0, Lcom/android/contacts/common/list/ContactListItemView;->P:I

    add-int/2addr v8, v3

    invoke-virtual {v2, v7, v3, v1, v8}, Landroid/view/View;->layout(IIII)V

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->O:I

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->b:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    :cond_19
    :goto_13
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->f:I

    add-int/2addr v0, v2

    goto/16 :goto_6

    :cond_1a
    iget-boolean v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->Q:Z

    if-eqz v2, :cond_19

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->O:I

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->b:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    goto :goto_13

    :cond_1b
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->K:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->k:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/android/contacts/common/list/ContactListItemView;->k:I

    add-int/2addr v8, v2

    invoke-virtual {v3, v0, v2, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_7

    :cond_1c
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->k:I

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->l:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    goto/16 :goto_8

    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_1e
    iget-object v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->L:Landroid/widget/ImageView;

    add-int v7, v0, v2

    add-int v8, v0, v3

    add-int/2addr v2, v8

    iget v8, p0, Lcom/android/contacts/common/list/ContactListItemView;->T:I

    add-int/2addr v8, v4

    invoke-virtual {v5, v7, v4, v2, v8}, Landroid/widget/ImageView;->layout(IIII)V

    move v2, v3

    goto/16 :goto_a

    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_b

    :cond_20
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    add-int/2addr v2, v0

    iget v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->T:I

    add-int/2addr v5, v4

    invoke-virtual {v3, v2, v4, v1, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_c

    :cond_21
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    add-int v5, v0, v2

    iget v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->ac:I

    add-int/2addr v7, v3

    invoke-virtual {v4, v0, v3, v5, v7}, Landroid/widget/ImageView;->layout(IIII)V

    iget v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->d:I

    add-int/2addr v2, v4

    add-int/2addr v2, v0

    :goto_14
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->ac:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v2, v3, v1, v5}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_f

    :cond_22
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v1, v5

    iget v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->af:I

    add-int/2addr v7, v2

    iget v8, p0, Lcom/android/contacts/common/list/ContactListItemView;->W:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/contacts/common/list/ContactListItemView;->af:I

    add-int/2addr v8, v2

    invoke-virtual {v4, v5, v7, v1, v8}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->c:I

    add-int/2addr v4, v5

    sub-int/2addr v1, v4

    move v10, v3

    move v3, v1

    move v1, v10

    goto/16 :goto_11

    :cond_23
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    iget v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->af:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->aa:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->af:I

    add-int/2addr v6, v2

    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_12

    :cond_24
    move v3, v1

    move v1, v0

    goto/16 :goto_11

    :cond_25
    move v2, v3

    goto/16 :goto_10

    :cond_26
    move v2, v0

    goto :goto_14

    :cond_27
    move v2, v1

    goto/16 :goto_e

    :cond_28
    move v3, v4

    goto/16 :goto_d

    :cond_29
    move v0, v2

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lcom/android/contacts/common/list/ContactListItemView;->resolveSize(II)I

    move-result v4

    iget v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->a:I

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->T:I

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->V:I

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->W:I

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->aa:I

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->af:I

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->ab:I

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->ac:I

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->ae:I

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->ad:I

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->c()V

    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->O:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->Q:Z

    if-eqz v0, :cond_f

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v4, v0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->O:I

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->b:I

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    :goto_0
    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->y:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->i:I

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->b:I

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->v:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->k:I

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->l:I

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->J:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->J:Landroid/widget/CheckBox;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Landroid/widget/CheckBox;->measure(II)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->J:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->ae:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->J:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->ad:I

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->ae:I

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->b:I

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->w:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v3, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->a:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-eq v1, v3, :cond_13

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->f:I

    sub-int v1, v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, v1, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->T:I

    :cond_4
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->V:I

    :cond_5
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->c:I

    sub-int v1, v0, v1

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->p:I

    mul-int/2addr v3, v1

    iget v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->p:I

    iget v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->o:I

    add-int/2addr v6, v7

    div-int/2addr v3, v6

    iget v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->o:I

    mul-int/2addr v1, v6

    iget v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->p:I

    iget v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->o:I

    add-int/2addr v6, v7

    div-int/2addr v1, v6

    :goto_2
    iget-object v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v3, v7}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->F:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->aa:I

    :cond_6
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    const/high16 v6, -0x80000000

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, v1, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->W:I

    :cond_7
    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->W:I

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->aa:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->af:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->ab:I

    :cond_8
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->e:I

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->e:I

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Landroid/widget/ImageView;->measure(II)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->ac:I

    :cond_9
    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->v:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->K:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->K:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->k:I

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->k:I

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Landroid/widget/ImageView;->measure(II)V

    :cond_a
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->L:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->L:Landroid/widget/ImageView;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Landroid/widget/ImageView;->measure(II)V

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->T:I

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->L:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->T:I

    :cond_b
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->d:I

    sub-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/TextView;->measure(II)V

    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->ac:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->ac:I

    :cond_d
    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->T:I

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->V:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->af:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->ab:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->ac:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->P:I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->x:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->x:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->x:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->i:I

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->measure(II)V

    :cond_e
    invoke-virtual {p0, v4, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setMeasuredDimension(II)V

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v4, v0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto/16 :goto_0

    :cond_10
    move v1, v2

    move v3, v0

    goto/16 :goto_2

    :cond_11
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v0

    move v3, v2

    goto/16 :goto_2

    :cond_12
    move v1, v2

    move v3, v2

    goto/16 :goto_2

    :cond_13
    move v1, v0

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->ak:Landroid/graphics/Rect;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(FF)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->forceLayout()V

    return-void
.end method

.method public setActivatedStateSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->ai:Z

    return-void
.end method

.method public setAdjustSelectionBoundsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->aj:Z

    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->al:Lcom/android/contacts/common/format/TextHighlighter;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->s:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/common/format/TextHighlighter;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->al:Lcom/android/contacts/common/format/TextHighlighter;

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->a(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v4

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->b(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v0

    invoke-virtual {v3, v1, v4, v0}, Lcom/android/contacts/common/format/TextHighlighter;->a(Landroid/text/SpannableString;II)V

    goto :goto_2

    :cond_2
    move-object p1, v1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->am:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->C:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setDrawableResource(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0125

    invoke-static {v2, v3}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setHighlightedPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->s:Ljava/lang/String;

    return-void
.end method

.method public setIsSectionHeaderEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->y:Z

    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->E:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->w:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    return-void
.end method

.method public setPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->I:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->z:Z

    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->x:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0167

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->x:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/contacts/common/util/ViewUtil;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->x:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->x:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->x:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->x:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->x:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->al:Lcom/android/contacts/common/format/TextHighlighter;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getSnippetView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/contacts/common/format/TextHighlighter;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->G:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getStatusView()Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->H:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSupportVideoCallIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->v:Z

    return-void
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->am:Ljava/lang/CharSequence;

    return-void
.end method

.method public setWorkProfileIconEnabled(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->L:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->L:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->L:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->L:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->L:Landroid/widget/ImageView;

    const v2, 0x7f020199

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->L:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->L:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->j:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
